@echo off
rem Windows batch file to build Schematron test cases, generate SVRL output, and check results.

rem Version: 3.5.1.250403CP1_250225
rem Revision Date: February 25, 2025

rem This product is provided by the NEMSIS TAC, without charge, to facilitate development
rem of NEMSIS Schematron schemas.

rem argument1: the name of a Schematron schema file, expected to be in the ..\rules folder
rem argument2: the name of a Schematron test suite document, expected to be in the ..\tests folder

rem This script calls CompileSchematron.bat before it compiles the test cases

rem It may be necessary to update the paths to the programs listed in Config.bat
call Config.bat

setlocal EnableDelayedExpansion

if "%~1"=="" goto PromptSchemaFile
set schemaFile=%~1
goto CheckTestSuite

:PromptSchemaFile
set /p schemaFile= Name of Schematron schema: 

:CheckTestSuite
if not exist "..\rules\%schemaFile%" echo "%schemaFile%" not found. It should be in the "..\rules" folder. & exit /B 1
if "%~2"=="" goto PromptTestSuiteFile
set testSuiteFile=%~2
goto Compile

:PromptTestSuiteFile
set /p testSuiteFile= Name of Schematron Test Suite file: 

:Compile
if not exist "..\tests\%testSuiteFile%" echo "%testSuiteFile%" not found. It should be in the "..\tests" folder. & exit /B 1

call CompileSchematron "%schemaFile%" "%testSuiteFile%"

for %%A in ("%testSuiteFile%") do set "testSuite=%%~nA"

cd "%~dp0"

rem Figure out if test suite is DEMDataSet or EMSDataSet
findstr /m "<DEMDataSet" "..\tests\%testSuiteFile%" >NUL
if %errorlevel%==0 (
  set dataset=DEMDataSet
) else (
  set dataset=EMSDataSet
)

echo Deleting previously generated output files if they already exist...
del /q /s "..\tests\%testSuite%\*" >NUL 2>NUL

echo Generating test case files and test case inventory file...

java -jar %saxon% -versionmsg:off ^
-xsl:"test\GenerateTests.xsl" ^
-s:"..\tests\%testSuiteFile%" ^
-o:"..\tests\%testSuite%\xml\%testSuite%--Base.xml"

cd "%~dp0..\tests\%testSuite%\xml"

echo Performing XSD validation on test cases...

for /f "delims=" %%i in ('dir /b *.xml') do (
  if "!List!"=="" (set List="%%i") else (set List=!List! "%%i")
)

%xmllint% --noout --schema "http://nemsis.org/media/nemsis_v3/release-3.5.1/XSDs/NEMSIS_XSDs/%dataset%_v3.xsd" %List%

echo Check XSD validation results for test case files.
pause

echo Generating SVRL files and validation result inventory file...

cd "%~dp0"

mkdir "..\tests\%testSuite%\svrl" 2>NUL

java -jar %saxon% -versionmsg:off ^
-xsl:"..\rules\compiled\%schema%.xsl" ^
-s:"..\tests\%testSuite%\xml" ^
-o:"..\tests\%testSuite%\svrl"

java -jar %saxon% -versionmsg:off ^
-xsl:"test\GenerateTestReport.xsl" ^
-s:"..\tests\%testSuite%\svrl\%testSuite%--Base.xml" ^
-o:"..\tests\%testSuite%\Results.txt"

echo Compare test case inventory file (..\tests\%testSuite%\Tests.txt) and validation result inventory file (..\tests\%testSuite%\Results.txt)
pause

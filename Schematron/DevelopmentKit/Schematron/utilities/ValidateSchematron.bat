@echo off
rem Windows batch file to validate NEMSIS Schematron documents

rem Version: 3.5.1.250403CP1_250225
rem Revision Date: February 25, 2025

rem This product is provided by the NEMSIS TAC, without charge, to facilitate development
rem of NEMSIS Schematron schemas.

rem argument1: the name of a Schematron schema file, expected to be in the ..\rules\compiled folder

rem CompileSchematron.bat should be run first to process abstracts and includes before validating

rem It may be necessary to update the paths to the programs listed in Config.bat
call Config.bat

if "%~1"=="" goto PromptSchemaFile
set schemaFile=%~1
goto Validate

:PromptSchemaFile
set /p schemaFile= Name of Schematron schema: 

:Validate
if not exist "..\rules\compiled\%schemaFile%" echo "%schemaFile%" not found. It should be in the "..\rules\compiled" folder. & exit /B 1

cd "%~dp0..\rules\compiled"

echo Performing RelaxNG Schematron validation...
java -jar %jing% -c "%~dp0schema\iso-schematron.rnc" "%schemaFile%" > "%TEMP%\RelaxNgValidationResults_%schemaFile%.txt"

echo Check RelaxNG validation results for "%schemaFile%" (opened in separate program; if there are no results, validation passed).
start "" "%TEMP%\RelaxNgValidationResults_%schemaFile%.txt"
pause

cd "%~dp0"

echo Performing ISO and NEMSIS Schematron validation...
java -jar %saxon% -versionmsg:off ^
-xsl:"schema\iso-schematron.xsl" ^
-s:"..\rules\compiled\%schemaFile%" ^
-o:"%TEMP%\NemSch\IsoSchematronValidationResults_%schemaFile%.svrl"

java -jar %saxon% -versionmsg:off ^
-xsl:"schema\nemsis-schematron.xsl" ^
-s:"..\rules\compiled\%schemaFile%" ^
-o:"%TEMP%\NemSch\NemsisSchematronValidationResults_%schemaFile%.svrl"

echo Check ISO and NEMSIS Schematron validation results for %schemaFile% (opened in separate program; look for "failed-assert").
start "" "%TEMP%\NemSch\IsoSchematronValidationResults_%schemaFile%.svrl"
start "" "%TEMP%\NemSch\NemsisSchematronValidationResults_%schemaFile%.svrl"
pause

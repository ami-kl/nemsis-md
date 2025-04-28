@echo off
rem Windows batch file to compile a schema from Schematron to XSLT

rem Version: 3.5.1.250403CP1_250225
rem Revision Date: February 25, 2025

rem This product is provided by the NEMSIS TAC, without charge, to facilitate development
rem of NEMSIS Schematron schemas.

rem argument1: the name of a Schematron schema file, expected to be in the ..\rules folder

rem It may be necessary to update the paths to the programs listed in Config.bat
call Config.bat

if "%~1"=="" goto PromptSchemaFile
set schemaFile=%~1
goto Compile

:PromptSchemaFile
set /p schemaFile= Name of Schematron schema: 

:Compile
if not exist "..\rules\%schemaFile%" echo "%schemaFile%" not found. It should be in the "..\rules" folder. & exit /B 1

for %%A in ("%schemaFile%") do set "schema=%%~nA"

cd "%~dp0"

echo Compiling "%schemaFile%" into XSLT...
java -jar %saxon% -versionmsg:off ^
-xsl:"iso-schematron-xslt2\iso_dsdl_include.xsl" ^
-s:"..\rules\%schemaFile%" ^
-o:"%TEMP%\NemSch\%schema%.sch"

java -jar %saxon% -versionmsg:off ^
-xsl:"iso-schematron-xslt2\iso_abstract_expand.xsl" ^
-s:"%TEMP%\NemSch\%schema%.sch" ^
-o:"..\rules\compiled\%schema%.sch"

java -jar %saxon% -versionmsg:off ^
-xsl:"iso-schematron-xslt2\iso_svrl_for_xslt2.xsl" ^
-s:"..\rules\compiled\%schema%.sch" ^
-o:"..\rules\compiled\%schema%.xsl" ^
allow-foreign=true

echo Schematron schema with includes and abstracts processed is "..\rules\compiled\%schema%.sch".
echo Compiled XSLT is "..\rules\compiled\%schema%.xsl".

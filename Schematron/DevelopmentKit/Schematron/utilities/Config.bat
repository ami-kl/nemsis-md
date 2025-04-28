@echo off
rem Windows batch file to configure paths to programs used in the Schematron Development Kit

rem Version: 3.5.1.250403CP1_250225
rem Revision Date: February 25, 2025

rem This product is provided by the NEMSIS TAC, without charge, to facilitate development
rem of NEMSIS Schematron schemas.

rem Update the paths to these programs to reflect their actual location

rem Jing is used for RelaxNG validation of Schematron schemas
rem https://relaxng.org/jclark/jing.html

set jing="C:\Program Files\Jing-Trang\jing-20091111\bin\jing.jar"

rem Saxon is used for XSL transformations (the method used for implementing Schematron validation of 
rem NEMSIS XML documents)
rem https://www.saxonica.com/

set saxon="C:\Program Files\Saxonica\SaxonHE12-4J\saxon-he-12.4.jar"

rem xmllint (from the LibXML2 package) is used for XML Schema (XSD) validation of NEMSIS XML documents
rem http://xmlsoft.org/

set xmllint="C:\Program Files\xmlsoft\libxml2\bin\xmllint"

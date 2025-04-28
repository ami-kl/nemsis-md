<?xml version="1.0"?>

<!--

Generate Test Case Validation Report XSL Transformation

XML Stylesheet Language Transformation (XSLT) to generate a report of test case validation results

Version: 3.5.1.250403CP1_250225
Revision Date: February 25, 2025

This product is provided by the NEMSIS TAC, without charge, to facilitate test-driven development
of NEMSIS Schematron schemas.

-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:svrl="http://purl.oclc.org/dsdl/svrl">

  <xsl:strip-space elements="*" />

  <xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:variable name="svrl" select="collection(concat(base-uri(/), '/../?select=*.xml'))"/>
    <svrl:text>NEMSIS V3 Schematron Test Case Results</svrl:text>
Schema:           <xsl:value-of select="svrl:schematron-output/@title"/>
Version:          <xsl:value-of select="svrl:schematron-output/@schemaVersion"/>
    <xsl:text>

</xsl:text>
    <xsl:apply-templates select="$svrl/svrl:schematron-output" mode="report"/>

  </xsl:template>

  <xsl:template match="svrl:schematron-output" mode="report">
File:             <xsl:value-of select="tokenize(svrl:active-pattern[1]/@document, '/')[last()]"/>
    <xsl:if test="not(svrl:failed-assert|svrl:successful-report)">
      <xsl:text>
Assert ID:        N/A
Description:      N/A
Result:           [PASS]</xsl:text>
    </xsl:if>
    <xsl:apply-templates mode="report"/>
    <xsl:text>
</xsl:text>
  </xsl:template>

  <xsl:template match="svrl:failed-assert|svrl:successful-report" mode="report">
Assert ID:        <xsl:value-of select="@id"/>
Description:      <xsl:value-of select="normalize-space(svrl:text)"/>
Result:           <xsl:value-of select="@role"/>
  </xsl:template>

  <xsl:template match="node()|@*"/>
  <xsl:template match="node()|@*" mode="report"/>

</xsl:stylesheet>

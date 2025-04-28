<?xml version="1.0" encoding="UTF-8"?>

<!--

XML Stylesheet Language Transformation (XSLT) to transform NEMSIS StateDataSet from v3.5.1 to v3.5.0

Version: 3.5.1.250403CP1_3.5.0.250403CP5_250225
Revision Date: February 25, 2025

-->

<xsl:stylesheet version="2.0"
	xmlns="http://www.nemsis.org"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:n="http://www.nemsis.org"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	exclude-result-prefixes="n xs">

  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:attribute-set name="NotRecorded">
    <xsl:attribute name="xsi:nil" namespace="http://www.w3.org/2001/XMLSchema-instance">true</xsl:attribute>
    <xsl:attribute name="NV">7701003</xsl:attribute>
  </xsl:attribute-set>

  <xsl:template match="/">
    <xsl:comment>&#32;This NEMSIS 3.5.0 document was generated from a NEMSIS 3.5.1 document via an XML Stylesheet Language Transformation (XSLT).&#32;</xsl:comment>
    <xsl:copy>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@* | node()" priority="-1">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@xsi:schemaLocation">
    <xsl:attribute name="xsi:schemaLocation">http://www.nemsis.org http://www.nemsis.org/media/nemsis_v3/release-3.5.0/XSDs/NEMSIS_XSDs/StateDataSet_v3.xsd</xsl:attribute>
  </xsl:template>

  <!-- sConfiguration.03: Remove if SNOMED code is longer than 15 characters -->
  <xsl:template match="n:sConfiguration.03[string-length() > 15]"/>

  <!-- sConfiguration.03: Replace with a single "Not Recorded" instance if all instances of sConfiguration.03 in sConfiguration.ProcedureGroup are longer than 15 characters -->
  <xsl:template match="n:sConfiguration.ProcedureGroup[not(n:sConfiguration.03[string-length(.) le 15])]">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
      <xsl:element name="sConfiguration.03" use-attribute-sets="NotRecorded"/>
    </xsl:copy>
  </xsl:template>

  <!-- sFacility.14: Convert 10-digit grid coordinates to 8 digits by rounding each 5-digit set to 4 digits -->
  <xsl:template match="n:sFacility.14[matches(., '[0-9]{10}$')]">
  <xsl:copy>
    <xsl:analyze-string select="." regex="(.+)([0-9]{{5}})([0-9]{{5}})$">
      <xsl:matching-substring>
        <xsl:value-of select="regex-group(1)"/>
        <xsl:value-of select="round(xs:integer(regex-group(2)) div 10)"/>
        <xsl:value-of select="round(xs:integer(regex-group(3)) div 10)"/>
      </xsl:matching-substring>
    </xsl:analyze-string>
  </xsl:copy>
  </xsl:template>

  <!-- sFacility.15: Convert phone US phone numbers recorded in international format -->
  <xsl:template match="n:sFacility.15[matches(., '^\+1 ?[2-9] ?([0-9] ?){2}[2-9] ?([0-9] ?){6}$')]" priority="1">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:value-of select="replace(replace(., '(^\+1)| ', ''), '([0-9]{3})([0-9]{3})([0-9]{4})', '$1-$2-$3')"/>
    </xsl:copy>
  </xsl:template>

  <!-- sFacility.15: Remove international phone numbers -->
  <xsl:template match="n:sFacility.15[starts-with(., '+')]"/>

</xsl:stylesheet>
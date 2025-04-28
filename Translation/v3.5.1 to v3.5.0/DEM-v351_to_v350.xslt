<?xml version="1.0" encoding="UTF-8"?>

<!--

XML Stylesheet Language Transformation (XSLT) to transform NEMSIS DEMDataSet from v3.5.1 to v3.5.0

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

  <xsl:template match="/">
    <xsl:comment>&#32;This NEMSIS 3.5.0 document was generated from a NEMSIS 3.5.1 document via an XML Stylesheet Language Transformation (XSLT).&#32;</xsl:comment>
    <xsl:copy>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@xsi:schemaLocation">
    <xsl:attribute name="xsi:schemaLocation">http://www.nemsis.org http://www.nemsis.org/media/nemsis_v3/release-3.5.0/XSDs/NEMSIS_XSDs/DEMDataSet_v3.xsd</xsl:attribute>
  </xsl:template>

  <!-- dRecord: Remove -->
  <xsl:template match="n:dRecord"/>

  <!-- dAgency.27: Remove -->
  <xsl:template match="n:dAgency.27"/>

  <!-- dContact.10, dLocation.12, dPersonnel.09, dFacility.15: Convert phone US phone numbers
  recorded in international format -->
  <xsl:template match="(n:dContact.10 | n:dLocation.12 | n:dPersonnel.09 | n:dFacility.15)[matches(., '^\+1 ?[2-9] ?([0-9] ?){2}[2-9] ?([0-9] ?){6}$')]" priority="1">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
    <xsl:value-of select="replace(replace(., '(^\+1)| ', ''), '([0-9]{3})([0-9]{3})([0-9]{4})', '$1-$2-$3')"/>
    </xsl:copy>
  </xsl:template>

  <!-- dContact.10, dLocation.12, dPersonnel.09, dFacility.15: Remove international phone numbers -->
  <xsl:template match="(n:dContact.10 | n:dLocation.12 | n:dPersonnel.09 | n:dFacility.15)[starts-with(., '+')]"/>

  <!-- dConfiguration.07: Remove if SNOMED code is longer than 15 characters -->
  <xsl:template match="n:dConfiguration.07[string-length() > 15]"/>

  <!-- dConfiguration.07: Remove dConfiguration.ProcedureGroup if all instances of dConfiguration.07 in dConfiguration.ProcedureGroup are longer than 15 characters -->
  <!-- If there are no instances of dConfiguration.07 in any dConfiguration.ProcedureGroup that are 
       15 characters or less, then there will be no instances of dConfiguration.ProcedureGroup in 
       the generated document, which will fail XSD validation. -->
  <xsl:template match="n:dConfiguration.ProcedureGroup[not(n:dConfiguration.07[string-length(.) le 15])]"/>


  <!-- dLocation.05, dFacility.14: Convert 10-digit grid coordinates to 8 digits by rounding each 5-digit set to 4 digits -->
  <xsl:template match="(n:dLocation.05 | n:dFacility.14)[matches(., '[0-9]{10}$')]">
    <xsl:copy>
      <xsl:analyze-string select="." regex="(.+)([0-9]{{5}})([0-9]{{5}})$">
        <xsl:matching-substring>
          <xsl:value-of select="regex-group(1)"/>
        <xsl:value-of
            select="round(xs:integer(regex-group(2)) div 10)"/>
        <xsl:value-of
            select="round(xs:integer(regex-group(3)) div 10)"/>
        </xsl:matching-substring>
      </xsl:analyze-string>
    </xsl:copy>
  </xsl:template>

  <!-- dPersonnel.13: Map "Middle Eastern or North African" to "White" -->
  <xsl:template match="n:dPersonnel.13[. = '1513013']">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
    <xsl:text>1513011</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- dPersonnel.20: Remove "Sign Languages" -->
  <xsl:template match="n:dPersonnel.20[. = 'sgn']"/>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
 * 
 * XML Stylesheet Language Transformation (XSLT) to transform NEMSIS v3 DefinedList XML to delimited text
 * 
 * Version: 3.5.1.250403CP1_250331
 * Revision Date: March 31, 2025
 * 
 * This product is provided by the NEMSIS TAC, without charge, to facilitate providing NEMSIS 3 
 * DefinedList files in multiple formats.
 * 
-->

<xsl:stylesheet version="1.0" xmlns:n="http://www.nemsis.org" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <xsl:output method="text" encoding="utf-8"/>

  <!-- delimiter -->
  <xsl:param name="d">,</xsl:param>
  <!--  quote -->
  <xsl:param name="q">"</xsl:param>
  <!-- newline -->
  <xsl:param name="n" select="'&#xD;&#xA;'"/>

  <xsl:template match="/">
    <xsl:call-template name="content">
      <xsl:with-param name="s">Value</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">CodeType</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">Category</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">SourceLabel</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">SuggestedLabel</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">Note</xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">Date</xsl:with-param>
    </xsl:call-template>
    <xsl:value-of select="$n"/>
    <xsl:apply-templates select="n:DefinedList/n:Codes/n:Code"/>
  </xsl:template>

  <xsl:template match="n:Code">
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="n:Value"/>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s">
        <xsl:apply-templates select="n:Value/@CodeType"/>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="n:Category"/>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="n:SourceLabel"/>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="n:SuggestedLabel"/>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="n:Note"/>
    </xsl:call-template>
    <xsl:call-template name="content">
      <xsl:with-param name="s" select="@date"/>
    </xsl:call-template>
    <xsl:value-of select="$n"/>
  </xsl:template>

  <xsl:template match="@CodeType">
    <xsl:choose>
      <xsl:when test=". = '9924001'">ICD-10</xsl:when>
      <xsl:when test=". = '9924003'">RxNorm</xsl:when>
      <xsl:when test=". = '9924005'">SNOMED-CT</xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="content">
    <xsl:param name="s"/>
    <xsl:value-of select="$q"/>
    <xsl:call-template name="qescape">
      <xsl:with-param name="s" select="$s"/>
    </xsl:call-template>
    <xsl:value-of select="$q"/>
    <xsl:value-of select="$d"/>
  </xsl:template>

  <xsl:template name="qescape">
    <xsl:param name="s" select="."/>
    <xsl:variable name="escapeChar" select="substring(translate($s, translate($s, $q, ''), ''), 1, 1)"/>
    <xsl:choose>
      <xsl:when test="$escapeChar">
        <xsl:value-of select="substring-before($s, $escapeChar)"/>
        <xsl:value-of select="$q"/>
        <xsl:value-of select="$q"/>
        <xsl:call-template name="qescape">
          <xsl:with-param name="s" select="substring-after($s, $escapeChar)"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$s"/>
      </xsl:otherwise>
    </xsl:choose>
   </xsl:template>

</xsl:stylesheet>
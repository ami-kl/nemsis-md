<?xml version="1.0" encoding="UTF-8"?>
<!--
 * 
 * XML Stylesheet Language Transformation (XSLT) to transform NEMSIS v3 DefinedList XML to JSON
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

  <xsl:template match="/">
  <xsl:text>{
  "$schema": "https://nemsis.org/media/nemsis_v3/release-3.5.1/DefinedLists/DefinedLists.schema.json",
  "DefinedList": {
</xsl:text>
    <xsl:apply-templates select="n:DefinedList"/>
    <xsl:text>
  }
}
</xsl:text>
  </xsl:template>

  <xsl:template match="n:DefinedList">
    <xsl:apply-templates select="@date"/>
    <xsl:text>,
    "Header": {
</xsl:text>
      <xsl:apply-templates select="n:Header"/>
      <xsl:text>
    },
    "Codes": {
      "Code": [
</xsl:text>
      <xsl:apply-templates select="n:Codes/n:Code"/>
      <xsl:text>
      ]
    }</xsl:text>
  </xsl:template>

  <xsl:template match="n:Header">
    <xsl:text>      "SourceVocabularies": {
        "SourceVocabulary": [
</xsl:text>
    <xsl:apply-templates select="n:SourceVocabularies/n:SourceVocabulary"/>
    <xsl:text>
        ]
      },
      "NemsisTypes": {
        "NemsisType": [
</xsl:text>
    <xsl:apply-templates select="n:NemsisTypes/n:NemsisType" mode="bareContent"/>
    <xsl:text>
        ]
      },
      "NemsisElements": {
        "NemsisElement": [
</xsl:text>
    <xsl:apply-templates select="n:NemsisElements/n:NemsisElement" mode="bareContent"/>
    <xsl:text>
        ]
      }</xsl:text>
  </xsl:template>

  <xsl:template match="n:SourceVocabulary">
    <xsl:text>          {
</xsl:text>
    <xsl:apply-templates select="@url"/>
    <xsl:text>,
            "Value": </xsl:text>
    <xsl:apply-templates select="text()" mode="content"/>
    <xsl:text>
          }</xsl:text>
    <xsl:if test="following-sibling::*">
    <xsl:text>,
</xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="n:Code">
    <xsl:text>        {
</xsl:text>
    <xsl:apply-templates select="@date"/>
    <xsl:text>,
</xsl:text>
    <xsl:apply-templates select="n:Value"/>
    <xsl:apply-templates select="n:Category"/>
    <xsl:apply-templates select="n:SourceLabel"/>
    <xsl:apply-templates select="n:SuggestedLabel"/>
    <xsl:apply-templates select="n:Note"/>
    <xsl:text>
        }</xsl:text>
    <xsl:if test="following-sibling::*">
      <xsl:text>,
</xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="n:Value">
    <xsl:text>          "Value": {
</xsl:text>
    <xsl:apply-templates select="@CodeType"/>
    <xsl:if test="@CodeType">
      <xsl:text>,
</xsl:text>
    </xsl:if>
    <xsl:text>            "Value": </xsl:text>
    <xsl:apply-templates select="text()" mode="content"/>
    <xsl:text>
          }</xsl:text>
    <xsl:if test="following-sibling::*">
      <xsl:text>,
</xsl:text>
</xsl:if>
  </xsl:template>

  <xsl:template match="*|@*">
    <xsl:choose>
      <xsl:when test="local-name(..) = 'DefinedList'">
        <xsl:text>    </xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="substring('            ', 1, count(ancestor::*) * 2 + 4)"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>"</xsl:text>
    <xsl:value-of select="local-name()"/>
    <xsl:text>": </xsl:text>
    <xsl:apply-templates select="." mode="content"/>
  </xsl:template>

  <xsl:template match="node()|@*" mode="content">
    <xsl:text>"</xsl:text>
    <xsl:call-template name="jsonescape">
      <xsl:with-param name="str" select="."/>
    </xsl:call-template>
    <xsl:text>"</xsl:text>
    <xsl:if test="following-sibling::*">
      <xsl:text>,
</xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="node()|@*" mode="bareContent">
    <xsl:value-of select="substring('            ', 1, count(ancestor::*) * 2 + 4)"/>
    <xsl:text>"</xsl:text>
    <xsl:call-template name="jsonescape">
      <xsl:with-param name="str" select="."/>
    </xsl:call-template>
    <xsl:text>"</xsl:text>
    <xsl:if test="following-sibling::*">
      <xsl:text>,
</xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template name="jsonescape">
    <xsl:param name="str" select="."/>
    <xsl:param name="escapeChars" select="'\&quot;&#x9;&#xA;&#xD;'"/>
    <xsl:variable name="escapeChar" select="substring(translate($str, translate($str, $escapeChars, ''), ''), 1, 1)"/>
    <xsl:choose>
      <xsl:when test="$escapeChar">
        <xsl:variable name="replacement">
          <xsl:choose>
            <xsl:when test="$escapeChar = '\'     ">\\</xsl:when>
            <xsl:when test="$escapeChar = '&quot;'">\"</xsl:when>
            <xsl:when test="$escapeChar = '&#x9;' ">\t</xsl:when>
            <xsl:when test="$escapeChar = '&#xA;' ">\n</xsl:when>
            <xsl:when test="$escapeChar = '&#xD;' ">\r</xsl:when>
          </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="concat(substring-before($str, $escapeChar), $replacement)"/>
        <xsl:call-template name="jsonescape">
          <xsl:with-param name="str" select="substring-after($str, $escapeChar)"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$str"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
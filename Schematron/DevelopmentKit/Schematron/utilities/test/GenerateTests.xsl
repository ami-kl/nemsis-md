<?xml version="1.0"?>

<!--

Generate Tests XSL Transformation

XML Stylesheet Language Transformation (XSLT) to generate test case files from a test suite

Version: 3.5.1.250403CP1_250225
Revision Date: February 25, 2025

This product is provided by the NEMSIS TAC, without charge, to facilitate test-driven development
of NEMSIS Schematron schemas.


This file was modified from the following source:

================================
Generate Test XSL Transformation
================================

 * $Id: GenerateTest.xsl,v 1.1 2005/03/10 23:31:05 gavink Exp $
 *
 * Eaton Power Quality Ltd
 * Christchurch, New Zealand
 * http://www.powerware.com
 * Contact: Gavin Kingsley &lt;gavin.kingsley@powerware.com&gt;
 *          Seb Unger &lt;sebastian.unger@powerware.com&gt;
 *
 * Copyright (c) 2003 - 2005 Eaton Corporation
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. Neither the name of Eaton Corporation nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL INVENSYS ENERGY SYSTEMS (NZ) LTD OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * http://www.opensource.org/licenses/bsd-license.html</pre>

This XSL transformation extracts test cases from a source test suite.

-->

<xsl:stylesheet version="2.0" 
                xmlns:nem="http://www.nemsis.org" 
                xmlns:test="http://www.powerware.com/nz/XMLSchemaUnitTest" 
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                exclude-result-prefixes="nem test xs xsl">

  <xsl:strip-space elements="*" />
  
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="schema" select="tokenize(tokenize(base-uri(), '/')[last()], '\.')[if(last() > 1) then last() - 1 else 1]"/>
      
  <xsl:template match="/">

    <xsl:result-document method="text" href="../Tests.txt">NEMSIS V3 Schematron Test Cases for <xsl:value-of select="$schema"/>

File:             <xsl:value-of select="$schema"/>--Base.xml
ID:               <xsl:value-of select="$schema"/>--Base
Description:      This test case should pass validation while firing as many rules as possible.
Expected Result:  [PASS]
      <xsl:for-each select="//test:*[@result]">
        <xsl:sort select="@id"/>
File:             <xsl:value-of select="concat($schema, '-', @id, '.xml')"/>
ID:               <xsl:value-of select="@id"/>
Description:      <xsl:value-of select="@desc"/>
Expected Result:  <xsl:value-of select="@result"/>
<xsl:text>
</xsl:text>
      </xsl:for-each>
    </xsl:result-document>

    <xsl:for-each select="//test:*[@result]">
      <xsl:sort select="@id"/>
      <xsl:variable name="activeTest" select="."/>
      <xsl:result-document method="xml" href="{concat($schema, '-', $activeTest/@id, '.xml')}">
        <xsl:comment>

NEMSIS V3 Schematron Test Case
ID:               <xsl:value-of select="$activeTest/@id"/>
Description:      <xsl:value-of select="$activeTest/@desc"/>
Expected Result:  <xsl:value-of select="$activeTest/@result"/>
          <xsl:text>

</xsl:text>
        </xsl:comment>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="/*">
          <xsl:with-param name="activeTest" select="$activeTest"/>
        </xsl:apply-templates>
      </xsl:result-document>
    </xsl:for-each>

    <xsl:comment>

NEMSIS V3 Schematron Test Case
ID:               <xsl:value-of select="$schema"/>--base
Description:      This test case should pass validation while firing as many rules as possible.
Expected Result:  PASS

</xsl:comment>
    <xsl:text>
</xsl:text>
    <xsl:apply-templates select="/*">
      <xsl:with-param name="activeTest" select="()"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="*">
    <xsl:param name="activeTest"/>
    <xsl:copy copy-namespaces="no">
      <xsl:apply-templates select="@*">
        <xsl:with-param name="activeTest" select="$activeTest"/>
      </xsl:apply-templates>
      <xsl:apply-templates>
        <xsl:with-param name="activeTest" select="$activeTest"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@*">
    <xsl:copy/>
  </xsl:template>

  <xsl:template match="test:ref|test:attribute"/>

  <xsl:template match="test:case">
    <xsl:param name="activeTest"/>
    <xsl:variable name="ref" select="$activeTest/@ref|$activeTest/test:ref" />

    <xsl:choose>
      <xsl:when test="generate-id() = generate-id($activeTest)">
        <xsl:choose>
          <xsl:when test="@test = 'with'">
            <xsl:comment> + </xsl:comment>
            <xsl:apply-templates>
              <xsl:with-param name="activeTest" select="$activeTest"/>
            </xsl:apply-templates>
            <xsl:comment></xsl:comment>
          </xsl:when>
          <xsl:otherwise>
            <xsl:comment> - </xsl:comment>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <xsl:when test="@id = $ref">
        <xsl:choose>
        <xsl:when test="@test = 'with'">
          <xsl:comment> + </xsl:comment>
          <xsl:apply-templates>
            <xsl:with-param name="activeTest" select="$activeTest"/>
          </xsl:apply-templates>
          <xsl:comment></xsl:comment>
        </xsl:when>
          <xsl:otherwise>
            <xsl:comment> - </xsl:comment>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <xsl:when test="descendant::test:*[generate-id() = generate-id($activeTest)] or (@test = 'without')">
        <xsl:apply-templates>
          <xsl:with-param name="activeTest" select="$activeTest"/>
        </xsl:apply-templates>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*[test:attribute]">
    <xsl:param name="activeTest"/>
    <xsl:if test="test:attribute[generate-id() = generate-id($activeTest)]">
      <xsl:comment> Attribute change </xsl:comment>
    </xsl:if>
    <xsl:copy copy-namespaces="no">
      <xsl:variable name="ref" select="$activeTest/@ref|$activeTest/test:ref" />
      <xsl:variable name="activeAttributes" select="test:attribute[(@id and (@id = $ref)) or (generate-id() = generate-id($activeTest))]" />

      <xsl:for-each select="@*">
        <xsl:if test="not($activeAttributes[@name = name(current())])">
          <xsl:copy copy-namespaces="no" />
        </xsl:if>
      </xsl:for-each>

      <xsl:for-each select="$activeAttributes">
        <xsl:if test="@value">
          <xsl:attribute name="{@name}">
            <xsl:value-of select="@value" />
          </xsl:attribute>
        </xsl:if>
      </xsl:for-each>

      <xsl:apply-templates>
        <xsl:with-param name="activeTest" select="$activeTest"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>

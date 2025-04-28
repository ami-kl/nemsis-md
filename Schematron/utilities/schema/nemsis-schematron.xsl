<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:nem="http://www.nemsis.org"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>
   <!--PHASES-->
   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>
   <!--XSD TYPES FOR XSLT2-->
   <!--KEYS AND FUNCTIONS-->
   <!--DEFAULT RULES-->
   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>
   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>
   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                              title="Schema for Additional Constraints in NEMSIS Schematron v3.5+"
                              schemaVersion="3.5.1.250403CP1">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:text>
    This schema supplies some constraints in addition to those given in
    the ISO/IEC 19757-2 (RELAX NG Compact Syntax) and ISO/IEC 19757-3 
    (Schematron) Schemas for Schematron. Schematron files distributed 
    for use in NEMSIS (v3.5+) compliant systems must meet these additional 
    constraints.
  </svrl:text>
         <svrl:ns-prefix-in-attribute-values uri="http://purl.oclc.org/dsdl/schematron" prefix="sch"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.nemsis.org" prefix="nem"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/1999/XSL/Transform" prefix="xsl"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M5"/>
      </svrl:schematron-output>
   </xsl:template>
   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Schema for Additional Constraints in NEMSIS Schematron v3.5+</svrl:text>
   <!--PATTERN -->
   <!--RULE -->
   <xsl:template match="sch:schema" priority="1004" mode="M5">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="sch:schema"/>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="not(@defaultPhase)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@defaultPhase)">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In schema, @defaultPhase MUST be undefined.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [WARNING]-->
      <xsl:choose>
         <xsl:when test="@id = ('DEMDataSet', 'EMSDataSet', 'StateDataSet')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@id = ('DEMDataSet', 'EMSDataSet', 'StateDataSet')">
               <xsl:attribute name="role">[WARNING]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In schema, @id SHOULD be DEMDataSet, EMSDataSet, or StateDataSet.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="@queryBinding = 'xslt2'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@queryBinding = 'xslt2'">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In schema, @queryBinding MUST be xslt2.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [WARNING]-->
      <xsl:choose>
         <xsl:when test="matches(@schemaVersion, '^3\.\d+\.\d+\.\d{6}(CP\d+)?(_.+)?$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(@schemaVersion, '^3\.\d+\.\d+\.\d{6}(CP\d+)?(_.+)?$')">
               <xsl:attribute name="role">[WARNING]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In schema, @schemaVersion SHOULD be the full NEMSIS release version the schema is intended 
        to validate (for example, 3.3.3.130926), which MUST be followed by an underscore and a 
        version number specific to the Schematron file itself.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="sch:diagnostics/sch:diagnostic[@id = 'nemsisDiagnostic']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="sch:diagnostics/sch:diagnostic[@id = 'nemsisDiagnostic']">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In schema, diagnostics MUST exist and MUST contain a diagnostic with @id of nemsisDiagnostic.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="sch:pattern" priority="1003" mode="M5">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="sch:pattern"/>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="sch:title"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="sch:title">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In pattern, title MUST exist.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="sch:rule" priority="1002" mode="M5">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="sch:rule"/>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="not(@role)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@role)">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In rule, @role MUST NOT exist.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [WARNING]-->
      <xsl:choose>
         <xsl:when test="@abstract='true' or sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')] or (sch:extends and //sch:rule[@id = current()/sch:extends/@rule]/sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@abstract='true' or sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')] or (sch:extends and //sch:rule[@id = current()/sch:extends/@rule]/sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')])">
               <xsl:attribute name="role">[WARNING]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In rule, let, with @name of nemsisElements or nemsisElementsMissing, SHOULD exist.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="sch:assert | sch:report" priority="1001" mode="M5">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="sch:assert | sch:report"/>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="@diagnostics = 'nemsisDiagnostic' or starts-with(@diagnostics, 'nemsisDiagnostic ') or ends-with(@diagnostics, ' nemsisDiagnostic') or contains(@diagnostics, ' nemsisDiagnostic ')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@diagnostics = 'nemsisDiagnostic' or starts-with(@diagnostics, 'nemsisDiagnostic ') or ends-with(@diagnostics, ' nemsisDiagnostic') or contains(@diagnostics, ' nemsisDiagnostic ')">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In assert or report, @diagnostics MUST exist and MUST consist of a space-delimited list containing at least the value nemsisDiagnostic.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="@role = ('[FATAL]', '[ERROR]', '[WARNING]')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@role = ('[FATAL]', '[ERROR]', '[WARNING]')">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        In assert or report, @role MUST exist and MUST be [FATAL], [ERROR], or [WARNING].
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="sch:diagnostic[@id='nemsisDiagnostic']"
                 priority="1000"
                 mode="M5">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="sch:diagnostic[@id='nemsisDiagnostic']"/>
      <xsl:variable name="p01"
                    select="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:StateDataSet/*:sState/*:sState.01')]"/>
      <xsl:variable name="p02"
                    select="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:DemographicReport/*:dAgency/(*:dAgency.01 | *:dAgency.02 | *:dAgency.04)')]"/>
      <xsl:variable name="p03"
                    select="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:Header/*:DemographicGroup/*')]"/>
      <xsl:variable name="p04"
                    select="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:PatientCareReport/*:eRecord/*:eRecord.01')]"/>
      <xsl:variable name="p05"
                    select="nem:nemsisDiagnostic/nem:record/xsl:if[normalize-space(@test)=normalize-space('ancestor-or-self::*[@UUID]')]/nem:UUID/xsl:value-of[normalize-space(@select)=normalize-space('ancestor-or-self::*[@UUID][1]/@UUID')]"/>
      <xsl:variable name="p06"
                    select="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:attribute[@name='location']/xsl:apply-templates[@select='.' and @mode='schematron-get-full-path']"/>
      <xsl:variable name="p07"
                    select="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:for-each[@select='@*']/xsl:attribute[@name='{name()}']/xsl:value-of[@select='.']"/>
      <xsl:variable name="p08"
                    select="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:if[@test='not(*)']/xsl:value-of[@select='.']"/>
      <xsl:variable name="p09"
                    select="nem:nemsisDiagnostic/nem:elementsMissing/xsl:variable[@name='default_context' and @select='.']"/>
      <xsl:variable name="p10"
                    select="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/xsl:variable[@name='parent']"/>
      <xsl:variable name="p11"
                    select="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='parentLocation']/xsl:choose/xsl:when[@test='$parent']/xsl:apply-templates[@select='$parent' and @mode='schematron-get-full-path']"/>
      <xsl:variable name="p12"
                    select="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='parentLocation']/xsl:choose/xsl:otherwise/xsl:apply-templates[@select='$default_context' and @mode='schematron-get-full-path']"/>
      <xsl:variable name="p13"
                    select="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='name']/xsl:value-of[@select='.']"/>
      <xsl:variable name="deepEqual_nemsisDiagnostic"
                    select="$p01 and $p02 and $p03 and $p04 and $p05 and $p06 and $p07 and $p08 and $p09 and $p10 and $p11 and $p12 and $p13"/>
      <!--ASSERT [FATAL]-->
      <xsl:choose>
         <xsl:when test="$deepEqual_nemsisDiagnostic"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$deepEqual_nemsisDiagnostic">
               <xsl:attribute name="role">[FATAL]</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>
        diagnostic with id of nemsisDiagnostic MUST be the diagnostic supplied by the NEMSIS TAC.
      </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M5"/>
   <xsl:template match="@*|node()" priority="-2" mode="M5">
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M5"/>
   </xsl:template>
</xsl:stylesheet>

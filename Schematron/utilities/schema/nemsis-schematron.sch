<?xml version="1.0" encoding="UTF-8"?>
<!--
  Distributed by the NEMSIS Technical Assistance Center
 -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xml:lang="en" queryBinding="xslt2" schemaVersion="3.5.1.250403CP1" see="https://nemsis.org/technical-resources/version-3/version-3-schematron/">

  <sch:title>Schema for Additional Constraints in NEMSIS Schematron v3.5+</sch:title>

  <sch:ns prefix="sch" uri="http://purl.oclc.org/dsdl/schematron" />
  <sch:ns prefix="nem" uri="http://www.nemsis.org" />
  <sch:ns prefix="xsl" uri="http://www.w3.org/1999/XSL/Transform" />

  <sch:p>
    This schema supplies some constraints in addition to those given in
    the ISO/IEC 19757-2 (RELAX NG Compact Syntax) and ISO/IEC 19757-3 
    (Schematron) Schemas for Schematron. Schematron files distributed 
    for use in NEMSIS (v3.5+) compliant systems must meet these additional 
    constraints.
  </sch:p>
  
  <sch:pattern>

    <sch:rule context="sch:schema">

      <sch:assert role="[FATAL]" test="not(@defaultPhase)">
        In schema, @defaultPhase MUST be undefined.
      </sch:assert>

      <sch:assert role="[WARNING]" test="@id = ('DEMDataSet', 'EMSDataSet', 'StateDataSet')">
        In schema, @id SHOULD be DEMDataSet, EMSDataSet, or StateDataSet.
      </sch:assert>

      <sch:assert role="[FATAL]" test="@queryBinding = 'xslt2'">
        In schema, @queryBinding MUST be xslt2.
      </sch:assert>

      <sch:assert role="[WARNING]" test="matches(@schemaVersion, '^3\.\d+\.\d+\.\d{6}(CP\d+)?(_.+)?$')">
        In schema, @schemaVersion SHOULD be the full NEMSIS release version the schema is intended 
        to validate (for example, 3.3.3.130926), which MUST be followed by an underscore and a 
        version number specific to the Schematron file itself.
      </sch:assert>

      <sch:assert role="[FATAL]" test="sch:diagnostics/sch:diagnostic[@id = 'nemsisDiagnostic']">
        In schema, diagnostics MUST exist and MUST contain a diagnostic with @id of nemsisDiagnostic.
      </sch:assert>

    </sch:rule>

    <sch:rule context="sch:pattern">
      
      <sch:assert role="[FATAL]" test="sch:title">
        In pattern, title MUST exist.
      </sch:assert>
      
    </sch:rule>

    <sch:rule context="sch:rule">

      <sch:assert role="[FATAL]" test="not(@role)">
        In rule, @role MUST NOT exist.
      </sch:assert>

      <sch:assert role="[WARNING]" test="@abstract='true' or sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')] or (sch:extends and //sch:rule[@id = current()/sch:extends/@rule]/sch:let[@name = ('nemsisElements', 'nemsisElementsMissing')])">
        In rule, let, with @name of nemsisElements or nemsisElementsMissing, SHOULD exist.
      </sch:assert>

    </sch:rule>

    <sch:rule context="sch:assert | sch:report">

      <sch:assert role="[FATAL]" test="@diagnostics = 'nemsisDiagnostic' or starts-with(@diagnostics, 'nemsisDiagnostic ') or ends-with(@diagnostics, ' nemsisDiagnostic') or contains(@diagnostics, ' nemsisDiagnostic ')">
        In assert or report, @diagnostics MUST exist and MUST consist of a space-delimited list containing at least the value nemsisDiagnostic.
      </sch:assert>

      <sch:assert role="[FATAL]" test="@role = ('[FATAL]', '[ERROR]', '[WARNING]')">
        In assert or report, @role MUST exist and MUST be [FATAL], [ERROR], or [WARNING].
      </sch:assert>
      
    </sch:rule>

    <sch:rule context="sch:diagnostic[@id='nemsisDiagnostic']">

      <!-- We'd like to use deep-equal() to compare to a standard nemsisDiagnostic structure. 
           However, deep-equal doesn't ignore differences in whitespace-only text nodes, so if 
           only the indentation is different, deep-equal() returns false(). The alternative used 
           below is to assert the path of each expected terminal element. -->
      <sch:let name="p01" value="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:StateDataSet/*:sState/*:sState.01')]"/>
      <sch:let name="p02" value="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:DemographicReport/*:dAgency/(*:dAgency.01 | *:dAgency.02 | *:dAgency.04)')]"/>
      <sch:let name="p03" value="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:Header/*:DemographicGroup/*')]"/>
      <sch:let name="p04" value="nem:nemsisDiagnostic/nem:record/xsl:copy-of[normalize-space(@select)=normalize-space('ancestor-or-self::*:PatientCareReport/*:eRecord/*:eRecord.01')]"/>
      <sch:let name="p05" value="nem:nemsisDiagnostic/nem:record/xsl:if[normalize-space(@test)=normalize-space('ancestor-or-self::*[@UUID]')]/nem:UUID/xsl:value-of[normalize-space(@select)=normalize-space('ancestor-or-self::*[@UUID][1]/@UUID')]"/>
      <sch:let name="p06" value="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:attribute[@name='location']/xsl:apply-templates[@select='.' and @mode='schematron-get-full-path']"/>
      <sch:let name="p07" value="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:for-each[@select='@*']/xsl:attribute[@name='{name()}']/xsl:value-of[@select='.']"/>
      <sch:let name="p08" value="nem:nemsisDiagnostic/nem:elements/xsl:for-each[@select='$nemsisElements']/xsl:element[@name='element']/xsl:if[@test='not(*)']/xsl:value-of[@select='.']"/>
      <sch:let name="p09" value="nem:nemsisDiagnostic/nem:elementsMissing/xsl:variable[@name='default_context' and @select='.']"/>
      <sch:let name="p10" value="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/xsl:variable[@name='parent']"/>
      <sch:let name="p11" value="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='parentLocation']/xsl:choose/xsl:when[@test='$parent']/xsl:apply-templates[@select='$parent' and @mode='schematron-get-full-path']"/>
      <sch:let name="p12" value="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='parentLocation']/xsl:choose/xsl:otherwise/xsl:apply-templates[@select='$default_context' and @mode='schematron-get-full-path']"/>
      <sch:let name="p13" value="nem:nemsisDiagnostic/nem:elementsMissing/xsl:for-each[@select]/nem:element/xsl:attribute[@name='name']/xsl:value-of[@select='.']"/>
      <sch:let name="deepEqual_nemsisDiagnostic" value="$p01 and $p02 and $p03 and $p04 and $p05 and $p06 and $p07 and $p08 and $p09 and $p10 and $p11 and $p12 and $p13"/>

      <sch:assert role="[FATAL]" test="$deepEqual_nemsisDiagnostic">
        diagnostic with id of nemsisDiagnostic MUST be the diagnostic supplied by the NEMSIS TAC.
      </sch:assert>

    </sch:rule>

  </sch:pattern>
  
</sch:schema>

<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2" id="DEMDataSet" schemaVersion="3.5.1.250403CP1" see="https://nemsis.org/technical-resources/version-3/version-3-schematron/">

  <sch:title>NEMSIS Sample ISO Schematron file for DEMDataSet</sch:title>

  <sch:ns prefix="nem" uri="http://www.nemsis.org"/>
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>


  <sch:let name="nemsisElements" value="()"/>
  <sch:let name="nemsisElementsMissing" value="''"/>
  <sch:let name="nemsisElementsMissingContext" value="()"/>


  <sch:pattern id="sample_dNilNvPn">

    <sch:title>DEMDataSet / Nil/Not Value Attributes</sch:title>

    <sch:rule id="sample_dNilNvPn_rule_1" context="nem:dCustomResults.01">



      <sch:let name="nemsisElements" value="."/>

      <sch:report role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        This rule enforces no constraints on the combination of xsi:nil, Not Value, and Pertinent Negative attributes on dCustomResults.01.
      </sch:report>

    </sch:rule>

    <sch:rule id="sample_dNilNvPn_rule_2" context="*[@xsi:nil = 'true']">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_d001" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@NV">
        When an element is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_dNilNvPn_rule_3" context="*[@NV]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_d002" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@xsi:nil='true'">
        When an element has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be empty.
      </sch:assert>

    </sch:rule>

  </sch:pattern>

  <sch:pattern id="sample_dNvPn">

    <sch:title>DEMDataSet / Not Value/Pertinent Negative Uniqueness</sch:title>

    <sch:rule id="sample_dNvPn_rule_1" context="nem:dCustomResults.01">



      <sch:let name="nemsisElements" value="."/>

      <sch:report role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        This rule enforces no constraints on the uniqueness of dCustomResults.01 with Not Value or Pertinent Negative attribute.
      </sch:report>

    </sch:rule>

    <sch:rule id="sample_dNvPn_rule_2" context="*[@NV][local-name() = (local-name(preceding-sibling::*[1]), local-name(following-sibling::*[1]))]">

      <sch:let name="nemsisElements" value="../*[local-name() = local-name(current())]"/>

      <sch:assert id="sample_d003" role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        When an element has a Not Value, no other value should be recorded.
      </sch:assert>

    </sch:rule>

  </sch:pattern>

  <sch:pattern id="sample_DemographicReport">

    <sch:title>DEMDataSet / Demographic Report</sch:title>

    <sch:rule id="sample_DemographicReport_rule_1" context="nem:DemographicReport">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_d004" role="[ERROR]" diagnostics="nemsisDiagnostic" test="xs:dateTime(@timeStamp) &lt; current-dateTime() + xs:dayTimeDuration('PT1H')">
        The timestamp of the DemographicReport should not be in the future (the current time according to this system is <sch:value-of select="format-dateTime(current-dateTime(),'[MNn] [D1], [Y0001], [H01]:[m01] [ZN]')"/>).
      </sch:assert>

    </sch:rule>

  </sch:pattern>


  <sch:diagnostics>

    <sch:diagnostic id="nemsisDiagnostic">
      <nemsisDiagnostic xmlns="http://www.nemsis.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <record>
          <xsl:copy-of select="ancestor-or-self::*:StateDataSet/*:sState/*:sState.01"/>
          <xsl:copy-of select="ancestor-or-self::*:DemographicReport/*:dAgency/(*:dAgency.01 | *:dAgency.02 | *:dAgency.04)"/>
          <xsl:copy-of select="ancestor-or-self::*:Header/*:DemographicGroup/*"/>
          <xsl:copy-of select="ancestor-or-self::*:PatientCareReport/*:eRecord/*:eRecord.01"/>
        </record>
        <elements>
          <xsl:for-each select="$nemsisElements">
            <xsl:element name="element">
              <xsl:attribute name="location">
                <xsl:apply-templates select="." mode="schematron-get-full-path"/>
              </xsl:attribute>
              <xsl:for-each select="@*">
                <xsl:attribute name="{name()}">
                  <xsl:value-of select="."/>
                </xsl:attribute>
              </xsl:for-each>
              <xsl:if test="not(*)">
                <xsl:value-of select="."/>
              </xsl:if>
            </xsl:element>
          </xsl:for-each>
        </elements>
        <elementsMissing>
          <xsl:variable name="default_context" select="."/>
          <xsl:for-each select="tokenize($nemsisElementsMissing, ' ')">
            <xsl:variable name="parent" select="$nemsisElementsMissingContext[contains(local-name(), substring-before(current(), '.'))][1]"/>
            <element>
              <xsl:attribute name="parentLocation">
                <xsl:choose>
                  <xsl:when test="$parent">
                    <xsl:apply-templates select="$parent" mode="schematron-get-full-path"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates select="$default_context" mode="schematron-get-full-path"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              <xsl:attribute name="name">
                <xsl:value-of select="."/>
              </xsl:attribute>
            </element>
          </xsl:for-each>
        </elementsMissing>
      </nemsisDiagnostic>
    </sch:diagnostic>

  </sch:diagnostics>


  <sch:properties/>


</sch:schema>
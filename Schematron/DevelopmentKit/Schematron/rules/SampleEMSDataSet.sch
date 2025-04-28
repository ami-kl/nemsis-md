<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2" id="EMSDataSet" schemaVersion="3.5.1.250403CP1" see="https://nemsis.org/technical-resources/version-3/version-3-schematron/">

  <sch:title>NEMSIS Sample ISO Schematron file for EMSDataSet</sch:title>

  <sch:ns prefix="nem" uri="http://www.nemsis.org"/>
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>


  <sch:let name="nemsisElements" value="()"/>
  <sch:let name="nemsisElementsMissing" value="''"/>
  <sch:let name="nemsisElementsMissingContext" value="()"/>


  <sch:pattern id="sample_eNilNvPn">

    <sch:title>EMSDataSet / Nil/Not Value/Pertinent Negative Attributes</sch:title>

    <sch:rule id="sample_eNilNvPn_rule_1" context="nem:eCustomResults.01">

      <sch:let name="nemsisElements" value="."/>

      <sch:report role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        This rule enforces no constraints on the combination of xsi:nil, Not Value, and Pertinent Negative attributes on eCustomResults.01.
      </sch:report>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_2" context="nem:eExam.AssessmentGroup//*[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:report role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        This rule enforces no constraints on the Pertinent Negative attribute on elements in eExam.AssessmentGroup.
      </sch:report>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_3" context="nem:eHistory.10[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:report role="[WARNING]" diagnostics="nemsisDiagnostic" test="false()">
        This rule enforces no constraints on the Pertinent Negative attribute on eHistory.10.
      </sch:report>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_4" context="nem:eSituation.01[@PN = '8801023']">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e003" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@xsi:nil = 'true' and not(@NV)">
        When Date/Time of Symptom Onset has a Pertinent Negative of "Unable to Complete", it should be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_5" context="nem:eSituation.01[@PN = '8801029']">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e004" role="[ERROR]" diagnostics="nemsisDiagnostic" test="not(@xsi:nil = 'true') and not(@NV)">
        When Date/Time of Symptom Onset has a Pertinent Negative of "Approximate", it should have a value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_6" context="nem:eSituation.10[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e005" role="[ERROR]" diagnostics="nemsisDiagnostic" test="not(@xsi:nil = 'true') and not(@NV)">
        When Other Associated Symptoms has a Pertinent Negative, it should have a value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_7" context="nem:eMedications.03[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e006" role="[ERROR]" diagnostics="nemsisDiagnostic" test="not(@xsi:nil = 'true') and not(@NV)">
        When Medication Administered has a Pertinent Negative, it should have a value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_8" context="nem:eProcedures.03[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e007" role="[ERROR]" diagnostics="nemsisDiagnostic" test="not(@xsi:nil = 'true') and not(@NV)">
        When Procedure has a Pertinent Negative, it should have a value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_9" context="*[@PN]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e008" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@xsi:nil = 'true' and not(@NV)">
        When an element has a Pertinent Negative, it should be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_10" context="*[@xsi:nil = 'true']">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e001" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@NV or @PN">
        When an element is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).
      </sch:assert>

    </sch:rule>

    <sch:rule id="sample_eNilNvPn_rule_11" context="*[@NV]">

      <sch:let name="nemsisElements" value="."/>

      <sch:assert id="sample_e002" role="[ERROR]" diagnostics="nemsisDiagnostic" test="@xsi:nil='true'">
        When an element has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be empty.
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
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../utilities/html/schematronHtml.xsl"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            queryBinding="xslt2"
            id="DEMDataSet"
            schemaVersion="3.5.1.250403CP1_compliance_pretesting_2025">
   <sch:title>NEMSIS ISO Schematron file for DEMDataSet for Compliance Pre-testing (2025, v3.5.1)</sch:title>
   <sch:ns prefix="nem" uri="http://www.nemsis.org"/>
   <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
   <!-- "Initialize" variables used by nemsisDiagnostic. -->
   <sch:let name="nemsisElements" value="()"/>
   <sch:let name="nemsisElementsMissing" value="''"/>
   <sch:let name="nemsisElementsMissingContext" value="()"/>
   <!-- PHASES -->
   <!-- No phases used. -->
   <!-- PATTERNS -->
   <sch:pattern id="compliance_capability_protocol">
      <sch:title>EMS Agency Protocols should include "General-Community Paramedicine / Mobile Integrated Healthcare" when EMS Agency Specialty Service Capability includes "Community Health Medicine".</sch:title>
      <sch:rule id="compliance_capability_protocol_rule"
                context="nem:dConfiguration.11[. = '1211005']">
         <sch:let name="nemsisElements" value="."/>
         <sch:let name="nemsisElementsMissing" value="'dConfiguration.10'"/>
         <!-- To test: Remove "General-Community Paramedicine / Mobile Integrated Healthcare" from the list of EMS Agency Protocols. -->
         <sch:assert id="compliance_capability_protocol_assert"
                     role="[WARNING]"
                     diagnostics="nemsisDiagnostic"
                     test="../nem:dConfiguration.10 = '9914175'">
      EMS Agency Protocols should include "General-Community Paramedicine / Mobile Integrated Healthcare" when EMS Agency Specialty Service Capability includes "Community Health Medicine". This is a validation message for compliance pre-testing for 2025 for NEMSIS v3.5.1.
      </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="compliance_certification_dates">
      <sch:title>EMS Personnel's State EMS Current Certification Date should not be earlier than EMS Personnel's Initial State's Licensure Issue Date.</sch:title>
      <sch:rule id="compliance_certification_dates_rule" context="nem:dPersonnel.25">
         <sch:let name="nemsisElements" value="., nem:dPersonnel.26"/>
         <!-- To test: Change an EMS Personnel's State EMS Current Certification Date to be later than EMS Personnel's Initial State's Licensure Issue Date. -->
         <sch:assert id="compliance_certification_dates_assert"
                     role="[ERROR]"
                     diagnostics="nemsisDiagnostic"
                     test="../nem:dPersonnel.26 and xs:date(.) &gt;= xs:date(../nem:dPersonnel.26)">
        EMS Personnel's State EMS Current Certification Date should not be earlier than EMS Personnel's Initial State's Licensure Issue Date. This is a validation message for compliance pre-testing for 2025 for NEMSIS v3.5.1.
      </sch:assert>
      </sch:rule>
   </sch:pattern>
   <!-- DIAGNOSTICS -->
   <sch:diagnostics>

    <?DSDL_INCLUDE_START includes/diagnostic_nemsisDiagnostic.xml?>
      <sch:diagnostic id="nemsisDiagnostic">

      <!-- This is the NEMSIS national diagnostic. It must exist in every NEMSIS Schematron document, 
          and it should be referenced by every assert and report. It provides nationally-
          standardized, structured data to communicate which data elements are of interest in a 
          failed assert or successful report. -->
         <nemsisDiagnostic xmlns="http://www.nemsis.org"
                           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    
        <!-- Elements that uniquely identify the record where the problem happened. -->
            <record>
               <xsl:copy-of select="ancestor-or-self::*:StateDataSet/*:sState/*:sState.01"/>
               <xsl:copy-of select="ancestor-or-self::*:DemographicReport/*:dAgency/(*:dAgency.01 | *:dAgency.02 | *:dAgency.04)"/>
               <xsl:copy-of select="ancestor-or-self::*:Header/*:DemographicGroup/*"/>
               <xsl:copy-of select="ancestor-or-self::*:PatientCareReport/*:eRecord/*:eRecord.01"/>
               <xsl:if test="ancestor-or-self::*[@UUID]">
                  <UUID>
                     <xsl:value-of select="ancestor-or-self::*[@UUID][1]/@UUID"/>
                  </UUID>
               </xsl:if>
            </record>
            <!-- Elements that the user may want to revisit to resolve the problem, along with their values. -->
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
            <!-- Elements that were missing, that the user may want to visit to resolve the problem. -->
            <elementsMissing>
               <xsl:variable name="default_context" select="."/>
               <xsl:for-each select="tokenize($nemsisElementsMissing, ' ')">
                  <xsl:variable name="parent"
                                select="$nemsisElementsMissingContext[contains(local-name(), substring-before(current(), '.'))][1]"/>
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
      <?DSDL_INCLUDE_END includes/diagnostic_nemsisDiagnostic.xml?>
   </sch:diagnostics>
   <!-- PROPERTIES -->
   <sch:properties/>
</sch:schema>

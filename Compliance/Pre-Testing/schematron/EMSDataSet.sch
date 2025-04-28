<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../utilities/html/schematronHtml.xsl"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            queryBinding="xslt2"
            id="EMSDataSet"
            schemaVersion="3.5.1.250403CP1_compliance_pretesting_2025">
   <sch:title>NEMSIS ISO Schematron file for EMSDataSet for Compliance Pre-testing (2025, v3.5.1)</sch:title>
   <sch:ns prefix="nem" uri="http://www.nemsis.org"/>
   <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
   <!-- "Initialize" variables used by nemsisDiagnostic. -->
   <sch:let name="nemsisElements" value="()"/>
   <sch:let name="nemsisElementsMissing" value="''"/>
   <sch:let name="nemsisElementsMissingContext" value="()"/>
   <!-- PHASES -->
   <!-- No phases used. -->
   <!-- PATTERNS -->
   <sch:pattern id="compliance_overdose">
      <sch:title>Patients in the Garrett Recovery pilot program should be assessed for hallucinations.</sch:title>
      <sch:rule id="compliance_overdose_rule"
                context="nem:PatientCareReport[nem:ePayment/nem:ePayment.54 = 'Garrett Recovery']">
         <sch:let name="nemsisElements" value="nem:ePayment/nem:ePayment.54"/>
         <sch:let name="nemsisElementsMissing" value="'eExam.19'"/>
         <sch:let name="nemsisElementsMissingContext"
                  value="nem:eExam/nem:eExam.AssessmentGroup[1]"/>
         <!-- To test: On case 2023-EMS-1-Overdose_v351, remove "Hallucinations" from eExam.19 Mental Status Assessment. -->
         <sch:assert id="compliance_overdose_assert"
                     role="[WARNING]"
                     diagnostics="nemsisDiagnostic"
                     test="nem:eExam/nem:eExam.AssessmentGroup/nem:eExam.19 = '3519005'">
        Mental Status Assessment should include "Hallucinations" (either as an exam finding or as an exam finding not present) when a patient is in the Garrett Recovery pilot program (Prior Authorization Code Payer is "Garrett Recovery"). This is a validation message for compliance pre-testing for 2025 for NEMSIS v3.5.1.
      </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern id="compliance_cpmih_procedure">
      <sch:title>Community paramedicine visits should include the "Informing doctor" procedure.</sch:title>
      <sch:rule id="compliance_cpmih_procedure_rule"
                context="nem:PatientCareReport[nem:eResponse/nem:eResponse.ServiceGroup/nem:eResponse.05 = '2205031']">
         <sch:let name="nemsisElements"
                  value="nem:eResponse/nem:eResponse.ServiceGroup/nem:eResponse.05, nem:eProcedures/nem:eProcedures.ProcedureGroup/nem:eProcedures.03"/>
         <!-- To test: On case 2023-EMS-5-CPMIH_v351, remove the "Informing doctor" procedure, or change eProcedures.03 Procedure in that instance to a different value. -->
         <sch:assert id="compliance_cpmih_procedure_assert"
                     role="[ERROR]"
                     diagnostics="nemsisDiagnostic"
                     test="nem:eProcedures/nem:eProcedures.ProcedureGroup/nem:eProcedures.03 = '304562007'">
        A procedure of "Informing doctor" should be recorded when Type of Service Requested is "Mobile Integrated Health Care Encounter". This is a validation message for compliance pre-testing for 2025 for NEMSIS v3.5.1.
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

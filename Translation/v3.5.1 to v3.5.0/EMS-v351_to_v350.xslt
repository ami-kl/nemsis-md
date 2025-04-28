<?xml version="1.0" encoding="UTF-8"?>

<!--

XML Stylesheet Language Transformation (XSLT) to transform NEMSIS EMSDataSet from v3.5.1 to v3.5.0

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

  <xsl:attribute-set name="NotRecorded">
    <xsl:attribute name="xsi:nil" namespace="http://www.w3.org/2001/XMLSchema-instance">true</xsl:attribute>
    <xsl:attribute name="NV">7701003</xsl:attribute>
  </xsl:attribute-set>

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
    <xsl:attribute name="xsi:schemaLocation">http://www.nemsis.org http://www.nemsis.org/media/nemsis_v3/release-3.5.0/XSDs/NEMSIS_XSDs/EMSDataSet_v3.xsd</xsl:attribute>
  </xsl:template>

  <!-- eResponse.09: Map "Out of Service Area Response" to "Other" -->
  <xsl:template match="n:eResponse.09[. = '2209035']">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:text>2209013</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- eResponse.18, eScene.12, eDisposition.10: Convert 10-digit grid coordinates to 8 digits by rounding each 5-digit set to 4 digits -->
  <xsl:template match="(n:eResponse.18 | n:eScene.12 | n:eDisposition.10)[matches(., '[0-9]{10}$')]">
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

  <!-- eDispatch.01: Map "Hanging/Strangulation/Asphyxiation", "Intoxicated Subject", "EMS Requested by Law Enforcement", "Active Shooter" to "No Other Appropriate Choice" -->
  <xsl:template match="n:eDispatch.01[. = ('2301093', '2301095', '2301097', '2301099')]">
    <xsl:copy>2301051</xsl:copy>
  </xsl:template>

  <!-- ePatient.14: Map Pertinent Negatives to "Not Recorded" -->
  <xsl:template match="n:ePatient.14[@PN]">
    <xsl:copy use-attribute-sets="NotRecorded">
      <xsl:apply-templates select="@CorrelationID"/>
    </xsl:copy>
  </xsl:template>

  <!-- ePatient.14: Map "Middle Eastern or North African" to "White" -->
  <xsl:template match="n:ePatient.14[. = '2514013']">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
    <xsl:text>2514011</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- ePatient.18, ePayment.31, ePayment.39, ePayment.59, eInjury.13: Convert phone US phone numbers recorded in international format -->
  <xsl:template match="(n:ePatient.18 | n:ePayment.31 | n:ePayment.39 | n:ePayment.59 | n:eInjury.13)[matches(., '^\+1 ?[2-9] ?([0-9] ?){2}[2-9] ?([0-9] ?){6}$')]" priority="1">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
    <xsl:value-of select="replace(replace(., '(^\+1)| ', ''), '([0-9]{3})([0-9]{3})([0-9]{4})', '$1-$2-$3')"/>
    </xsl:copy>
  </xsl:template>

  <!-- ePatient.18, ePayment.31, ePayment.39, ePayment.59, eInjury.13: Remove international phone numbers -->
  <xsl:template match="(n:ePatient.18 | n:ePayment.31 | n:ePayment.39 | n:ePayment.59 | n:eInjury.13)[starts-with(., '+')]"/>

  <!-- ePatient.23: Remove -->
  <xsl:template match="n:ePatient.23"/>

  <!-- ePatient.24: Remove -->
  <xsl:template match="n:ePatient.24"/>

  <!-- eScene.25: Remove -->
  <xsl:template match="n:eScene.25"/>

  <!-- eSituation.09, eSituation.10, eSituation.11, eSituation.12: Map to "Not Recorded" if ICD-10 code begins with "U" -->
  <xsl:template match="(n:eSituation.09 | n:eSituation.10 | n:eSituation.11 | n:eSituation.12)[starts-with(., 'U')]">
    <xsl:copy use-attribute-sets="NotRecorded">
      <xsl:apply-templates select="@CorrelationID"/>
    </xsl:copy>
  </xsl:template>

  <!-- eSituation.18: Remove Pertinent Negative of "Approximate" -->
  <xsl:template match="n:eSituation.18[@PN = '8801029']">
    <xsl:copy>
      <xsl:value-of select="."/>
    </xsl:copy>
  </xsl:template>

  <!-- eArrest.14: Map Pertinent Negative of "Unable to Complete" to "Not Recorded" -->
  <xsl:template match="n:eArrest.14[@PN = '8801023']">
    <xsl:copy use-attribute-sets="NotRecorded"/>
  </xsl:template>

  <!-- eArrest.14: Remove Pertinent Negative of "Approximate" -->
  <xsl:template match="n:eArrest.14[@PN = '8801029']">
    <xsl:copy>
      <xsl:value-of select="."/>
    </xsl:copy>
  </xsl:template>

  <!-- eHistory.07: Remove if SNOMED code is longer than 15 characters -->
  <xsl:template match="n:eHistory.07[string-length() > 15]"/>

  <!-- eHistory.08: Remove if ICD-10 code begins with "U" -->
  <!-- There is no way to distinguish between a 3-character ICD-10-CM code and a 3-character 
       ICD-10-PCS code (which v3.5.0 allows), but there are currently no ICD-10-PCS codes beginning 
       with U, so this transformation removes any code beginning with U. -->
  <xsl:template match="n:eHistory.08[starts-with(., 'U')]"/>

  <!-- eHistory.17: Map "Bystander/Family Reports Drug Use", "Bystander/Family Reports Alcohol Use" to "Not Recorded" -->
  <xsl:template match="n:eHistory.17[. = ('3117015', '3117017')]">
    <xsl:copy use-attribute-sets="NotRecorded">
      <xsl:apply-templates select="@*"/>
    </xsl:copy>
  </xsl:template>

  <!-- eVitals.30: Map "FAST-ED" to "FAST-ED" -->
  <xsl:template match="n:eVitals.30[. = '3330027']">
    <xsl:copy>3330013</xsl:copy>
  </xsl:template>

  <!-- eVitals.30: Map "Vision, Aphasia, Neglect (VAN)", "BEFAST" to "Other Stroke Scale Type" -->
  <xsl:template match="n:eVitals.30[. = ('3330025', '3330029')]">
    <xsl:copy>3330011</xsl:copy>
  </xsl:template>

  <!-- eVitals.34: Remove -->
  <xsl:template match="n:eVitals.34"/>

  <!-- eExam.13: Map "Flank-Left" to "Lumbar-Left" -->
  <xsl:template match="n:eExam.13[. = '3513029']">
    <xsl:copy>3513009</xsl:copy>
  </xsl:template>

  <!-- eExam.13: Map "Flank-Right" to "Lumbar-Right" -->
  <xsl:template match="n:eExam.13[. = '3513031']">
    <xsl:copy>3513013</xsl:copy>
  </xsl:template>

  <!-- eExam.16: Remove new values -->
  <xsl:template match="n:eExam.16[. > '3516083']"/>

  <!-- eMedications.13: Remove -->
  <xsl:template match="n:eMedications.13"/>

  <!-- eProcedures.03: Map to Not Recorded if SNOMED code is longer than 15 characters -->
  <xsl:template match="n:eProcedures.03[string-length() > 15]">
    <xsl:copy use-attribute-sets="NotRecorded"/>
  </xsl:template>

  <!-- eProcedures.14: Remove -->
  <xsl:template match="n:eProcedures.14"/>

  <!-- eProcedures.15: Remove -->
  <xsl:template match="n:eProcedures.15"/>

  <!-- eAirway.08: Map Pertinent Negative of "None Reported" to "Not Recorded" -->
  <xsl:template match="n:eAirway.08[@PN = '8801015']">
    <xsl:copy use-attribute-sets="NotRecorded">
      <xsl:apply-templates select="@CorrelationID"/>
    </xsl:copy>
  </xsl:template>

  <!-- eDisposition.14: Map "Pediatric Ambulance Restraint Device", "Neonatal Ambulance Restraint Device", to "Other" -->
  <xsl:template match="n:eDisposition.14[. = ('4214021', '4214023')]">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:text>4214009</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- eDisposition.14: Map "Patient's Car Seat", "Ambulance Integrated Car Seat" to "Car Seat" -->
  <xsl:template match="n:eDisposition.14[. = ('4214025', '4214027')]">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:text>4214001</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- eDisposition.31: Map "Patient Elopement" to "Other, Not Listed" -->
  <xsl:template match="n:eDisposition.31[. = '4231017']">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:text>4231015</xsl:text>
    </xsl:copy>
  </xsl:template>

  <!-- eOutcome.21: Remove -->
  <xsl:template match="n:eOutcome.21"/>

  <!-- eOther.06: Map new values to "Other" -->
  <xsl:template match="n:eOther.06[. > '4506029']">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:text>4506029</xsl:text>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
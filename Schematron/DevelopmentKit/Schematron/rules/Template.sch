<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../utilities/html/schematronHtml.xsl"?>
<sch:schema
  xmlns:sch="http://purl.oclc.org/dsdl/schematron"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  queryBinding="xslt2"
  id="DEMDataSet|EMSDataSet (pick one)"
  schemaVersion="3.#.#.######_###### (see Schematron Guide for recommended values)"
  see="URL to human-readable documentation for this document"
  >

  <!-- In title, keep either DEMDataSet or EMSDataSet and replace [Entity] with the name of the 
       entity supplying the file (usually a state or territory). -->
  <sch:title>NEMSIS ISO Schematron file for DEMDataSet|EMSDataSet for [Entity]</sch:title>

  <sch:ns prefix="nem" uri="http://www.nemsis.org"/>
  <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

  <!-- "Initialize" variables used by nemsisDiagnostic. -->
  <sch:let name="nemsisElements" value="()"/>
  <sch:let name="nemsisElementsMissing" value="''"/>
  <sch:let name="nemsisElementsMissingContext" value="()"/>

  <!-- If you wish to use a key to lookup XML element names and translate them to their NEMSIS 
       names, uncomment the XML elements below and supply the file referenced in the include. -->

  <!-- Set up key for NEMSIS element name lookup list (look up XML element name to retrieve NEMSIS element name). -->
  <!--
  <xsl:variable name="nemSch_lookup_elements">
    <sch:include href="includes/lookup_elements.xml#nemSch_lookup_elements"/>
  </xsl:variable>
  <sch:let name="nemSch_elements" value="$nemSch_lookup_elements//*:nemSch_lookup_elements"/>
  <xsl:key name="nemSch_key_elements" match="nem:element" use="@name"/>
  -->


  <!-- PHASES -->

  <!-- Place phase elements here (optional). -->


  <!-- PATTERNS -->

  <!-- Place pattern elements here. -->


  <!-- DIAGNOSTICS -->

  <sch:diagnostics>

    <!-- Place diagnostic elements here. -->

    <!-- Do not remove or alter the national diagnostic, nemsisDiagnostic. It is OK to replace the 
         include with the actual contents of includes/diagnostic_nemsisDiagnostic.xml. -->

    <sch:include href="includes/diagnostic_nemsisDiagnostic.xml"/>

  </sch:diagnostics>

  <!-- PROPERTIES -->

  <sch:properties/>

</sch:schema>

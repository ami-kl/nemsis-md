<?xml version="1.0" encoding="utf-8"?>
<!--
  
XML Stylesheet Language Transformation (XSLT) to transform NEMSIS v3 Schematron to HTML for 
documentation purposes

Version: 3.5.1.250403CP1_250225
Revision Date: February 25, 2025

This product is provided by the NEMSIS TAC, without charge, to facilitate browsing NEMSIS 3 
Schematron files via a user-friendly web-based interface.

-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:nem="http://www.nemsis.org">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:variable name="apos">'</xsl:variable>
  <xsl:variable name="quot">"</xsl:variable>
  <xsl:variable name="XSLT" select="document('')/xsl:stylesheet"/>
  <xsl:variable name="dataset" select="sch:schema/@id"/>
  <xsl:variable name="version" select="sch:schema/@schemaVersion"/>
  <xsl:variable name="asserts" select="//*[local-name() = 'assert' or local-name() = 'report']"/>

  <!-- Main HTML document, title page, and menu -->
  <xsl:template match="/">

    <html>

      <head>

        <title>
          <xsl:value-of select="sch:schema/sch:title"/>
        </title>

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet" />

        <link rel="stylesheet" type="text/css" href="https://nemsis.org/media/nemsis_v3/master/Schematron/utilities/html/schematronHtml.css" />

        <script type="text/javascript">

          var version = '<xsl:value-of select="$version"/>'.split('.').slice(0, 3).join('.');
          var versionBase = 'https://nemsis.org/media/nemsis_v3/release-' + version;

          // Function to clean up value-of elements in overview page
          function cleanValueOf (element) {
            var replacement = element.innerHTML;
            // If it looks like a nemSch_key_elements lookup, try to isolate the name of the element(s) being looked up
            if (replacement.match(/key\s*\(\s*['"]nemSch_key_elements['"].*\$nemSch_elements\s*\)/)) {
              var match = replacement.match(/[sde][A-Z][A-Za-z]*\.\d\d/g);
              // If we couldn't isolate any element names, go with an "(Element)" placeholder
              replacement = match ? match.join(' | ') : '(Element)';
            } else {
              // Otherwise, look for and clean up "string-join" code if found
              replacement = replacement.replace(/string-join\s*\((.*)\[.*],\s*['"]\s*,\s*['"]\)/, '$1');
            }
            element.innerHTML = replacement;
          }

          // Helper function for linkNemsisElement
          function linkReplace ($1, useName) {
            var elementName = window.nemSch_lookup_elements[$1];
            var path = (version.split('.')[1] &lt; 5) ? 'DEMEMS' : 'EMSDEMSTATE'; // DD path changed in v3.5
            return '&lt;a href="' + versionBase + '/DataDictionary/PDFHTML/' + path + '/sections/elements/' + $1 + '.xml" target="_blank" title="' +
              $1 + ' ' + elementName + '">' + (useName &amp;&amp; elementName ? elementName : $1) + '&lt;/a>';
            }

          // Function to add links to NEMSIS elements
          // useName (true|*false): if true, replace element name/ID with NEMSIS name/label
          function linkNemsisElement(element, useName) {
            var regEx = useName ? /\$?([sde][A-Z][a-zA-Z]+\.\d\d)/g : /([sde][A-Z][a-zA-Z]+\.\d\d)/g;
            element.innerHTML = element.innerHTML.replace(regEx, function(match, $1) {return linkReplace($1, useName);});
          }

          var nemsisElements = document.getElementById('nemsisElements');

          window.addEventListener('load', function() {

            // Depending on how the XSLT was called (directly vs repository.html), nemsisElements may be empty. If so, re-assign it now.
            if (!nemsisElements) nemsisElements = document.getElementById('nemsisElements');

            // Create a NEMSIS element/name lookup list
            window.nemSch_lookup_elements = [];
            var parser = new DOMParser();
            var nemSch_lookup_elements_source = parser.parseFromString(nemsisElements.outerHTML, "application/xml").getElementsByTagName('*');
            for (var i = 0; i &lt; nemSch_lookup_elements_source.length; i++) {
              if (nemSch_lookup_elements_source[i].attributes.getNamedItem('nemsisName'))
                window.nemSch_lookup_elements[nemSch_lookup_elements_source[i].localName] = nemSch_lookup_elements_source[i].attributes.getNamedItem('nemsisName').value;
            }
            nemSch_lookup_elements_source = [];

            var targets = document.getElementsByClassName('value-of');
            for (var i = 0; i &lt; targets.length; i++) cleanValueOf(targets[i]);

            targets = document.getElementsByClassName('nameable');
            for (var i = 0; i &lt; targets.length; i++) linkNemsisElement(targets[i], true);

            targets = document.getElementsByClassName('linkable');
            for (var i = 0; i &lt; targets.length; i++) linkNemsisElement(targets[i], false);

            }, false);
        </script>

        <xsl:variable name="nemsisElementsForVersion" select="$XSLT/*[local-name() = 'lookup']/*[local-name() = 'nemsisElements'][starts-with($version, @version)]"/>
        <script id="nemsisElements" type="application/xml">
          <xsl:choose>
            <xsl:when test="$nemsisElementsForVersion">when
              <xsl:copy-of select="$nemsisElementsForVersion"/>
            </xsl:when>
            <xsl:otherwise>otherwise
              <xsl:copy-of select="$XSLT/*[local-name() = 'lookup']/*[local-name() = 'nemsisElements'][1]"/>
            </xsl:otherwise>
          </xsl:choose>
        </script>

      </head>

      <body>

        <!-- Menu -->

        <div id="menu">

          <a href="#">
            <h1>
              NEMSIS Schematron Validation Rules<br/>
              Version: <xsl:value-of select="$version"/>
            </h1>
          </a>

          <div class="contents">

            <h2>
              <a href="#overviewByMessage">Overview by Validation Message</a>
              <a href="#overviewByElement">Overview by NEMSIS Element</a>
            </h2>

            <h2>Schema</h2>
            <xsl:apply-templates select="sch:schema" mode="menu"/>

            <h2>Phases</h2>
            <xsl:apply-templates select="sch:schema/sch:phase" mode="menu">
              <xsl:sort select="@id"/>
            </xsl:apply-templates>

            <h2>Patterns</h2>
            <xsl:apply-templates select="sch:schema/sch:pattern" mode="menu">
              <xsl:sort select="@id"/>
            </xsl:apply-templates>

            <h2>Diagnostics</h2>
            <xsl:apply-templates select="sch:schema/sch:diagnostics/sch:diagnostic" mode="menu">
              <xsl:sort select="@id"/>
            </xsl:apply-templates>

          </div>

        </div>

        <!-- Title page -->

        <div class="page" id="root">
          <img src="https://nemsis.org/wp-content/themes/firetoss_seed/img/nemsis-logo.png" alt="NEMSIS"/>
          <div class="blueRect"></div>
          <div class="spacer20"></div>
          <div class="titleMain">NEMSIS</div>
          <div class="titleSub">Schematron Validation Rules</div>
          <div class="spacer50"></div>
          <div class="nhtsa">
            <xsl:value-of select="sch:schema/@id"/>
          </div>
          <div class="nhtsa2">
            Version: <xsl:value-of select="$version"/>
          </div>
          <div class="spacer50"></div>
          <div class="standard">
            <xsl:value-of select="sch:schema/sch:title"/>
          </div>
          <div class="spacer30"></div>
          <div class="spacer30"></div>
          <div class="spacer10"></div>
          <div class="spacer50"></div>
          <div class="spacer50"></div>
          <div class="url">www.NEMSIS.org</div>
          <div class="spacer10"></div>
          <div class="blueRectBtm"> </div>
        </div>

        <!-- Overview pages -->

        <div class="page" id="overviewByMessage">
          <div class="header">
            <span class="headerText">
              Overview by Validation Message
            </span>
          </div>
          <table class="overviewTable">
            <xsl:apply-templates select="sch:schema/sch:pattern/sch:rule/*" mode="overview">
              <xsl:sort select="@id"/>
            </xsl:apply-templates>
          </table>
        </div>

        <div class="page" id="overviewByElement">
          <div class="header">
            <span class="headerText">
              Overview by NEMSIS Element
            </span>
          </div>
          <xsl:for-each select="$XSLT">
            <xsl:apply-templates select="*[local-name() = 'lookup']/*[local-name() = 'nemsisElements'][starts-with($version, @version)]/*[local-name()=$dataset]//*[contains(local-name(), '.')]" mode="overviewByElement">
              <xsl:with-param name="asserts" select="$asserts"/>
            </xsl:apply-templates>
          </xsl:for-each>
          <xsl:if test="//sch:rule[substring(@context, 1, 1) = '*']">
            <h3>General Validation Messages (may apply to many elements)</h3>
            <table class="overviewTable">
              <xsl:apply-templates select="//sch:rule[substring(@context, 1, 1) = '*']/sch:assert | //sch:rule[substring(@context, 1, 1) = '*']/sch:report" mode="overview" />
            </table>
          </xsl:if>
        </div>


        <!-- All other pages -->

        <xsl:apply-templates mode="page"/>

      </body>

    </html>
  </xsl:template>

  <!-- Named template: Page/section header -->
  <xsl:template name="header">
    <div class="header">
      <span class="headerText">
        <xsl:value-of select="local-name()"/>
      </span>
      <span class="id">
        <xsl:value-of select="@id"/>
      </span>
      <xsl:apply-templates select="@*" mode="inline"/>
    </div>
    <xsl:apply-templates select="sch:title" mode="fixed"/>
  </xsl:template>

  <!-- Named template: Output the @id of an element, or generate one if it doesn't exist -->
  <xsl:template name="generate-id">
    <xsl:choose>
      <xsl:when test="@id!=''">
        <xsl:value-of select="@id"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="generate-id()"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Named template: Tokenize IDREFS and transform to anchors -->
  <xsl:template name="tokenizeIdrefs">
    <xsl:param name="text" select="normalize-space(.)"/>
    <xsl:param name="separator" select="' '"/>
    <xsl:choose>
      <xsl:when test="not(contains($text, $separator))">
        <a href="#{normalize-space($text)}">
          <xsl:value-of select="normalize-space($text)"/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <a href="#{normalize-space(substring-before($text, $separator))}">
          <xsl:value-of select="normalize-space(substring-before($text, $separator))"/>
        </a>
        <xsl:text> </xsl:text>
        <xsl:call-template name="tokenizeIdrefs">
          <xsl:with-param name="text" select="substring-after($text, $separator)"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


  <!-- Templates for Menu page -->

  <!-- Menu item -->
  <xsl:template match="*" mode="menu">
    <a>
      <xsl:attribute name="href">
        <xsl:text>#</xsl:text>
        <xsl:call-template name="generate-id"/>
      </xsl:attribute>
      <xsl:if test="@id!=''">
        <xsl:value-of select="@id"/>
      </xsl:if>
      <xsl:if test="not(@id!='') and sch:title!=''">
        <xsl:value-of select="sch:title"/>
      </xsl:if>
      <xsl:if test="not(@id!='' or sch:title!='')">
        unnamed <xsl:value-of select="local-name()"/>
      </xsl:if>
    </a>
    <xsl:if test="local-name() = 'pattern' and @id!='' and sch:title!=''">
      <div>
        <xsl:value-of select="sch:title"/>
      </div>
    </xsl:if>
  </xsl:template>


  <!-- Templates for Overview pages -->

  <!-- Value-of -->
  <xsl:template match="sch:value-of" mode="overview">
    <span class="value-of">
      <xsl:choose>
        <xsl:when test="contains(@select, 'local-name()')">
          <xsl:variable name="q">'</xsl:variable>
          <xsl:value-of select="concat(substring-before(@select, 'local-name()'), $q, ancestor::sch:rule/@context, $q, substring-after(@select, 'local-name()'))"/>
        </xsl:when>
        <xsl:when test="contains(@select, 'local-name(.)')">
          <xsl:variable name="q">'</xsl:variable>
          <xsl:value-of select="concat(substring-before(@select, 'local-name(.)'), $q, ancestor::sch:rule/@context, $q, substring-after(@select, 'local-name(.)'))"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@select"/>
        </xsl:otherwise>
      </xsl:choose>
    </span>
  </xsl:template>

  <!-- Assert, Report -->
  <xsl:template match="sch:assert|sch:report" mode="overview">
    <tr>
      <td class="id">
        <a>
          <xsl:attribute name="href">
            <xsl:text>#</xsl:text>
            <xsl:for-each select="../..">
              <xsl:call-template name="generate-id"/>
            </xsl:for-each>
          </xsl:attribute>
          <xsl:value-of select="@id"/>
        <xsl:if test="not(@id)">…</xsl:if>
        </a>
      </td>
      <td>
        <xsl:apply-templates select="@role" mode="inline"/>
      </td>
      <td>
        <div class="fullWidthValue nameable">
          <xsl:apply-templates select="node()" mode="overview"/>
        </div>
      </td>
    </tr>
  </xsl:template>

  <!-- Element List -->
  <xsl:template match="nem:*" mode="overviewByElement">
    <xsl:param name="asserts"/>
    <xsl:variable name="elementAsserts" select="
      $asserts[preceding-sibling::sch:let[@name='nemsisElements' or @name='nemsisElementsMissing'][
      contains(@value, local-name(current()))
      or ((contains(@value, '.,') or substring(normalize-space(@value), string-length(normalize-space(@value))) = '.')  and contains(../@context, local-name(current())))
      ] or contains(@subject, local-name(current()))] |
      $asserts[not(preceding-sibling::sch:let[@name='nemsisElements' or @name='nemsisElementsMissing'])][
      contains(@test, local-name(current()))
      or contains(@subject, local-name(current()))
      or contains(../@context, local-name(current()))]
      "/>
    <xsl:if test="$elementAsserts">
      <h3><xsl:value-of select="local-name()"/> - <xsl:value-of select="@nemsisName"/></h3>
      <table class="overviewTable">
        <xsl:apply-templates select="$elementAsserts" mode="overview"/>
      </table>
    </xsl:if>
  </xsl:template>

  <!-- Everything else in overview mode -->
  <xsl:template match="*" mode="overview"/>


  <!-- Templates for pages -->

  <!-- Schema -->
  <xsl:template match="sch:schema" mode="page">
    <div class="page">
      <xsl:attribute name="id">
        <xsl:call-template name="generate-id"/>
      </xsl:attribute>
      <xsl:call-template name="header"/>
      <xsl:apply-templates select="node()|@*"/>
    </div>
    <xsl:apply-templates select="*" mode="page"/>
    <xsl:apply-templates select="text()" mode="escape"/>
  </xsl:template>

  <xsl:template match="sch:diagnostics" mode="page">
    <xsl:apply-templates mode="page"/>
  </xsl:template>

  <!-- Phase, pattern, diagnostic -->
  <xsl:template match="sch:phase|sch:pattern|sch:diagnostic" mode="page">
    <div class="page">
      <xsl:attribute name="id">
        <xsl:call-template name="generate-id"/>
      </xsl:attribute>
      <xsl:call-template name="header"/>
      <xsl:choose>
        <xsl:when test="local-name() = 'diagnostic'">
          <xsl:apply-templates select="@*"/>
          <div class="fullWidthValue linkable code">
            <xsl:apply-templates select="node()|comment()" mode="escape"/>
          </div>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="node()|@*"/>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </xsl:template>

  <!-- Everything else in page mode -->
  <xsl:template match="*" mode="page"/>


  <!-- Templates for fixed elements -->

  <!-- Title -->
  <xsl:template match="sch:title" mode="fixed">
    <div class="fullWidthTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="fullWidthValue linkable">
      <xsl:value-of select="."/>
    </div>
  </xsl:template>


  <!-- Templates for inline elements -->

  <!-- @abstract -->
  <xsl:template match="@abstract" mode="inline">
    <span class="abstract">(Abstract)</span>
  </xsl:template>

  <!-- Everything else in inline mode -->
  <xsl:template match="node()|@*" mode="inline"/>


  <!-- General templates -->

  <!-- Rule -->
  <xsl:template match="sch:rule">
    <div class="section">
      <xsl:call-template name="header"/>
      <xsl:apply-templates select="node()|@*"/>
    </div>
  </xsl:template>

  <!-- Assert or report -->
  <xsl:template match="sch:assert|sch:report">
    <div class="section">
      <xsl:call-template name="header"/>
      <xsl:apply-templates select="@*"/>
      <div class="fullWidthValue linkable code">
        <xsl:apply-templates select="node()" mode="escape"/>
      </div>
    </div>
  </xsl:template>

  <!-- Key -->
  <xsl:template match="xsl:key">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <xsl:value-of select="@name"/>: match "<xsl:value-of select="@match"/>" using "<xsl:value-of select="@use"/>"
    </div>
  </xsl:template>

  <!-- Let or param -->
  <xsl:template match="sch:let|sch:param">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      $<xsl:value-of select="@name"/> = <xsl:value-of select="@value"/>
    </div>
  </xsl:template>

  <!-- NS -->
  <xsl:template match="sch:ns">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <xsl:value-of select="@prefix"/>: <a href="{@uri}" target="_blank">
        <xsl:value-of select="@uri"/>
      </a>
    </div>
  </xsl:template>

  <!-- xsl:variable, nem:nemSch_lookup_elements -->
  <xsl:template match="xsl:variable|nem:nemSch_lookup_elements">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue">
      <xsl:copy-of select="."/>
    </div>
  </xsl:template>

  <!-- @diagnostics -->
  <xsl:template match="@diagnostics"/>

  <!-- @extends -->
  <xsl:template match="sch:extends">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <a>
        <xsl:attribute name="href">
          <xsl:for-each select="//sch:pattern[sch:rule/@id=current()/@rule]">
            <xsl:text>#</xsl:text>
            <xsl:call-template name="generate-id"/>
          </xsl:for-each>
        </xsl:attribute>
        <xsl:value-of select="@rule"/>
      </a>
    </div>
  </xsl:template>

  <!-- @is-a -->
  <xsl:template match="@is-a">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <a href="#{.}">
        <xsl:value-of select="."/>
      </a>
    </div>
  </xsl:template>

  <!-- @role -->
  <xsl:template match="@role" mode="inline">
    <xsl:choose>
      <xsl:when test=".='[WARNING]'">
        <div class="role warning">Warning</div>
      </xsl:when>
      <xsl:when test=".='[ERROR]'">
        <div class="role error">Error</div>
      </xsl:when>
      <xsl:when test=".='[FATAL]'">
        <div class="role fatal">Fatal</div>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <!-- @see -->
  <xsl:template match="@see">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <a href="{.}" target="_blank">
        <xsl:value-of select="."/>
      </a>
    </div>
  </xsl:template>

  <!-- All other attributes and elements -->

  <xsl:template match="sch:phase|sch:pattern|sch:diagnostics"/>

  <xsl:template match="sch:title"/>

  <xsl:template match="@abstract"/>

  <xsl:template match="@id"/>

  <xsl:template match="@role"/>

  <xsl:template match="@*|*">
    <div class="summaryTitle">
      <xsl:value-of select="local-name()"/>
    </div>
    <div class="summaryValue linkable">
      <xsl:value-of select="."/>
    </div>
  </xsl:template>

  <!-- XML comment -->
  <xsl:template match="comment()">
    <div class="fullWidthTitle">
      Comment
    </div>
    <div class="fullWidthValue linkable">
      <xsl:value-of select="."/>
    </div>
  </xsl:template>


  <!-- Escaped code -->

  <!-- Elements -->
  <xsl:template match="*" mode="escape">
    <!-- Begin opening tag -->
    <span class="xmlDelimiter">&lt;</span>
    <span class="xmlName">
      <xsl:value-of select="name()"/>
    </span>
    <!-- Attributes -->
    <xsl:for-each select="@*">
      <xsl:text> </xsl:text>
      <span class="xmlAttribute">
        <xsl:value-of select="name()"/>
      </span>
      <xsl:text>="</xsl:text>
      <span class="xmlAttributeValue">
        <xsl:call-template name="escape-xml">
          <xsl:with-param name="text" select="."/>
        </xsl:call-template>
      </span>
      <xsl:text>"</xsl:text>
    </xsl:for-each>
    <xsl:choose>
      <!-- Element has content -->
      <xsl:when test="node()">
        <!-- End opening tag -->
        <span class="xmlDelimiter">&gt;</span>
        <!-- Content (child elements, text nodes, and PIs) -->
        <xsl:apply-templates select="node()" mode="escape" />
        <!-- Closing tag -->
        <span class="xmlDelimiter">&lt;/</span>
        <span class="xmlName">
          <xsl:value-of select="name()"/>
        </span>
        <span class="xmlDelimiter">&gt;</span>
      </xsl:when>
      <!-- Element has no content (singleton tag) -->
      <xsl:otherwise>
        <!-- End singleton tag -->
        <span class="xmlDelimiter">/&gt;</span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- XML Comment -->
  <xsl:template match="comment()" mode="escape">
    <!-- Begin comment tag -->
    <span class="xmlDelimiter">&lt;!--</span>
    <span class="xmlComment">
      <xsl:call-template name="escape-xml">
        <xsl:with-param name="text" select="."/>
      </xsl:call-template>
    </span>
    <!-- End comment tag -->
    <span class="xmlDelimiter">--&gt;</span>
  </xsl:template>

  <xsl:template match="text()" mode="escape">
    <xsl:call-template name="escape-xml">
      <xsl:with-param name="text" select="."/>
    </xsl:call-template>
  </xsl:template>

  <!-- Named template: escape XML code -->
  <xsl:template name="escape-xml">
    <xsl:param name="text"/>
    <xsl:if test="$text != ''">
      <xsl:variable name="head" select="substring($text, 1, 1)"/>
      <xsl:variable name="tail" select="substring($text, 2)"/>
      <xsl:choose>
        <xsl:when test="$head = '&amp;'">
          <span class="xmlEntity">&amp;amp;</span>
        </xsl:when>
        <xsl:when test="$head = '&lt;'">
          <span class="xmlEntity">&amp;lt;</span>
        </xsl:when>
        <xsl:when test="$head = '&gt;'">
          <span class="xmlEntity">&amp;gt;</span>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$head"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:call-template name="escape-xml">
        <xsl:with-param name="text" select="$tail"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <!--  Container for lookup lists -->
  <nem:lookup>
    <nemsisElements version="3.5.1">
      <StateDataSet xmlns="http://www.nemsis.org" nemsisName="Root Tag for State Dataset">
        <sState nemsisName="State information for this State Dataset.">
          <sState.01 nemsisName="State"/>
        </sState>
        <seCustomConfiguration nemsisName="Patient Care Report Custom Elements">
          <seCustomConfiguration.CustomGroup nemsisName="Patient Care Report Custom Data Element Title">
            <seCustomConfiguration.01 nemsisName="Patient Care Report Custom Data Element Title"/>
            <seCustomConfiguration.02 nemsisName="Patient Care Report Custom Definition"/>
            <seCustomConfiguration.03 nemsisName="Patient Care Report Custom Data Type"/>
            <seCustomConfiguration.04 nemsisName="Patient Care Report Custom Data Element Recurrence"/>
            <seCustomConfiguration.05 nemsisName="Patient Care Report Custom Data Element Usage"/>
            <seCustomConfiguration.06 nemsisName="Patient Care Report Custom Data Element Potential Values"/>
            <seCustomConfiguration.07 nemsisName="Patient Care Report Custom Data Element Potential NOT Values (NV)"/>
            <seCustomConfiguration.08 nemsisName="Patient Care Report Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <seCustomConfiguration.09 nemsisName="Patient Care Report Custom Data Element Grouping ID"/>
          </seCustomConfiguration.CustomGroup>
        </seCustomConfiguration>
        <sdCustomConfiguration nemsisName="Demographic Custom Elements">
          <sdCustomConfiguration.CustomGroup nemsisName="Agency Demographic Custom Data Element Title">
            <sdCustomConfiguration.01 nemsisName="Agency Demographic Custom Data Element Title"/>
            <sdCustomConfiguration.02 nemsisName="Agency Demographic Custom Definition"/>
            <sdCustomConfiguration.03 nemsisName="Agency Demographic Custom Data Type"/>
            <sdCustomConfiguration.04 nemsisName="Agency Demographic Custom Data Element Recurrence"/>
            <sdCustomConfiguration.05 nemsisName="Agency Demographic Custom Data Element Usage"/>
            <sdCustomConfiguration.06 nemsisName="Agency Demographic Custom Data Element Potential Values"/>
            <sdCustomConfiguration.07 nemsisName="Agency Demographic Custom Data Element Potential NOT Values (NV)"/>
            <sdCustomConfiguration.08 nemsisName="Agency Demographic Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <sdCustomConfiguration.09 nemsisName="Agency Demographic Custom Data Element Grouping ID"/>
          </sdCustomConfiguration.CustomGroup>
        </sdCustomConfiguration>
        <sSoftware nemsisName="Software Information">
          <sSoftware.SoftwareGroup nemsisName="Software Creator">
            <sSoftware.01 nemsisName="Software Creator"/>
            <sSoftware.02 nemsisName="Software Name"/>
            <sSoftware.03 nemsisName="Software Version"/>
          </sSoftware.SoftwareGroup>
        </sSoftware>
        <sElement nemsisName="State Collected Elements">
          <sElement.01 nemsisName="State Collected Element"/>
        </sElement>
        <sConfiguration nemsisName="Configuration Information">
          <sConfiguration.01 nemsisName="State Certification/Licensure Levels"/>
          <sConfiguration.ProcedureGroup nemsisName="EMS Certification Levels Permitted to Perform Each Procedure">
            <sConfiguration.02 nemsisName="EMS Certification Levels Permitted to Perform Each Procedure"/>
            <sConfiguration.03 nemsisName="Procedures Permitted by the State"/>
          </sConfiguration.ProcedureGroup>
          <sConfiguration.MedicationGroup nemsisName="EMS Certification Levels Permitted to Administer Each Medication">
            <sConfiguration.04 nemsisName="EMS Certification Levels Permitted to Administer Each Medication"/>
            <sConfiguration.05 nemsisName="Medications Permitted by the State"/>
          </sConfiguration.MedicationGroup>
          <sConfiguration.06 nemsisName="Protocols Permitted by the State"/>
        </sConfiguration>
        <sAgency nemsisName="Agency Information">
          <sAgencyGroup nemsisName="EMS Agency Unique State ID">
            <sAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <sAgency.02 nemsisName="EMS Agency Number"/>
            <sAgency.03 nemsisName="EMS Agency Name"/>
          </sAgencyGroup>
        </sAgency>
        <sFacility nemsisName="Facility Information">
          <sFacilityGroup nemsisName="Type of Facility">
            <sFacility.01 nemsisName="Type of Facility"/>
            <sFacility.FacilityGroup nemsisName="Facility Name">
              <sFacility.02 nemsisName="Facility Name"/>
              <sFacility.03 nemsisName="Facility Location Code"/>
              <sFacility.04 nemsisName="Hospital Designations"/>
              <sFacility.05 nemsisName="Facility National Provider Identifier"/>
              <sFacility.06 nemsisName="Facility Room, Suite, or Apartment"/>
              <sFacility.07 nemsisName="Facility Street Address"/>
              <sFacility.08 nemsisName="Facility City"/>
              <sFacility.09 nemsisName="Facility State"/>
              <sFacility.10 nemsisName="Facility ZIP Code"/>
              <sFacility.11 nemsisName="Facility County"/>
              <sFacility.12 nemsisName="Facility Country"/>
              <sFacility.13 nemsisName="Facility GPS Location"/>
              <sFacility.14 nemsisName="Facility US National Grid Coordinates"/>
              <sFacility.15 nemsisName="Facility Phone Number"/>
            </sFacility.FacilityGroup>
          </sFacilityGroup>
        </sFacility>
      </StateDataSet>
      <DEMDataSet xmlns="http://www.nemsis.org" nemsisName="Root Tag For Demographic DataSet">
        <dCustomConfiguration nemsisName="Contains information for demographic custom elements.">
          <dCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
            <dCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
            <dCustomConfiguration.02 nemsisName="Custom Definition"/>
            <dCustomConfiguration.03 nemsisName="Custom Data Type"/>
            <dCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
            <dCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
            <dCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
            <dCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
            <dCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <dCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
          </dCustomConfiguration.CustomGroup>
        </dCustomConfiguration>
        <DemographicReport nemsisName="Container Tag to hold each instance of a demographic record">
          <dRecord nemsisName="Software Information">
            <dRecord.SoftwareApplicationGroup nemsisName="Software Creator">
              <dRecord.01 nemsisName="Software Creator"/>
              <dRecord.02 nemsisName="Software Name"/>
              <dRecord.03 nemsisName="Software Version"/>
            </dRecord.SoftwareApplicationGroup>
          </dRecord>
          <dAgency nemsisName="Agency Information">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.03 nemsisName="EMS Agency Name"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
            <dAgency.AgencyServiceGroup nemsisName="EMS Agency Service Area States">
              <dAgency.05 nemsisName="EMS Agency Service Area States"/>
              <dAgency.06 nemsisName="EMS Agency Service Area County(ies)"/>
              <dAgency.07 nemsisName="EMS Agency Census Tracts"/>
              <dAgency.08 nemsisName="EMS Agency Service Area ZIP Codes"/>
            </dAgency.AgencyServiceGroup>
            <dAgency.09 nemsisName="Primary Type of Service"/>
            <dAgency.10 nemsisName="Other Types of Service"/>
            <dAgency.11 nemsisName="Level of Service"/>
            <dAgency.12 nemsisName="Organization Status"/>
            <dAgency.13 nemsisName="Organizational Type"/>
            <dAgency.14 nemsisName="EMS Agency Organizational Tax Status"/>
            <dAgency.AgencyYearGroup nemsisName="Statistical Calendar Year">
              <dAgency.15 nemsisName="Statistical Calendar Year"/>
              <dAgency.16 nemsisName="Total Primary Service Area Size"/>
              <dAgency.17 nemsisName="Total Service Area Population"/>
              <dAgency.18 nemsisName="911 EMS Call Center Volume per Year"/>
              <dAgency.19 nemsisName="EMS Dispatch Volume per Year"/>
              <dAgency.20 nemsisName="EMS Patient Transport Volume per Year"/>
              <dAgency.21 nemsisName="EMS Patient Contact Volume per Year"/>
              <dAgency.22 nemsisName="EMS Billable Calls per Year"/>
            </dAgency.AgencyYearGroup>
            <dAgency.23 nemsisName="EMS Agency Time Zone"/>
            <dAgency.24 nemsisName="EMS Agency Daylight Savings Time Use"/>
            <dAgency.25 nemsisName="National Provider Identifier"/>
            <dAgency.26 nemsisName="Fire Department ID Number"/>
            <dAgency.27 nemsisName="Licensed Agency"/>
          </dAgency>
          <dContact nemsisName="Contact Information">
            <dContact.ContactInfoGroup nemsisName="Agency Contact Type">
              <dContact.01 nemsisName="Agency Contact Type"/>
              <dContact.02 nemsisName="Agency Contact Last Name"/>
              <dContact.03 nemsisName="Agency Contact First Name"/>
              <dContact.04 nemsisName="Agency Contact Middle Name/Initial"/>
              <dContact.05 nemsisName="Agency Contact Address"/>
              <dContact.06 nemsisName="Agency Contact City"/>
              <dContact.07 nemsisName="Agency Contact State"/>
              <dContact.08 nemsisName="Agency Contact ZIP Code"/>
              <dContact.09 nemsisName="Agency Contact Country"/>
              <dContact.10 nemsisName="Agency Contact Phone Number"/>
              <dContact.11 nemsisName="Agency Contact Email Address"/>
              <dContact.12 nemsisName="EMS Agency Contact Web Address"/>
              <dContact.EMSMedicalDirectorGroup nemsisName="Agency Medical Director Degree">
                <dContact.13 nemsisName="Agency Medical Director Degree"/>
                <dContact.14 nemsisName="Agency Medical Director Board Certification Type"/>
                <dContact.15 nemsisName="Medical Director Compensation"/>
                <dContact.16 nemsisName="EMS Medical Director Board Certified/Eligible"/>
              </dContact.EMSMedicalDirectorGroup>
            </dContact.ContactInfoGroup>
          </dContact>
          <dConfiguration nemsisName="Configuration Information">
            <dConfiguration.ConfigurationGroup nemsisName="State Associated with this Configuration">
              <dConfiguration.01 nemsisName="State Associated with this Configuration"/>
              <dConfiguration.ProcedureGroup nemsisName="EMS Certification Levels Permitted to Perform Each Procedure">
                <dConfiguration.06 nemsisName="EMS Certification Levels Permitted to Perform Each Procedure"/>
                <dConfiguration.07 nemsisName="EMS Agency Procedures"/>
              </dConfiguration.ProcedureGroup>
              <dConfiguration.MedicationGroup nemsisName="EMS Certification Levels Permitted to Administer Each Medication">
                <dConfiguration.08 nemsisName="EMS Certification Levels Permitted to Administer Each Medication"/>
                <dConfiguration.09 nemsisName="EMS Agency Medications"/>
              </dConfiguration.MedicationGroup>
              <dConfiguration.10 nemsisName="EMS Agency Protocols"/>
              <dConfiguration.11 nemsisName="EMS Agency Specialty Service Capability"/>
              <dConfiguration.12 nemsisName="Billing Status"/>
              <dConfiguration.13 nemsisName="Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area"/>
              <dConfiguration.14 nemsisName="EMD Vendor"/>
              <dConfiguration.15 nemsisName="Patient Monitoring Capability(ies)"/>
              <dConfiguration.16 nemsisName="Crew Call Sign"/>
              <dConfiguration.17 nemsisName="Dispatch Center (CAD) Name or ID"/>
            </dConfiguration.ConfigurationGroup>
          </dConfiguration>
          <dLocation nemsisName="Location Information">
            <dLocation.LocationGroup nemsisName="EMS Location Type">
              <dLocation.01 nemsisName="EMS Location Type"/>
              <dLocation.02 nemsisName="EMS Location Name"/>
              <dLocation.03 nemsisName="EMS Location Number"/>
              <dLocation.04 nemsisName="EMS Location GPS"/>
              <dLocation.05 nemsisName="EMS Location US National Grid Coordinates"/>
              <dLocation.06 nemsisName="EMS Location Address"/>
              <dLocation.07 nemsisName="EMS Location City"/>
              <dLocation.08 nemsisName="EMS Location State"/>
              <dLocation.09 nemsisName="EMS Station or Location ZIP Code"/>
              <dLocation.10 nemsisName="EMS Location County"/>
              <dLocation.11 nemsisName="EMS Location Country"/>
              <dLocation.12 nemsisName="EMS Location Phone Number"/>
            </dLocation.LocationGroup>
          </dLocation>
          <dVehicle nemsisName="Vehicle Information">
            <dVehicle.VehicleGroup nemsisName="Unit/Vehicle Number">
              <dVehicle.01 nemsisName="Unit/Vehicle Number"/>
              <dVehicle.02 nemsisName="Vehicle Identification Number"/>
              <dVehicle.03 nemsisName="EMS Unit Call Sign"/>
              <dVehicle.04 nemsisName="Vehicle Type"/>
              <dVehicle.VehicleCertificationLevelsGroup nemsisName="Crew State Certification/Licensure Levels">
                <dVehicle.05 nemsisName="Crew State Certification/Licensure Levels"/>
                <dVehicle.06 nemsisName="Number of Each EMS Personnel Level on Normal 911 Ambulance Response"/>
                <dVehicle.07 nemsisName="Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle"/>
                <dVehicle.08 nemsisName="Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance"/>
              </dVehicle.VehicleCertificationLevelsGroup>
              <dVehicle.09 nemsisName="Vehicle Initial Cost"/>
              <dVehicle.10 nemsisName="Vehicle Model Year"/>
              <dVehicle.YearGroup nemsisName="Year Miles/Kilometers Hours Accrued">
                <dVehicle.11 nemsisName="Year Miles/Kilometers Hours Accrued"/>
                <dVehicle.12 nemsisName="Annual Vehicle Hours"/>
                <dVehicle.13 nemsisName="Annual Vehicle Miles/Kilometers"/>
              </dVehicle.YearGroup>
            </dVehicle.VehicleGroup>
          </dVehicle>
          <dPersonnel nemsisName="Personnel Information">
            <dPersonnel.PersonnelGroup nemsisName="EMS Personnel's Last Name">
              <dPersonnel.NameGroup nemsisName="EMS Personnel's Last Name">
                <dPersonnel.01 nemsisName="EMS Personnel's Last Name"/>
                <dPersonnel.02 nemsisName="EMS Personnel's First Name"/>
                <dPersonnel.03 nemsisName="EMS Personnel's Middle Name/Initial"/>
              </dPersonnel.NameGroup>
              <dPersonnel.AddressGroup nemsisName="EMS Personnel's Mailing Address">
                <dPersonnel.04 nemsisName="EMS Personnel's Mailing Address"/>
                <dPersonnel.05 nemsisName="EMS Personnel's City of Residence"/>
                <dPersonnel.06 nemsisName="EMS Personnel's State"/>
                <dPersonnel.07 nemsisName="EMS Personnel's ZIP Code"/>
                <dPersonnel.08 nemsisName="EMS Personnel's Country"/>
              </dPersonnel.AddressGroup>
              <dPersonnel.09 nemsisName="EMS Personnel's Phone Number"/>
              <dPersonnel.10 nemsisName="EMS Personnel's Email Address"/>
              <dPersonnel.11 nemsisName="EMS Personnel's Date of Birth"/>
              <dPersonnel.12 nemsisName="dPersonnel.12"/>
              <dPersonnel.13 nemsisName="EMS Personnel's Race"/>
              <dPersonnel.14 nemsisName="EMS Personnel's Citizenship"/>
              <dPersonnel.15 nemsisName="EMS Personnel's Highest Educational Degree"/>
              <dPersonnel.16 nemsisName="EMS Personnel's Degree Subject/Field of Study"/>
              <dPersonnel.17 nemsisName="EMS Personnel's Motor Vehicle License Type"/>
              <dPersonnel.ImmunizationsGroup nemsisName="EMS Personnel's Immunization Status">
                <dPersonnel.18 nemsisName="EMS Personnel's Immunization Status"/>
                <dPersonnel.19 nemsisName="EMS Personnel's Immunization Year"/>
              </dPersonnel.ImmunizationsGroup>
              <dPersonnel.20 nemsisName="EMS Personnel's Foreign Language Ability"/>
              <dPersonnel.21 nemsisName="EMS Personnel's Agency ID Number"/>
              <dPersonnel.LicensureGroup nemsisName="EMS Personnel's State of Licensure">
                <dPersonnel.22 nemsisName="EMS Personnel's State of Licensure"/>
                <dPersonnel.23 nemsisName="EMS Personnel's State's Licensure ID Number"/>
                <dPersonnel.24 nemsisName="EMS Personnel's State EMS Certification Licensure Level"/>
                <dPersonnel.25 nemsisName="EMS Personnel's State EMS Current Certification Date"/>
                <dPersonnel.26 nemsisName="EMS Personnel's Initial State's Licensure Issue Date"/>
                <dPersonnel.27 nemsisName="EMS Personnel's Current State's Licensure Expiration Date"/>
              </dPersonnel.LicensureGroup>
              <dPersonnel.28 nemsisName="EMS Personnel's National Registry Number"/>
              <dPersonnel.29 nemsisName="EMS Personnel's National Registry Certification Level"/>
              <dPersonnel.30 nemsisName="EMS Personnel's Current National Registry Expiration Date"/>
              <dPersonnel.31 nemsisName="EMS Personnel's Employment Status"/>
              <dPersonnel.32 nemsisName="EMS Personnel's Employment Status Date"/>
              <dPersonnel.33 nemsisName="EMS Personnel's Hire Date"/>
              <dPersonnel.34 nemsisName="EMS Personnel's Primary EMS Job Role"/>
              <dPersonnel.35 nemsisName="EMS Personnel's Other Job Responsibilities"/>
              <dPersonnel.36 nemsisName="EMS Personnel's Total Length of Service in Years"/>
              <dPersonnel.37 nemsisName="EMS Personnel's Date Length of Service Documented"/>
              <dPersonnel.CertificationLevelGroup nemsisName="EMS Personnel's Practice Level">
                <dPersonnel.38 nemsisName="EMS Personnel's Practice Level"/>
                <dPersonnel.39 nemsisName="Date of Personnel's Certification or Licensure for Agency"/>
              </dPersonnel.CertificationLevelGroup>
              <dPersonnel.40 nemsisName="EMS Personnel's Sex"/>
            </dPersonnel.PersonnelGroup>
          </dPersonnel>
          <dDevice nemsisName="Device Information">
            <dDevice.DeviceGroup nemsisName="Medical Device Serial Number">
              <dDevice.01 nemsisName="Medical Device Serial Number"/>
              <dDevice.02 nemsisName="Medical Device Name or ID"/>
              <dDevice.03 nemsisName="Medical Device Type"/>
              <dDevice.04 nemsisName="Medical Device Manufacturer"/>
              <dDevice.05 nemsisName="Medical Device Model Number"/>
              <dDevice.06 nemsisName="Medical Device Purchase Date"/>
            </dDevice.DeviceGroup>
          </dDevice>
          <dFacility nemsisName="Facility Information">
            <dFacilityGroup nemsisName="Type of Facility">
              <dFacility.01 nemsisName="Type of Facility"/>
              <dFacility.FacilityGroup nemsisName="Facility Name">
                <dFacility.02 nemsisName="Facility Name"/>
                <dFacility.03 nemsisName="Facility Location Code"/>
                <dFacility.04 nemsisName="Hospital Designations"/>
                <dFacility.05 nemsisName="Facility National Provider Identifier"/>
                <dFacility.06 nemsisName="Facility Room, Suite, or Apartment"/>
                <dFacility.07 nemsisName="Facility Street Address"/>
                <dFacility.08 nemsisName="Facility City"/>
                <dFacility.09 nemsisName="Facility State"/>
                <dFacility.10 nemsisName="Facility ZIP Code"/>
                <dFacility.11 nemsisName="Facility County"/>
                <dFacility.12 nemsisName="Facility Country"/>
                <dFacility.13 nemsisName="Facility GPS Location"/>
                <dFacility.14 nemsisName="Facility US National Grid Coordinates"/>
                <dFacility.15 nemsisName="Facility Phone Number"/>
              </dFacility.FacilityGroup>
            </dFacilityGroup>
          </dFacility>
          <dCustomResults nemsisName="Custom Data Element Results">
            <dCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
              <dCustomResults.01 nemsisName="Custom Data Element Result"/>
              <dCustomResults.02 nemsisName="Custom Element ID Referenced"/>
              <dCustomResults.03 nemsisName="CorrelationID of DemographicReport Element or Group"/>
            </dCustomResults.ResultsGroup>
          </dCustomResults>
        </DemographicReport>
      </DEMDataSet>
      <EMSDataSet xmlns="http://www.nemsis.org" nemsisName="EMS Agency Unique State ID">
        <Header nemsisName="EMS Agency Unique State ID">
          <DemographicGroup nemsisName="EMS Agency Unique State ID">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
          </DemographicGroup>
          <eCustomConfiguration nemsisName="">
            <eCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
              <eCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
              <eCustomConfiguration.02 nemsisName="Custom Definition"/>
              <eCustomConfiguration.03 nemsisName="Custom Data Type"/>
              <eCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
              <eCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
              <eCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
              <eCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
              <eCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
              <eCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
            </eCustomConfiguration.CustomGroup>
          </eCustomConfiguration>
          <PatientCareReport nemsisName="Container Tag to hold each instance of a patient care report (PCR)">
            <eRecord nemsisName="Patient Record Information">
              <eRecord.01 nemsisName="Patient Care Report Number"/>
              <eRecord.SoftwareApplicationGroup nemsisName="Software Creator">
                <eRecord.02 nemsisName="Software Creator"/>
                <eRecord.03 nemsisName="Software Name"/>
                <eRecord.04 nemsisName="Software Version"/>
              </eRecord.SoftwareApplicationGroup>
            </eRecord>
            <eResponse nemsisName="Unit Agency Information">
              <eResponse.AgencyGroup nemsisName="EMS Agency Number">
                <eResponse.01 nemsisName="EMS Agency Number"/>
                <eResponse.02 nemsisName="EMS Agency Name"/>
              </eResponse.AgencyGroup>
              <eResponse.03 nemsisName="Incident Number"/>
              <eResponse.04 nemsisName="EMS Response Number"/>
              <eResponse.ServiceGroup nemsisName="Type of Service Requested">
                <eResponse.05 nemsisName="Type of Service Requested"/>
                <eResponse.06 nemsisName="Standby Purpose"/>
              </eResponse.ServiceGroup>
              <eResponse.07 nemsisName="Unit Transport and Equipment Capability"/>
              <eResponse.08 nemsisName="Type of Dispatch Delay"/>
              <eResponse.09 nemsisName="Type of Response Delay"/>
              <eResponse.10 nemsisName="Type of Scene Delay"/>
              <eResponse.11 nemsisName="Type of Transport Delay"/>
              <eResponse.12 nemsisName="Type of Turn-Around Delay"/>
              <eResponse.13 nemsisName="EMS Vehicle (Unit) Number"/>
              <eResponse.14 nemsisName="EMS Unit Call Sign"/>
              <eResponse.16 nemsisName="Vehicle Dispatch Location"/>
              <eResponse.17 nemsisName="Vehicle Dispatch GPS Location"/>
              <eResponse.18 nemsisName="Vehicle Dispatch Location US National Grid Coordinates"/>
              <eResponse.19 nemsisName="Beginning Odometer Reading of Responding Vehicle"/>
              <eResponse.20 nemsisName="On-Scene Odometer Reading of Responding Vehicle"/>
              <eResponse.21 nemsisName="Patient Destination Odometer Reading of Responding Vehicle"/>
              <eResponse.22 nemsisName="Ending Odometer Reading of Responding Vehicle"/>
              <eResponse.23 nemsisName="Response Mode to Scene"/>
              <eResponse.24 nemsisName="Additional Response Mode Descriptors"/>
            </eResponse>
            <eDispatch nemsisName="Dispatch Information">
              <eDispatch.01 nemsisName="Dispatch Reason"/>
              <eDispatch.02 nemsisName="EMD Performed"/>
              <eDispatch.03 nemsisName="EMD Determinant Code"/>
              <eDispatch.04 nemsisName="Dispatch Center Name or ID"/>
              <eDispatch.05 nemsisName="Dispatch Priority (Patient Acuity)"/>
              <eDispatch.06 nemsisName="Unit Dispatched CAD Record ID"/>
            </eDispatch>
            <eCrew nemsisName="Crew Member Information">
              <eCrew.CrewGroup nemsisName="Crew Member ID">
                <eCrew.01 nemsisName="Crew Member ID"/>
                <eCrew.02 nemsisName="Crew Member Level"/>
                <eCrew.03 nemsisName="Crew Member Response Role"/>
              </eCrew.CrewGroup>
            </eCrew>
            <eTimes nemsisName="Call Event Times Information">
              <eTimes.01 nemsisName="PSAP Call Date/Time"/>
              <eTimes.02 nemsisName="Dispatch Notified Date/Time"/>
              <eTimes.03 nemsisName="Unit Notified by Dispatch Date/Time"/>
              <eTimes.04 nemsisName="Dispatch Acknowledged Date/Time"/>
              <eTimes.05 nemsisName="Unit En Route Date/Time"/>
              <eTimes.06 nemsisName="Unit Arrived on Scene Date/Time"/>
              <eTimes.07 nemsisName="Arrived at Patient Date/Time"/>
              <eTimes.08 nemsisName="Transfer of EMS Patient Care Date/Time"/>
              <eTimes.09 nemsisName="Unit Left Scene Date/Time"/>
              <eTimes.10 nemsisName="Arrival at Destination Landing Area Date/Time"/>
              <eTimes.11 nemsisName="Patient Arrived at Destination Date/Time"/>
              <eTimes.12 nemsisName="Destination Patient Transfer of Care Date/Time"/>
              <eTimes.13 nemsisName="Unit Back in Service Date/Time"/>
              <eTimes.14 nemsisName="Unit Canceled Date/Time"/>
              <eTimes.15 nemsisName="Unit Back at Home Location Date/Time"/>
              <eTimes.16 nemsisName="EMS Call Completed Date/Time"/>
              <eTimes.17 nemsisName="Unit Arrived at Staging Area Date/Time"/>
            </eTimes>
            <ePatient nemsisName="Patient Information">
              <ePatient.01 nemsisName="EMS Patient ID"/>
              <ePatient.PatientNameGroup nemsisName="Last Name">
                <ePatient.02 nemsisName="Last Name"/>
                <ePatient.03 nemsisName="First Name"/>
                <ePatient.04 nemsisName="Middle Initial/Name"/>
                <ePatient.23 nemsisName="Name Suffix"/>
              </ePatient.PatientNameGroup>
              <ePatient.05 nemsisName="Patient's Home Address"/>
              <ePatient.06 nemsisName="Patient's Home City"/>
              <ePatient.07 nemsisName="Patient's Home County"/>
              <ePatient.08 nemsisName="Patient's Home State"/>
              <ePatient.09 nemsisName="Patient's Home ZIP Code"/>
              <ePatient.10 nemsisName="Patient's Country of Residence"/>
              <ePatient.11 nemsisName="Patient Home Census Tract"/>
              <ePatient.12 nemsisName="Social Security Number"/>
              <ePatient.13 nemsisName="ePatient.13"/>
              <ePatient.14 nemsisName="Race"/>
              <ePatient.AgeGroup nemsisName="Age">
                <ePatient.15 nemsisName="Age"/>
                <ePatient.16 nemsisName="Age Units"/>
              </ePatient.AgeGroup>
              <ePatient.17 nemsisName="Date of Birth"/>
              <ePatient.18 nemsisName="Patient's Phone Number"/>
              <ePatient.19 nemsisName="Patient's Email Address"/>
              <ePatient.20 nemsisName="State Issuing Driver's License"/>
              <ePatient.21 nemsisName="Driver's License Number"/>
              <ePatient.22 nemsisName="Alternate Home Residence"/>
              <ePatient.24 nemsisName="Patient's Preferred Language(s)"/>
              <ePatient.25 nemsisName="Sex"/>
            </ePatient>
            <ePayment nemsisName="Insurance/Payment Information">
              <ePayment.01 nemsisName="Primary Method of Payment"/>
              <ePayment.CertificateGroup nemsisName="Physician Certification Statement">
                <ePayment.02 nemsisName="Physician Certification Statement"/>
                <ePayment.03 nemsisName="Date Physician Certification Statement Signed"/>
                <ePayment.04 nemsisName="Reason for Physician Certification Statement"/>
                <ePayment.05 nemsisName="Healthcare Provider Type Signing Physician Certification Statement"/>
                <ePayment.06 nemsisName="Last Name of Individual Signing Physician Certification Statement"/>
                <ePayment.07 nemsisName="First Name of Individual Signing Physician Certification Statement"/>
              </ePayment.CertificateGroup>
              <ePayment.08 nemsisName="Patient Resides in Service Area"/>
              <ePayment.InsuranceGroup nemsisName="Insurance Company ID">
                <ePayment.09 nemsisName="Insurance Company ID"/>
                <ePayment.10 nemsisName="Insurance Company Name"/>
                <ePayment.11 nemsisName="Insurance Company Billing Priority"/>
                <ePayment.12 nemsisName="Insurance Company Address"/>
                <ePayment.13 nemsisName="Insurance Company City"/>
                <ePayment.14 nemsisName="Insurance Company State"/>
                <ePayment.15 nemsisName="Insurance Company ZIP Code"/>
                <ePayment.16 nemsisName="Insurance Company Country"/>
                <ePayment.17 nemsisName="Insurance Group ID"/>
                <ePayment.18 nemsisName="Insurance Policy ID Number"/>
                <ePayment.19 nemsisName="Last Name of the Insured"/>
                <ePayment.20 nemsisName="First Name of the Insured"/>
                <ePayment.21 nemsisName="Middle Initial/Name of the Insured"/>
                <ePayment.22 nemsisName="Relationship to the Insured"/>
                <ePayment.58 nemsisName="Insurance Group Name"/>
                <ePayment.59 nemsisName="Insurance Company Phone Number"/>
                <ePayment.60 nemsisName="Date of Birth of the Insured"/>
              </ePayment.InsuranceGroup>
              <ePayment.ClosestRelativeGroup nemsisName="Closest Relative/Guardian Last Name">
                <ePayment.23 nemsisName="Closest Relative/Guardian Last Name"/>
                <ePayment.24 nemsisName="Closest Relative/ Guardian First Name"/>
                <ePayment.25 nemsisName="Closest Relative/ Guardian Middle Initial/Name"/>
                <ePayment.26 nemsisName="Closest Relative/ Guardian Street Address"/>
                <ePayment.27 nemsisName="Closest Relative/ Guardian City"/>
                <ePayment.28 nemsisName="Closest Relative/ Guardian State"/>
                <ePayment.29 nemsisName="Closest Relative/ Guardian ZIP Code"/>
                <ePayment.30 nemsisName="Closest Relative/ Guardian Country"/>
                <ePayment.31 nemsisName="Closest Relative/ Guardian Phone Number"/>
                <ePayment.32 nemsisName="Closest Relative/ Guardian Relationship"/>
              </ePayment.ClosestRelativeGroup>
              <ePayment.EmployerGroup nemsisName="Patient's Employer">
                <ePayment.33 nemsisName="Patient's Employer"/>
                <ePayment.34 nemsisName="Patient's Employer's Address"/>
                <ePayment.35 nemsisName="Patient's Employer's City"/>
                <ePayment.36 nemsisName="Patient's Employer's State"/>
                <ePayment.37 nemsisName="Patient's Employer's ZIP Code"/>
                <ePayment.38 nemsisName="Patient's Employer's Country"/>
                <ePayment.39 nemsisName="Patient's Employer's Primary Phone Number"/>
              </ePayment.EmployerGroup>
              <ePayment.40 nemsisName="Response Urgency"/>
              <ePayment.41 nemsisName="Patient Transport Assessment"/>
              <ePayment.42 nemsisName="Specialty Care Transport Care Provider"/>
              <ePayment.44 nemsisName="Ambulance Transport Reason Code"/>
              <ePayment.45 nemsisName="Round Trip Purpose Description"/>
              <ePayment.46 nemsisName="Stretcher Purpose Description"/>
              <ePayment.47 nemsisName="Ambulance Conditions Indicator"/>
              <ePayment.48 nemsisName="Mileage to Closest Hospital Facility"/>
              <ePayment.49 nemsisName="ALS Assessment Performed and Warranted"/>
              <ePayment.50 nemsisName="CMS Service Level"/>
              <ePayment.51 nemsisName="EMS Condition Code"/>
              <ePayment.52 nemsisName="CMS Transportation Indicator"/>
              <ePayment.53 nemsisName="Transport Authorization Code"/>
              <ePayment.54 nemsisName="Prior Authorization Code Payer"/>
              <ePayment.SupplyItemGroup nemsisName="Supply Item Used Name">
                <ePayment.55 nemsisName="Supply Item Used Name"/>
                <ePayment.56 nemsisName="Number of Supply Item(s) Used"/>
              </ePayment.SupplyItemGroup>
              <ePayment.57 nemsisName="Payer Type"/>
            </ePayment>
            <eScene nemsisName="Incident Scene Information">
              <eScene.01 nemsisName="First EMS Unit on Scene"/>
              <eScene.ResponderGroup nemsisName="Other EMS or Public Safety Agencies at Scene">
                <eScene.02 nemsisName="Other EMS or Public Safety Agencies at Scene"/>
                <eScene.03 nemsisName="Other EMS or Public Safety Agency ID Number"/>
                <eScene.04 nemsisName="Type of Other Service at Scene"/>
                <eScene.24 nemsisName="First Other EMS or Public Safety Agency at Scene to Provide Patient Care"/>
                <eScene.25 nemsisName="Transferred Patient/Care To/From Agency"/>
              </eScene.ResponderGroup>
              <eScene.05 nemsisName="Date/Time Initial Responder Arrived on Scene"/>
              <eScene.06 nemsisName="Number of Patients at Scene"/>
              <eScene.07 nemsisName="Mass Casualty Incident"/>
              <eScene.08 nemsisName="Triage Classification for MCI Patient"/>
              <eScene.09 nemsisName="Incident Location Type"/>
              <eScene.10 nemsisName="Incident Facility Code"/>
              <eScene.11 nemsisName="Scene GPS Location"/>
              <eScene.12 nemsisName="Scene US National Grid Coordinates"/>
              <eScene.13 nemsisName="Incident Facility or Location Name"/>
              <eScene.14 nemsisName="Mile Post or Major Roadway"/>
              <eScene.15 nemsisName="Incident Street Address"/>
              <eScene.16 nemsisName="Incident Apartment, Suite, or Room"/>
              <eScene.17 nemsisName="Incident City"/>
              <eScene.18 nemsisName="Incident State"/>
              <eScene.19 nemsisName="Incident ZIP Code"/>
              <eScene.20 nemsisName="Scene Cross Street or Directions"/>
              <eScene.21 nemsisName="Incident County"/>
              <eScene.22 nemsisName="Incident Country"/>
              <eScene.23 nemsisName="Incident Census Tract"/>
            </eScene>
            <eSituation nemsisName="Situation Information">
              <eSituation.01 nemsisName="Date/Time of Symptom Onset"/>
              <eSituation.02 nemsisName="Possible Injury"/>
              <eSituation.PatientComplaintGroup nemsisName="Complaint Type">
                <eSituation.03 nemsisName="Complaint Type"/>
                <eSituation.04 nemsisName="Complaint"/>
                <eSituation.05 nemsisName="Duration of Complaint"/>
                <eSituation.06 nemsisName="Time Units of Duration of Complaint"/>
              </eSituation.PatientComplaintGroup>
              <eSituation.07 nemsisName="Chief Complaint Anatomic Location"/>
              <eSituation.08 nemsisName="Chief Complaint Organ System"/>
              <eSituation.09 nemsisName="Primary Symptom"/>
              <eSituation.10 nemsisName="Other Associated Symptoms"/>
              <eSituation.11 nemsisName="Provider's Primary Impression"/>
              <eSituation.12 nemsisName="Provider's Secondary Impressions"/>
              <eSituation.13 nemsisName="Initial Patient Acuity"/>
              <eSituation.WorkRelatedGroup nemsisName="Work-Related Illness/Injury">
                <eSituation.14 nemsisName="Work-Related Illness/Injury"/>
                <eSituation.15 nemsisName="Patient's Occupational Industry"/>
                <eSituation.16 nemsisName="Patient's Occupation"/>
              </eSituation.WorkRelatedGroup>
              <eSituation.17 nemsisName="Patient Activity"/>
              <eSituation.18 nemsisName="Date/Time Last Known Well"/>
              <eSituation.19 nemsisName="Justification for Transfer or Encounter"/>
              <eSituation.20 nemsisName="Reason for Interfacility Transfer/Medical Transport"/>
            </eSituation>
            <eInjury nemsisName="Injury Information">
              <eInjury.01 nemsisName="Cause of Injury"/>
              <eInjury.02 nemsisName="Mechanism of Injury"/>
              <eInjury.03 nemsisName="Trauma Triage Criteria (High Risk for Serious Injury)"/>
              <eInjury.04 nemsisName="Trauma Triage Criteria (Moderate Risk for Serious Injury)"/>
              <eInjury.05 nemsisName="Main Area of the Vehicle Impacted by the Collision"/>
              <eInjury.06 nemsisName="Location of Patient in Vehicle"/>
              <eInjury.07 nemsisName="Use of Occupant Safety Equipment"/>
              <eInjury.08 nemsisName="Airbag Deployment"/>
              <eInjury.09 nemsisName="Height of Fall (feet)"/>
              <eInjury.10 nemsisName="OSHA Personal Protective Equipment Used"/>
              <eInjury.CollisionGroup nemsisName="ACN System/Company Providing ACN Data">
                <eInjury.11 nemsisName="ACN System/Company Providing ACN Data"/>
                <eInjury.12 nemsisName="ACN Incident ID"/>
                <eInjury.13 nemsisName="ACN Call Back Phone Number"/>
                <eInjury.14 nemsisName="Date/Time of ACN Incident"/>
                <eInjury.15 nemsisName="ACN Incident Location"/>
                <eInjury.16 nemsisName="ACN Incident Vehicle Body Type"/>
                <eInjury.17 nemsisName="ACN Incident Vehicle Manufacturer"/>
                <eInjury.18 nemsisName="ACN Incident Vehicle Make"/>
                <eInjury.19 nemsisName="ACN Incident Vehicle Model"/>
                <eInjury.20 nemsisName="ACN Incident Vehicle Model Year"/>
                <eInjury.21 nemsisName="ACN Incident Multiple Impacts"/>
                <eInjury.22 nemsisName="ACN Incident Delta Velocity"/>
                <eInjury.23 nemsisName="ACN High Probability of Injury"/>
                <eInjury.24 nemsisName="ACN Incident PDOF"/>
                <eInjury.25 nemsisName="ACN Incident Rollover"/>
                <eInjury.SeatGroup nemsisName="ACN Vehicle Seat Location">
                  <eInjury.26 nemsisName="ACN Vehicle Seat Location"/>
                  <eInjury.27 nemsisName="Seat Occupied"/>
                  <eInjury.28 nemsisName="ACN Incident Seatbelt Use"/>
                  <eInjury.29 nemsisName="ACN Incident Airbag Deployed"/>
                </eInjury.SeatGroup>
              </eInjury.CollisionGroup>
            </eInjury>
            <eArrest nemsisName="Cardiac Arrest Information">
              <eArrest.01 nemsisName="Cardiac Arrest"/>
              <eArrest.02 nemsisName="Cardiac Arrest Etiology"/>
              <eArrest.03 nemsisName="Resuscitation Attempted By EMS"/>
              <eArrest.04 nemsisName="Arrest Witnessed By"/>
              <eArrest.07 nemsisName="AED Use Prior to EMS Arrival"/>
              <eArrest.09 nemsisName="Type of CPR Provided"/>
              <eArrest.10 nemsisName="Therapeutic Hypothermia by EMS"/>
              <eArrest.11 nemsisName="First Monitored Arrest Rhythm of the Patient"/>
              <eArrest.12 nemsisName="Any Return of Spontaneous Circulation"/>
              <eArrest.13 nemsisName="Neurological Outcome at Hospital Discharge"/>
              <eArrest.14 nemsisName="Date/Time of Cardiac Arrest"/>
              <eArrest.15 nemsisName="Date/Time Resuscitation Discontinued"/>
              <eArrest.16 nemsisName="Reason CPR/Resuscitation Discontinued"/>
              <eArrest.17 nemsisName="Cardiac Rhythm on Arrival at Destination"/>
              <eArrest.18 nemsisName="End of EMS Cardiac Arrest Event"/>
              <eArrest.19 nemsisName="Date/Time of Initial CPR"/>
              <eArrest.20 nemsisName="Who First Initiated CPR"/>
              <eArrest.21 nemsisName="Who First Applied the AED"/>
              <eArrest.22 nemsisName="Who First Defibrillated the Patient"/>
            </eArrest>
            <eHistory nemsisName="Patient History Information">
              <eHistory.01 nemsisName="Barriers to Patient Care"/>
              <eHistory.PractitionerGroup nemsisName="Last Name of Patient's Practitioner">
                <eHistory.02 nemsisName="Last Name of Patient's Practitioner"/>
                <eHistory.03 nemsisName="First Name of Patient's Practitioner"/>
                <eHistory.04 nemsisName="Middle Name/Initial of Patient's Practitioner"/>
              </eHistory.PractitionerGroup>
              <eHistory.05 nemsisName="Advance Directives"/>
              <eHistory.06 nemsisName="Medication Allergies"/>
              <eHistory.07 nemsisName="Environmental/Food Allergies"/>
              <eHistory.08 nemsisName="Medical/Surgical History"/>
              <eHistory.09 nemsisName="Medical History Obtained From"/>
              <eHistory.ImmunizationsGroup nemsisName="The Patient's Type of Immunization">
                <eHistory.10 nemsisName="The Patient's Type of Immunization"/>
                <eHistory.11 nemsisName="Immunization Year"/>
              </eHistory.ImmunizationsGroup>
              <eHistory.CurrentMedsGroup nemsisName="Current Medications">
                <eHistory.12 nemsisName="Current Medications"/>
                <eHistory.13 nemsisName="Current Medication Dose"/>
                <eHistory.14 nemsisName="Current Medication Dosage Unit"/>
                <eHistory.15 nemsisName="Current Medication Administration Route"/>
                <eHistory.20 nemsisName="Current Medication Frequency"/>
              </eHistory.CurrentMedsGroup>
              <eHistory.16 nemsisName="Presence of Emergency Information Form"/>
              <eHistory.17 nemsisName="Alcohol/Drug Use Indicators"/>
              <eHistory.18 nemsisName="Pregnancy"/>
              <eHistory.19 nemsisName="Last Oral Intake"/>
            </eHistory>
            <eNarrative nemsisName="Call Event Narrative">
              <eNarrative.01 nemsisName="Patient Care Report Narrative"/>
            </eNarrative>
            <eVitals nemsisName="Patient Vital Sign Information">
              <eVitals.VitalGroup nemsisName="Date/Time Vital Signs Taken">
                <eVitals.01 nemsisName="Date/Time Vital Signs Taken"/>
                <eVitals.02 nemsisName="Obtained Prior to this Unit's EMS Care"/>
                <eVitals.CardiacRhythmGroup nemsisName="Cardiac Rhythm / Electrocardiography (ECG)">
                  <eVitals.03 nemsisName="Cardiac Rhythm / Electrocardiography (ECG)"/>
                  <eVitals.04 nemsisName="ECG Type"/>
                  <eVitals.05 nemsisName="Method of ECG Interpretation"/>
                </eVitals.CardiacRhythmGroup>
                <eVitals.BloodPressureGroup nemsisName="SBP (Systolic Blood Pressure)">
                  <eVitals.06 nemsisName="SBP (Systolic Blood Pressure)"/>
                  <eVitals.07 nemsisName="DBP (Diastolic Blood Pressure)"/>
                  <eVitals.08 nemsisName="Method of Blood Pressure Measurement"/>
                  <eVitals.09 nemsisName="Mean Arterial Pressure"/>
                </eVitals.BloodPressureGroup>
                <eVitals.HeartRateGroup nemsisName="Heart Rate">
                  <eVitals.10 nemsisName="Heart Rate"/>
                  <eVitals.11 nemsisName="Method of Heart Rate Measurement"/>
                </eVitals.HeartRateGroup>
                <eVitals.12 nemsisName="Pulse Oximetry"/>
                <eVitals.13 nemsisName="Pulse Rhythm"/>
                <eVitals.14 nemsisName="Respiratory Rate"/>
                <eVitals.15 nemsisName="Respiratory Effort"/>
                <eVitals.16 nemsisName="End Tidal Carbon Dioxide (ETCO2)"/>
                <eVitals.17 nemsisName="Carbon Monoxide (CO)"/>
                <eVitals.18 nemsisName="Blood Glucose Level"/>
                <eVitals.GlasgowScoreGroup nemsisName="Glasgow Coma Score-Eye">
                  <eVitals.19 nemsisName="Glasgow Coma Score-Eye"/>
                  <eVitals.20 nemsisName="Glasgow Coma Score-Verbal"/>
                  <eVitals.21 nemsisName="Glasgow Coma Score-Motor"/>
                  <eVitals.22 nemsisName="Glasgow Coma Score-Qualifier"/>
                  <eVitals.23 nemsisName="Total Glasgow Coma Score"/>
                </eVitals.GlasgowScoreGroup>
                <eVitals.TemperatureGroup nemsisName="Temperature">
                  <eVitals.24 nemsisName="Temperature"/>
                  <eVitals.25 nemsisName="Temperature Method"/>
                </eVitals.TemperatureGroup>
                <eVitals.26 nemsisName="Level of Responsiveness (AVPU)"/>
                <eVitals.PainScaleGroup nemsisName="Pain Scale Score">
                  <eVitals.27 nemsisName="Pain Scale Score"/>
                  <eVitals.28 nemsisName="Pain Scale Type"/>
                </eVitals.PainScaleGroup>
                <eVitals.StrokeScaleGroup nemsisName="Stroke Scale Score">
                  <eVitals.29 nemsisName="Stroke Scale Result"/>
                  <eVitals.30 nemsisName="Stroke Scale Type"/>
                  <eVitals.34 nemsisName="Stroke Scale Score"/>
                </eVitals.StrokeScaleGroup>
                <eVitals.31 nemsisName="Reperfusion Checklist"/>
                <eVitals.32 nemsisName="APGAR"/>
                <eVitals.33 nemsisName="Revised Trauma Score"/>
              </eVitals.VitalGroup>
            </eVitals>
            <eLabs nemsisName="Lab Results Information">
              <eLabs.LabGroup nemsisName="Date/Time of Laboratory or Imaging Result">
                <eLabs.01 nemsisName="Date/Time of Laboratory or Imaging Result"/>
                <eLabs.02 nemsisName="Study/Result Prior to this Unit's EMS Care"/>
                <eLabs.LabResultGroup nemsisName="Laboratory Result Type">
                  <eLabs.03 nemsisName="Laboratory Result Type"/>
                  <eLabs.04 nemsisName="Laboratory Result"/>
                </eLabs.LabResultGroup>
                <eLabs.LabImageGroup nemsisName="Imaging Study Type">
                  <eLabs.05 nemsisName="Imaging Study Type"/>
                  <eLabs.06 nemsisName="Imaging Study Results"/>
                  <eLabs.WaveformGraphicGroup nemsisName="Imaging Study File or Waveform Graphic Type">
                    <eLabs.07 nemsisName="Imaging Study File or Waveform Graphic Type"/>
                    <eLabs.08 nemsisName="Imaging Study File or Waveform Graphic"/>
                  </eLabs.WaveformGraphicGroup>
                </eLabs.LabImageGroup>
              </eLabs.LabGroup>
            </eLabs>
            <eExam nemsisName="Patient Exam Information">
              <eExam.01 nemsisName="Estimated Body Weight in Kilograms"/>
              <eExam.02 nemsisName="Length Based Tape Measure"/>
              <eExam.AssessmentGroup nemsisName="Date/Time of Assessment">
                <eExam.03 nemsisName="Date/Time of Assessment"/>
                <eExam.04 nemsisName="Skin Assessment"/>
                <eExam.05 nemsisName="Head Assessment"/>
                <eExam.06 nemsisName="Face Assessment"/>
                <eExam.07 nemsisName="Neck Assessment"/>
                <eExam.09 nemsisName="Heart Assessment"/>
                <eExam.AbdomenGroup nemsisName="Abdominal Assessment Finding Location">
                  <eExam.10 nemsisName="Abdominal Assessment Finding Location"/>
                  <eExam.11 nemsisName="Abdomen Assessment"/>
                </eExam.AbdomenGroup>
                <eExam.12 nemsisName="Pelvis/Genitourinary Assessment"/>
                <eExam.SpineGroup nemsisName="Back and Spine Assessment Finding Location">
                  <eExam.13 nemsisName="Back and Spine Assessment Finding Location"/>
                  <eExam.14 nemsisName="Back and Spine Assessment"/>
                </eExam.SpineGroup>
                <eExam.ExtremityGroup nemsisName="Extremity Assessment Finding Location">
                  <eExam.15 nemsisName="Extremity Assessment Finding Location"/>
                  <eExam.16 nemsisName="Extremities Assessment"/>
                </eExam.ExtremityGroup>
                <eExam.EyeGroup nemsisName="Eye Assessment Finding Location">
                  <eExam.17 nemsisName="Eye Assessment Finding Location"/>
                  <eExam.18 nemsisName="Eye Assessment"/>
                </eExam.EyeGroup>
                <eExam.LungGroup nemsisName="Lung Assessment Finding Location">
                  <eExam.22 nemsisName="Lung Assessment Finding Location"/>
                  <eExam.23 nemsisName="Lung Assessment"/>
                </eExam.LungGroup>
                <eExam.ChestGroup nemsisName="Chest Assessment Finding Location">
                  <eExam.24 nemsisName="Chest Assessment Finding Location"/>
                  <eExam.25 nemsisName="Chest Assessment"/>
                </eExam.ChestGroup>
                <eExam.19 nemsisName="Mental Status Assessment"/>
                <eExam.20 nemsisName="Neurological Assessment"/>
              </eExam.AssessmentGroup>
              <eExam.21 nemsisName="Stroke/CVA Symptoms Resolved"/>
            </eExam>
            <eProtocols nemsisName="Medical Protocols Information">
              <eProtocols.ProtocolGroup nemsisName="Protocols Used">
                <eProtocols.01 nemsisName="Protocols Used"/>
                <eProtocols.02 nemsisName="Protocol Age Category"/>
              </eProtocols.ProtocolGroup>
            </eProtocols>
            <eMedications nemsisName="Intervention Medications Information">
              <eMedications.MedicationGroup nemsisName="Date/Time Medication Administered">
                <eMedications.01 nemsisName="Date/Time Medication Administered"/>
                <eMedications.02 nemsisName="Medication Administered Prior to this Unit's EMS Care"/>
                <eMedications.03 nemsisName="Medication Administered"/>
                <eMedications.04 nemsisName="Medication Administered Route"/>
                <eMedications.DosageGroup nemsisName="Medication Dosage">
                  <eMedications.05 nemsisName="Medication Dosage"/>
                  <eMedications.06 nemsisName="Medication Dosage Units"/>
                </eMedications.DosageGroup>
                <eMedications.07 nemsisName="Response to Medication"/>
                <eMedications.08 nemsisName="Medication Complication"/>
                <eMedications.09 nemsisName="Medication Crew (Healthcare Professionals) ID"/>
                <eMedications.10 nemsisName="Role/Type of Person Administering Medication"/>
                <eMedications.11 nemsisName="Medication Authorization"/>
                <eMedications.12 nemsisName="Medication Authorizing Physician"/>
                <eMedications.13 nemsisName="Medication Administered by Another Unit"/>
              </eMedications.MedicationGroup>
            </eMedications>
            <eProcedures nemsisName="Intervention Procedures Information">
              <eProcedures.ProcedureGroup nemsisName="Date/Time Procedure Performed">
                <eProcedures.01 nemsisName="Date/Time Procedure Performed"/>
                <eProcedures.02 nemsisName="Procedure Performed Prior to this Unit's EMS Care"/>
                <eProcedures.03 nemsisName="Procedure"/>
                <eProcedures.04 nemsisName="Size of Procedure Equipment"/>
                <eProcedures.05 nemsisName="Number of Procedure Attempts"/>
                <eProcedures.06 nemsisName="Procedure Successful"/>
                <eProcedures.07 nemsisName="Procedure Complication"/>
                <eProcedures.08 nemsisName="Response to Procedure"/>
                <eProcedures.09 nemsisName="Procedure Crew Members ID"/>
                <eProcedures.10 nemsisName="Role/Type of Person Performing the Procedure"/>
                <eProcedures.11 nemsisName="Procedure Authorization"/>
                <eProcedures.12 nemsisName="Procedure Authorizing Physician"/>
                <eProcedures.13 nemsisName="Vascular Access Location"/>
                <eProcedures.14 nemsisName="Airway Placement Technique"/>
                <eProcedures.15 nemsisName="Procedure Performed by Another Unit"/>
              </eProcedures.ProcedureGroup>
            </eProcedures>
            <eAirway nemsisName="Airway Device Information">
              <eAirway.AirwayGroup nemsisName="Indications for Invasive Airway">
                <eAirway.01 nemsisName="Indications for Invasive Airway"/>
                <eAirway.ConfirmationGroup nemsisName="Date/Time Airway Device Placement Confirmation">
                  <eAirway.02 nemsisName="Date/Time Airway Device Placement Confirmation"/>
                  <eAirway.03 nemsisName="Airway Device Being Confirmed"/>
                  <eAirway.04 nemsisName="Airway Device Placement Confirmed Method"/>
                  <eAirway.05 nemsisName="Tube Depth"/>
                  <eAirway.06 nemsisName="Type of Individual Confirming Airway Device Placement"/>
                  <eAirway.07 nemsisName="Crew Member ID"/>
                </eAirway.ConfirmationGroup>
                <eAirway.08 nemsisName="Airway Complications Encountered"/>
                <eAirway.09 nemsisName="Suspected Reasons for Failed Airway Management"/>
                <eAirway.10 nemsisName="Date/Time Decision to Manage the Patient with an Invasive Airway"/>
                <eAirway.11 nemsisName="Date/Time Invasive Airway Placement Attempts Abandoned"/>
              </eAirway.AirwayGroup>
            </eAirway>
            <eDevice nemsisName="Medical Device Information">
              <eDevice.DeviceGroup nemsisName="Medical Device Serial Number">
                <eDevice.01 nemsisName="Medical Device Serial Number"/>
                <eDevice.02 nemsisName="Date/Time of Event (per Medical Device)"/>
                <eDevice.03 nemsisName="Medical Device Event Type"/>
                <eDevice.WaveformGroup nemsisName="Medical Device Waveform Graphic Type">
                  <eDevice.04 nemsisName="Medical Device Waveform Graphic Type"/>
                  <eDevice.05 nemsisName="Medical Device Waveform Graphic"/>
                  <eDevice.06 nemsisName="Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)"/>
                </eDevice.WaveformGroup>
                <eDevice.07 nemsisName="Medical Device ECG Lead"/>
                <eDevice.08 nemsisName="Medical Device ECG Interpretation"/>
                <eDevice.ShockGroup nemsisName="Type of Shock">
                  <eDevice.09 nemsisName="Type of Shock"/>
                  <eDevice.10 nemsisName="Shock or Pacing Energy"/>
                  <eDevice.11 nemsisName="Total Number of Shocks Delivered"/>
                  <eDevice.12 nemsisName="Pacing Rate"/>
                </eDevice.ShockGroup>
              </eDevice.DeviceGroup>
            </eDevice>
            <eDisposition nemsisName="Patient Disposition Information">
              <eDisposition.DestinationGroup nemsisName="Destination/Transferred To, Name">
                <eDisposition.01 nemsisName="Destination/Transferred To, Name"/>
                <eDisposition.02 nemsisName="Destination/Transferred To, Code"/>
                <eDisposition.03 nemsisName="Destination Street Address"/>
                <eDisposition.04 nemsisName="Destination City"/>
                <eDisposition.05 nemsisName="Destination State"/>
                <eDisposition.06 nemsisName="Destination County"/>
                <eDisposition.07 nemsisName="Destination ZIP Code"/>
                <eDisposition.08 nemsisName="Destination Country"/>
                <eDisposition.09 nemsisName="Destination GPS Location"/>
                <eDisposition.10 nemsisName="Destination Location US National Grid Coordinates "/>
              </eDisposition.DestinationGroup>
              <eDisposition.11 nemsisName="Number of Patients Transported in this EMS Unit"/>
              <eDisposition.IncidentDispositionGroup nemsisName="Unit Disposition">
                <eDisposition.27 nemsisName="Unit Disposition"/>
                <eDisposition.28 nemsisName="Patient Evaluation/Care"/>
                <eDisposition.29 nemsisName="Crew Disposition"/>
                <eDisposition.30 nemsisName="Transport Disposition"/>
                <eDisposition.31 nemsisName="Reason for Refusal/Release"/>
              </eDisposition.IncidentDispositionGroup>
              <eDisposition.13 nemsisName="How Patient Was Moved to Ambulance"/>
              <eDisposition.14 nemsisName="Position of Patient During Transport"/>
              <eDisposition.15 nemsisName="How Patient Was Moved From Ambulance"/>
              <eDisposition.16 nemsisName="EMS Transport Method"/>
              <eDisposition.17 nemsisName="Transport Mode from Scene"/>
              <eDisposition.18 nemsisName="Additional Transport Mode Descriptors"/>
              <eDisposition.19 nemsisName="Acuity Upon EMS Release of Patient"/>
              <eDisposition.20 nemsisName="Reason for Choosing Destination"/>
              <eDisposition.21 nemsisName="Type of Destination"/>
              <eDisposition.22 nemsisName="Hospital In-Patient Destination"/>
              <eDisposition.23 nemsisName="Hospital Capability"/>
              <eDisposition.HospitalTeamActivationGroup nemsisName="Destination Team Pre-Arrival Alert or Activation">
                <eDisposition.24 nemsisName="Destination Team Pre-Arrival Alert or Activation"/>
                <eDisposition.25 nemsisName="Date/Time of Destination Prearrival Alert or Activation"/>
              </eDisposition.HospitalTeamActivationGroup>
              <eDisposition.26 nemsisName="Disposition Instructions Provided"/>
              <eDisposition.32 nemsisName="Level of Care Provided per Protocol"/>
            </eDisposition>
            <eOutcome nemsisName="Patient Outcome Information">
              <eOutcome.01 nemsisName="Emergency Department Disposition"/>
              <eOutcome.02 nemsisName="Hospital Disposition"/>
              <eOutcome.ExternalDataGroup nemsisName="External Report ID/Number Type">
                <eOutcome.03 nemsisName="External Report ID/Number Type"/>
                <eOutcome.04 nemsisName="External Report ID/Number"/>
                <eOutcome.05 nemsisName="Other Report Registry Type"/>
              </eOutcome.ExternalDataGroup>
              <eOutcome.EmergencyDepartmentProceduresGroup nemsisName="Emergency Department Procedures">
                <eOutcome.09 nemsisName="Emergency Department Procedures"/>
                <eOutcome.19 nemsisName="Date/Time Emergency Department Procedure Performed"/>
              </eOutcome.EmergencyDepartmentProceduresGroup>
              <eOutcome.10 nemsisName="Emergency Department Diagnosis"/>
              <eOutcome.11 nemsisName="Date/Time of Hospital Admission"/>
              <eOutcome.HospitalProceduresGroup nemsisName="Hospital Procedures">
                <eOutcome.12 nemsisName="Hospital Procedures"/>
                <eOutcome.20 nemsisName="Date/Time Hospital Procedure Performed"/>
              </eOutcome.HospitalProceduresGroup>
              <eOutcome.13 nemsisName="Hospital Diagnosis"/>
              <eOutcome.16 nemsisName="Date/Time of Hospital Discharge"/>
              <eOutcome.18 nemsisName="Date/Time of Emergency Department Admission"/>
              <eOutcome.21 nemsisName="Injury Severity Score"/>
            </eOutcome>
            <eCustomResults nemsisName="Custom Data Elements Results">
              <eCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
                <eCustomResults.01 nemsisName="Custom Data Element Result"/>
                <eCustomResults.02 nemsisName="Custom Element ID Referenced"/>
                <eCustomResults.03 nemsisName="CorrelationID of PatientCareReport Element or Group"/>
              </eCustomResults.ResultsGroup>
            </eCustomResults>
            <eOther nemsisName="Other Miscellaneous Information">
              <eOther.01 nemsisName="Review Requested"/>
              <eOther.02 nemsisName="Potential System of Care/Specialty/Registry Patient"/>
              <eOther.EMSCrewMemberGroup nemsisName="Personal Protective Equipment Used">
                <eOther.03 nemsisName="Personal Protective Equipment Used"/>
                <eOther.04 nemsisName="EMS Professional (Crew Member) ID"/>
                <eOther.05 nemsisName="Suspected EMS Work Related Exposure, Injury, or Death"/>
                <eOther.06 nemsisName="The Type of Work-Related Injury, Death or Suspected Exposure"/>
              </eOther.EMSCrewMemberGroup>
              <eOther.07 nemsisName="Natural, Suspected, Intentional, or Unintentional Disaster"/>
              <eOther.08 nemsisName="Crew Member Completing this Report"/>
              <eOther.FileGroup nemsisName="External Electronic Document Type">
                <eOther.09 nemsisName="External Electronic Document Type"/>
                <eOther.10 nemsisName="File Attachment Type"/>
                <eOther.11 nemsisName="File Attachment Image"/>
                <eOther.22 nemsisName="File Attachment Name"/>
              </eOther.FileGroup>
              <eOther.SignatureGroup nemsisName="Type of Person Signing">
                <eOther.12 nemsisName="Type of Person Signing"/>
                <eOther.13 nemsisName="Signature Reason"/>
                <eOther.14 nemsisName="Type Of Patient Representative"/>
                <eOther.15 nemsisName="Signature Status"/>
                <eOther.16 nemsisName="Signature File Name"/>
                <eOther.17 nemsisName="Signature File Type"/>
                <eOther.18 nemsisName="Signature Graphic"/>
                <eOther.19 nemsisName="Date/Time of Signature"/>
                <eOther.20 nemsisName="Signature Last Name"/>
                <eOther.21 nemsisName="Signature First Name"/>
              </eOther.SignatureGroup>
            </eOther>
          </PatientCareReport>
        </Header>
      </EMSDataSet>
    </nemsisElements>
    <nemsisElements version="3.5.0">
      <StateDataSet xmlns="http://www.nemsis.org" nemsisName="Root Tag for State Dataset">
        <sState nemsisName="State information for this State Dataset.">
          <sState.01 nemsisName="State"/>
        </sState>
        <seCustomConfiguration nemsisName="Patient Care Report Custom Elements">
          <seCustomConfiguration.CustomGroup nemsisName="Patient Care Report Custom Data Element Title">
            <seCustomConfiguration.01 nemsisName="Patient Care Report Custom Data Element Title"/>
            <seCustomConfiguration.02 nemsisName="Patient Care Report Custom Definition"/>
            <seCustomConfiguration.03 nemsisName="Patient Care Report Custom Data Type"/>
            <seCustomConfiguration.04 nemsisName="Patient Care Report Custom Data Element Recurrence"/>
            <seCustomConfiguration.05 nemsisName="Patient Care Report Custom Data Element Usage"/>
            <seCustomConfiguration.06 nemsisName="Patient Care Report Custom Data Element Potential Values"/>
            <seCustomConfiguration.07 nemsisName="Patient Care Report Custom Data Element Potential NOT Values (NV)"/>
            <seCustomConfiguration.08 nemsisName="Patient Care Report Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <seCustomConfiguration.09 nemsisName="Patient Care Report Custom Data Element Grouping ID"/>
          </seCustomConfiguration.CustomGroup>
        </seCustomConfiguration>
        <sdCustomConfiguration nemsisName="Demographic Custom Elements">
          <sdCustomConfiguration.CustomGroup nemsisName="Agency Demographic Custom Data Element Title">
            <sdCustomConfiguration.01 nemsisName="Agency Demographic Custom Data Element Title"/>
            <sdCustomConfiguration.02 nemsisName="Agency Demographic Custom Definition"/>
            <sdCustomConfiguration.03 nemsisName="Agency Demographic Custom Data Type"/>
            <sdCustomConfiguration.04 nemsisName="Agency Demographic Custom Data Element Recurrence"/>
            <sdCustomConfiguration.05 nemsisName="Agency Demographic Custom Data Element Usage"/>
            <sdCustomConfiguration.06 nemsisName="Agency Demographic Custom Data Element Potential Values"/>
            <sdCustomConfiguration.07 nemsisName="Agency Demographic Custom Data Element Potential NOT Values (NV)"/>
            <sdCustomConfiguration.08 nemsisName="Agency Demographic Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <sdCustomConfiguration.09 nemsisName="Agency Demographic Custom Data Element Grouping ID"/>
          </sdCustomConfiguration.CustomGroup>
        </sdCustomConfiguration>
        <sSoftware nemsisName="Software Information">
          <sSoftware.SoftwareGroup nemsisName="Software Creator">
            <sSoftware.01 nemsisName="Software Creator"/>
            <sSoftware.02 nemsisName="Software Name"/>
            <sSoftware.03 nemsisName="Software Version"/>
          </sSoftware.SoftwareGroup>
        </sSoftware>
        <sElement nemsisName="State Collected Elements">
          <sElement.01 nemsisName="State Collected Element"/>
        </sElement>
        <sConfiguration nemsisName="Configuration Information">
          <sConfiguration.01 nemsisName="State Certification/Licensure Levels"/>
          <sConfiguration.ProcedureGroup nemsisName="EMS Certification Levels Permitted to Perform Each Procedure">
            <sConfiguration.02 nemsisName="EMS Certification Levels Permitted to Perform Each Procedure"/>
            <sConfiguration.03 nemsisName="Procedures Permitted by the State"/>
          </sConfiguration.ProcedureGroup>
          <sConfiguration.MedicationGroup nemsisName="EMS Certification Levels Permitted to Administer Each Medication">
            <sConfiguration.04 nemsisName="EMS Certification Levels Permitted to Administer Each Medication"/>
            <sConfiguration.05 nemsisName="Medications Permitted by the State"/>
          </sConfiguration.MedicationGroup>
          <sConfiguration.06 nemsisName="Protocols Permitted by the State"/>
        </sConfiguration>
        <sAgency nemsisName="Agency Information">
          <sAgencyGroup nemsisName="EMS Agency Unique State ID">
            <sAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <sAgency.02 nemsisName="EMS Agency Number"/>
            <sAgency.03 nemsisName="EMS Agency Name"/>
          </sAgencyGroup>
        </sAgency>
        <sFacility nemsisName="Facility Information">
          <sFacilityGroup nemsisName="Type of Facility">
            <sFacility.01 nemsisName="Type of Facility"/>
            <sFacility.FacilityGroup nemsisName="Facility Name">
              <sFacility.02 nemsisName="Facility Name"/>
              <sFacility.03 nemsisName="Facility Location Code"/>
              <sFacility.04 nemsisName="Hospital Designations"/>
              <sFacility.05 nemsisName="Facility National Provider Identifier"/>
              <sFacility.06 nemsisName="Facility Room, Suite, or Apartment"/>
              <sFacility.07 nemsisName="Facility Street Address"/>
              <sFacility.08 nemsisName="Facility City"/>
              <sFacility.09 nemsisName="Facility State"/>
              <sFacility.10 nemsisName="Facility ZIP Code"/>
              <sFacility.11 nemsisName="Facility County"/>
              <sFacility.12 nemsisName="Facility Country"/>
              <sFacility.13 nemsisName="Facility GPS Location"/>
              <sFacility.14 nemsisName="Facility US National Grid Coordinates"/>
              <sFacility.15 nemsisName="Facility Phone Number"/>
            </sFacility.FacilityGroup>
          </sFacilityGroup>
        </sFacility>
      </StateDataSet>
      <DEMDataSet xmlns="http://www.nemsis.org" nemsisName="Root Tag For Demographic DataSet">
        <dCustomConfiguration nemsisName="Contains information for demographic custom elements.">
          <dCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
            <dCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
            <dCustomConfiguration.02 nemsisName="Custom Definition"/>
            <dCustomConfiguration.03 nemsisName="Custom Data Type"/>
            <dCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
            <dCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
            <dCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
            <dCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
            <dCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <dCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
          </dCustomConfiguration.CustomGroup>
        </dCustomConfiguration>
        <DemographicReport nemsisName="Container Tag to hold each instance of a demographic record">
          <dAgency nemsisName="Agency Information">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.03 nemsisName="EMS Agency Name"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
            <dAgency.AgencyServiceGroup nemsisName="EMS Agency Service Area States">
              <dAgency.05 nemsisName="EMS Agency Service Area States"/>
              <dAgency.06 nemsisName="EMS Agency Service Area County(ies)"/>
              <dAgency.07 nemsisName="EMS Agency Census Tracts"/>
              <dAgency.08 nemsisName="EMS Agency Service Area ZIP Codes"/>
            </dAgency.AgencyServiceGroup>
            <dAgency.09 nemsisName="Primary Type of Service"/>
            <dAgency.10 nemsisName="Other Types of Service"/>
            <dAgency.11 nemsisName="Level of Service"/>
            <dAgency.12 nemsisName="Organization Status"/>
            <dAgency.13 nemsisName="Organizational Type"/>
            <dAgency.14 nemsisName="EMS Agency Organizational Tax Status"/>
            <dAgency.AgencyYearGroup nemsisName="Statistical Calendar Year">
              <dAgency.15 nemsisName="Statistical Calendar Year"/>
              <dAgency.16 nemsisName="Total Primary Service Area Size"/>
              <dAgency.17 nemsisName="Total Service Area Population"/>
              <dAgency.18 nemsisName="911 EMS Call Center Volume per Year"/>
              <dAgency.19 nemsisName="EMS Dispatch Volume per Year"/>
              <dAgency.20 nemsisName="EMS Patient Transport Volume per Year"/>
              <dAgency.21 nemsisName="EMS Patient Contact Volume per Year"/>
              <dAgency.22 nemsisName="EMS Billable Calls per Year"/>
            </dAgency.AgencyYearGroup>
            <dAgency.23 nemsisName="EMS Agency Time Zone"/>
            <dAgency.24 nemsisName="EMS Agency Daylight Savings Time Use"/>
            <dAgency.25 nemsisName="National Provider Identifier"/>
            <dAgency.26 nemsisName="Fire Department ID Number"/>
          </dAgency>
          <dContact nemsisName="Contact Information">
            <dContact.ContactInfoGroup nemsisName="Agency Contact Type">
              <dContact.01 nemsisName="Agency Contact Type"/>
              <dContact.02 nemsisName="Agency Contact Last Name"/>
              <dContact.03 nemsisName="Agency Contact First Name"/>
              <dContact.04 nemsisName="Agency Contact Middle Name/Initial"/>
              <dContact.05 nemsisName="Agency Contact Address"/>
              <dContact.06 nemsisName="Agency Contact City"/>
              <dContact.07 nemsisName="Agency Contact State"/>
              <dContact.08 nemsisName="Agency Contact ZIP Code"/>
              <dContact.09 nemsisName="Agency Contact Country"/>
              <dContact.10 nemsisName="Agency Contact Phone Number"/>
              <dContact.11 nemsisName="Agency Contact Email Address"/>
              <dContact.12 nemsisName="EMS Agency Contact Web Address"/>
              <dContact.EMSMedicalDirectorGroup nemsisName="Agency Medical Director Degree">
                <dContact.13 nemsisName="Agency Medical Director Degree"/>
                <dContact.14 nemsisName="Agency Medical Director Board Certification Type"/>
                <dContact.15 nemsisName="Medical Director Compensation"/>
                <dContact.16 nemsisName="EMS Medical Director Fellowship Trained Status"/>
              </dContact.EMSMedicalDirectorGroup>
            </dContact.ContactInfoGroup>
          </dContact>
          <dConfiguration nemsisName="Configuration Information">
            <dConfiguration.ConfigurationGroup nemsisName="State Associated with this Configuration">
              <dConfiguration.01 nemsisName="State Associated with this Configuration"/>
              <dConfiguration.ProcedureGroup nemsisName="EMS Certification Levels Permitted to Perform Each Procedure">
                <dConfiguration.06 nemsisName="EMS Certification Levels Permitted to Perform Each Procedure"/>
                <dConfiguration.07 nemsisName="EMS Agency Procedures"/>
              </dConfiguration.ProcedureGroup>
              <dConfiguration.MedicationGroup nemsisName="EMS Certification Levels Permitted to Administer Each Medication">
                <dConfiguration.08 nemsisName="EMS Certification Levels Permitted to Administer Each Medication"/>
                <dConfiguration.09 nemsisName="EMS Agency Medications"/>
              </dConfiguration.MedicationGroup>
              <dConfiguration.10 nemsisName="EMS Agency Protocols"/>
              <dConfiguration.11 nemsisName="EMS Agency Specialty Service Capability"/>
              <dConfiguration.12 nemsisName="Billing Status"/>
              <dConfiguration.13 nemsisName="Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area"/>
              <dConfiguration.14 nemsisName="EMD Vendor"/>
              <dConfiguration.15 nemsisName="Patient Monitoring Capability(ies)"/>
              <dConfiguration.16 nemsisName="Crew Call Sign"/>
              <dConfiguration.17 nemsisName="Dispatch Center (CAD) Name or ID"/>
            </dConfiguration.ConfigurationGroup>
          </dConfiguration>
          <dLocation nemsisName="Location Information">
            <dLocation.LocationGroup nemsisName="EMS Location Type">
              <dLocation.01 nemsisName="EMS Location Type"/>
              <dLocation.02 nemsisName="EMS Location Name"/>
              <dLocation.03 nemsisName="EMS Location Number"/>
              <dLocation.04 nemsisName="EMS Location GPS"/>
              <dLocation.05 nemsisName="EMS Location US National Grid Coordinates"/>
              <dLocation.06 nemsisName="EMS Location Address"/>
              <dLocation.07 nemsisName="EMS Location City"/>
              <dLocation.08 nemsisName="EMS Location State"/>
              <dLocation.09 nemsisName="EMS Station or Location ZIP Code"/>
              <dLocation.10 nemsisName="EMS Location County"/>
              <dLocation.11 nemsisName="EMS Location Country"/>
              <dLocation.12 nemsisName="EMS Location Phone Number"/>
            </dLocation.LocationGroup>
          </dLocation>
          <dVehicle nemsisName="Vehicle Information">
            <dVehicle.VehicleGroup nemsisName="Unit/Vehicle Number">
              <dVehicle.01 nemsisName="Unit/Vehicle Number"/>
              <dVehicle.02 nemsisName="Vehicle Identification Number"/>
              <dVehicle.03 nemsisName="EMS Unit Call Sign"/>
              <dVehicle.04 nemsisName="Vehicle Type"/>
              <dVehicle.VehicleCertificationLevelsGroup nemsisName="Crew State Certification/Licensure Levels">
                <dVehicle.05 nemsisName="Crew State Certification/Licensure Levels"/>
                <dVehicle.06 nemsisName="Number of Each EMS Personnel Level on Normal 911 Ambulance Response"/>
                <dVehicle.07 nemsisName="Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle"/>
                <dVehicle.08 nemsisName="Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance"/>
              </dVehicle.VehicleCertificationLevelsGroup>
              <dVehicle.09 nemsisName="Vehicle Initial Cost"/>
              <dVehicle.10 nemsisName="Vehicle Model Year"/>
              <dVehicle.YearGroup nemsisName="Year Miles/Kilometers Hours Accrued">
                <dVehicle.11 nemsisName="Year Miles/Kilometers Hours Accrued"/>
                <dVehicle.12 nemsisName="Annual Vehicle Hours"/>
                <dVehicle.13 nemsisName="Annual Vehicle Miles/Kilometers"/>
              </dVehicle.YearGroup>
            </dVehicle.VehicleGroup>
          </dVehicle>
          <dPersonnel nemsisName="Personnel Information">
            <dPersonnel.PersonnelGroup nemsisName="EMS Personnel's Last Name">
              <dPersonnel.NameGroup nemsisName="EMS Personnel's Last Name">
                <dPersonnel.01 nemsisName="EMS Personnel's Last Name"/>
                <dPersonnel.02 nemsisName="EMS Personnel's First Name"/>
                <dPersonnel.03 nemsisName="EMS Personnel's Middle Name/Initial"/>
              </dPersonnel.NameGroup>
              <dPersonnel.AddressGroup nemsisName="EMS Personnel's Mailing Address">
                <dPersonnel.04 nemsisName="EMS Personnel's Mailing Address"/>
                <dPersonnel.05 nemsisName="EMS Personnel's City of Residence"/>
                <dPersonnel.06 nemsisName="EMS Personnel's State"/>
                <dPersonnel.07 nemsisName="EMS Personnel's ZIP Code"/>
                <dPersonnel.08 nemsisName="EMS Personnel's Country"/>
              </dPersonnel.AddressGroup>
              <dPersonnel.09 nemsisName="EMS Personnel's Phone Number"/>
              <dPersonnel.10 nemsisName="EMS Personnel's Email Address"/>
              <dPersonnel.11 nemsisName="EMS Personnel's Date of Birth"/>
              <dPersonnel.12 nemsisName="dPersonnel.12"/>
              <dPersonnel.13 nemsisName="EMS Personnel's Race"/>
              <dPersonnel.14 nemsisName="EMS Personnel's Citizenship"/>
              <dPersonnel.15 nemsisName="EMS Personnel's Highest Educational Degree"/>
              <dPersonnel.16 nemsisName="EMS Personnel's Degree Subject/Field of Study"/>
              <dPersonnel.17 nemsisName="EMS Personnel's Motor Vehicle License Type"/>
              <dPersonnel.ImmunizationsGroup nemsisName="EMS Personnel's Immunization Status">
                <dPersonnel.18 nemsisName="EMS Personnel's Immunization Status"/>
                <dPersonnel.19 nemsisName="EMS Personnel's Immunization Year"/>
              </dPersonnel.ImmunizationsGroup>
              <dPersonnel.20 nemsisName="EMS Personnel's Foreign Language Ability"/>
              <dPersonnel.21 nemsisName="EMS Personnel's Agency ID Number"/>
              <dPersonnel.LicensureGroup nemsisName="EMS Personnel's State of Licensure">
                <dPersonnel.22 nemsisName="EMS Personnel's State of Licensure"/>
                <dPersonnel.23 nemsisName="EMS Personnel's State's Licensure ID Number"/>
                <dPersonnel.24 nemsisName="EMS Personnel's State EMS Certification Licensure Level"/>
                <dPersonnel.25 nemsisName="EMS Personnel's State EMS Current Certification Date"/>
                <dPersonnel.26 nemsisName="EMS Personnel's Initial State's Licensure Issue Date"/>
                <dPersonnel.27 nemsisName="EMS Personnel's Current State's Licensure Expiration Date"/>
              </dPersonnel.LicensureGroup>
              <dPersonnel.28 nemsisName="EMS Personnel's National Registry Number"/>
              <dPersonnel.29 nemsisName="EMS Personnel's National Registry Certification Level"/>
              <dPersonnel.30 nemsisName="EMS Personnel's Current National Registry Expiration Date"/>
              <dPersonnel.31 nemsisName="EMS Personnel's Employment Status"/>
              <dPersonnel.32 nemsisName="EMS Personnel's Employment Status Date"/>
              <dPersonnel.33 nemsisName="EMS Personnel's Hire Date"/>
              <dPersonnel.34 nemsisName="EMS Personnel's Primary EMS Job Role"/>
              <dPersonnel.35 nemsisName="EMS Personnel's Other Job Responsibilities"/>
              <dPersonnel.36 nemsisName="EMS Personnel's Total Length of Service in Years"/>
              <dPersonnel.37 nemsisName="EMS Personnel's Date Length of Service Documented"/>
              <dPersonnel.CertificationLevelGroup nemsisName="EMS Personnel's Practice Level">
                <dPersonnel.38 nemsisName="EMS Personnel's Practice Level"/>
                <dPersonnel.39 nemsisName="Date of Personnel's Certification or Licensure for Agency"/>
              </dPersonnel.CertificationLevelGroup>
              <dPersonnel.40 nemsisName="EMS Personnel's Sex"/>
            </dPersonnel.PersonnelGroup>
          </dPersonnel>
          <dDevice nemsisName="Device Information">
            <dDevice.DeviceGroup nemsisName="Medical Device Serial Number">
              <dDevice.01 nemsisName="Medical Device Serial Number"/>
              <dDevice.02 nemsisName="Medical Device Name or ID"/>
              <dDevice.03 nemsisName="Medical Device Type"/>
              <dDevice.04 nemsisName="Medical Device Manufacturer"/>
              <dDevice.05 nemsisName="Medical Device Model Number"/>
              <dDevice.06 nemsisName="Medical Device Purchase Date"/>
            </dDevice.DeviceGroup>
          </dDevice>
          <dFacility nemsisName="Facility Information">
            <dFacilityGroup nemsisName="Type of Facility">
              <dFacility.01 nemsisName="Type of Facility"/>
              <dFacility.FacilityGroup nemsisName="Facility Name">
                <dFacility.02 nemsisName="Facility Name"/>
                <dFacility.03 nemsisName="Facility Location Code"/>
                <dFacility.04 nemsisName="Hospital Designations"/>
                <dFacility.05 nemsisName="Facility National Provider Identifier"/>
                <dFacility.06 nemsisName="Facility Room, Suite, or Apartment"/>
                <dFacility.07 nemsisName="Facility Street Address"/>
                <dFacility.08 nemsisName="Facility City"/>
                <dFacility.09 nemsisName="Facility State"/>
                <dFacility.10 nemsisName="Facility ZIP Code"/>
                <dFacility.11 nemsisName="Facility County"/>
                <dFacility.12 nemsisName="Facility Country"/>
                <dFacility.13 nemsisName="Facility GPS Location"/>
                <dFacility.14 nemsisName="Facility US National Grid Coordinates"/>
                <dFacility.15 nemsisName="Facility Phone Number"/>
              </dFacility.FacilityGroup>
            </dFacilityGroup>
          </dFacility>
          <dCustomResults nemsisName="Custom Data Element Results">
            <dCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
              <dCustomResults.01 nemsisName="Custom Data Element Result"/>
              <dCustomResults.02 nemsisName="Custom Element ID Referenced"/>
              <dCustomResults.03 nemsisName="CorrelationID of DemographicReport Element or Group"/>
            </dCustomResults.ResultsGroup>
          </dCustomResults>
        </DemographicReport>
      </DEMDataSet>
      <EMSDataSet xmlns="http://www.nemsis.org" nemsisName="EMS Agency Unique State ID">
        <Header nemsisName="EMS Agency Unique State ID">
          <DemographicGroup nemsisName="EMS Agency Unique State ID">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
          </DemographicGroup>
          <eCustomConfiguration nemsisName="">
            <eCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
              <eCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
              <eCustomConfiguration.02 nemsisName="Custom Definition"/>
              <eCustomConfiguration.03 nemsisName="Custom Data Type"/>
              <eCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
              <eCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
              <eCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
              <eCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
              <eCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
              <eCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
            </eCustomConfiguration.CustomGroup>
          </eCustomConfiguration>
          <PatientCareReport nemsisName="Container Tag to hold each instance of a patient care report (PCR)">
            <eRecord nemsisName="Patient Record Information">
              <eRecord.01 nemsisName="Patient Care Report Number"/>
              <eRecord.SoftwareApplicationGroup nemsisName="Software Creator">
                <eRecord.02 nemsisName="Software Creator"/>
                <eRecord.03 nemsisName="Software Name"/>
                <eRecord.04 nemsisName="Software Version"/>
              </eRecord.SoftwareApplicationGroup>
            </eRecord>
            <eResponse nemsisName="Unit Agency Information">
              <eResponse.AgencyGroup nemsisName="EMS Agency Number">
                <eResponse.01 nemsisName="EMS Agency Number"/>
                <eResponse.02 nemsisName="EMS Agency Name"/>
              </eResponse.AgencyGroup>
              <eResponse.03 nemsisName="Incident Number"/>
              <eResponse.04 nemsisName="EMS Response Number"/>
              <eResponse.ServiceGroup nemsisName="Type of Service Requested">
                <eResponse.05 nemsisName="Type of Service Requested"/>
                <eResponse.06 nemsisName="Standby Purpose"/>
              </eResponse.ServiceGroup>
              <eResponse.07 nemsisName="Unit Transport and Equipment Capability"/>
              <eResponse.08 nemsisName="Type of Dispatch Delay"/>
              <eResponse.09 nemsisName="Type of Response Delay"/>
              <eResponse.10 nemsisName="Type of Scene Delay"/>
              <eResponse.11 nemsisName="Type of Transport Delay"/>
              <eResponse.12 nemsisName="Type of Turn-Around Delay"/>
              <eResponse.13 nemsisName="EMS Vehicle (Unit) Number"/>
              <eResponse.14 nemsisName="EMS Unit Call Sign"/>
              <eResponse.16 nemsisName="Vehicle Dispatch Location"/>
              <eResponse.17 nemsisName="Vehicle Dispatch GPS Location"/>
              <eResponse.18 nemsisName="Vehicle Dispatch Location US National Grid Coordinates"/>
              <eResponse.19 nemsisName="Beginning Odometer Reading of Responding Vehicle"/>
              <eResponse.20 nemsisName="On-Scene Odometer Reading of Responding Vehicle"/>
              <eResponse.21 nemsisName="Patient Destination Odometer Reading of Responding Vehicle"/>
              <eResponse.22 nemsisName="Ending Odometer Reading of Responding Vehicle"/>
              <eResponse.23 nemsisName="Response Mode to Scene"/>
              <eResponse.24 nemsisName="Additional Response Mode Descriptors"/>
            </eResponse>
            <eDispatch nemsisName="Dispatch Information">
              <eDispatch.01 nemsisName="Dispatch Reason"/>
              <eDispatch.02 nemsisName="EMD Performed"/>
              <eDispatch.03 nemsisName="EMD Card Number"/>
              <eDispatch.04 nemsisName="Dispatch Center Name or ID"/>
              <eDispatch.05 nemsisName="Dispatch Priority (Patient Acuity)"/>
              <eDispatch.06 nemsisName="Unit Dispatched CAD Record ID"/>
            </eDispatch>
            <eCrew nemsisName="Crew Member Information">
              <eCrew.CrewGroup nemsisName="Crew Member ID">
                <eCrew.01 nemsisName="Crew Member ID"/>
                <eCrew.02 nemsisName="Crew Member Level"/>
                <eCrew.03 nemsisName="Crew Member Response Role"/>
              </eCrew.CrewGroup>
            </eCrew>
            <eTimes nemsisName="Call Event Times Information">
              <eTimes.01 nemsisName="PSAP Call Date/Time"/>
              <eTimes.02 nemsisName="Dispatch Notified Date/Time"/>
              <eTimes.03 nemsisName="Unit Notified by Dispatch Date/Time"/>
              <eTimes.04 nemsisName="Dispatch Acknowledged Date/Time"/>
              <eTimes.05 nemsisName="Unit En Route Date/Time"/>
              <eTimes.06 nemsisName="Unit Arrived on Scene Date/Time"/>
              <eTimes.07 nemsisName="Arrived at Patient Date/Time"/>
              <eTimes.08 nemsisName="Transfer of EMS Patient Care Date/Time"/>
              <eTimes.09 nemsisName="Unit Left Scene Date/Time"/>
              <eTimes.10 nemsisName="Arrival at Destination Landing Area Date/Time"/>
              <eTimes.11 nemsisName="Patient Arrived at Destination Date/Time"/>
              <eTimes.12 nemsisName="Destination Patient Transfer of Care Date/Time"/>
              <eTimes.13 nemsisName="Unit Back in Service Date/Time"/>
              <eTimes.14 nemsisName="Unit Canceled Date/Time"/>
              <eTimes.15 nemsisName="Unit Back at Home Location Date/Time"/>
              <eTimes.16 nemsisName="EMS Call Completed Date/Time"/>
              <eTimes.17 nemsisName="Unit Arrived at Staging Area Date/Time"/>
            </eTimes>
            <ePatient nemsisName="Patient Information">
              <ePatient.01 nemsisName="EMS Patient ID"/>
              <ePatient.PatientNameGroup nemsisName="Last Name">
                <ePatient.02 nemsisName="Last Name"/>
                <ePatient.03 nemsisName="First Name"/>
                <ePatient.04 nemsisName="Middle Initial/Name"/>
              </ePatient.PatientNameGroup>
              <ePatient.05 nemsisName="Patient's Home Address"/>
              <ePatient.06 nemsisName="Patient's Home City"/>
              <ePatient.07 nemsisName="Patient's Home County"/>
              <ePatient.08 nemsisName="Patient's Home State"/>
              <ePatient.09 nemsisName="Patient's Home ZIP Code"/>
              <ePatient.10 nemsisName="Patient's Country of Residence"/>
              <ePatient.11 nemsisName="Patient Home Census Tract"/>
              <ePatient.12 nemsisName="Social Security Number"/>
              <ePatient.13 nemsisName="ePatient.13"/>
              <ePatient.14 nemsisName="Race"/>
              <ePatient.AgeGroup nemsisName="Age">
                <ePatient.15 nemsisName="Age"/>
                <ePatient.16 nemsisName="Age Units"/>
              </ePatient.AgeGroup>
              <ePatient.17 nemsisName="Date of Birth"/>
              <ePatient.18 nemsisName="Patient's Phone Number"/>
              <ePatient.19 nemsisName="Patient's Email Address"/>
              <ePatient.20 nemsisName="State Issuing Driver's License"/>
              <ePatient.21 nemsisName="Driver's License Number"/>
              <ePatient.22 nemsisName="Alternate Home Residence"/>
              <ePatient.25 nemsisName="Sex"/>
            </ePatient>
            <ePayment nemsisName="Insurance/Payment Information">
              <ePayment.01 nemsisName="Primary Method of Payment"/>
              <ePayment.CertificateGroup nemsisName="Physician Certification Statement">
                <ePayment.02 nemsisName="Physician Certification Statement"/>
                <ePayment.03 nemsisName="Date Physician Certification Statement Signed"/>
                <ePayment.04 nemsisName="Reason for Physician Certification Statement"/>
                <ePayment.05 nemsisName="Healthcare Provider Type Signing Physician Certification Statement"/>
                <ePayment.06 nemsisName="Last Name of Individual Signing Physician Certification Statement"/>
                <ePayment.07 nemsisName="First Name of Individual Signing Physician Certification Statement"/>
              </ePayment.CertificateGroup>
              <ePayment.08 nemsisName="Patient Resides in Service Area"/>
              <ePayment.InsuranceGroup nemsisName="Insurance Company ID">
                <ePayment.09 nemsisName="Insurance Company ID"/>
                <ePayment.10 nemsisName="Insurance Company Name"/>
                <ePayment.11 nemsisName="Insurance Company Billing Priority"/>
                <ePayment.12 nemsisName="Insurance Company Address"/>
                <ePayment.13 nemsisName="Insurance Company City"/>
                <ePayment.14 nemsisName="Insurance Company State"/>
                <ePayment.15 nemsisName="Insurance Company ZIP Code"/>
                <ePayment.16 nemsisName="Insurance Company Country"/>
                <ePayment.17 nemsisName="Insurance Group ID"/>
                <ePayment.18 nemsisName="Insurance Policy ID Number"/>
                <ePayment.19 nemsisName="Last Name of the Insured"/>
                <ePayment.20 nemsisName="First Name of the Insured"/>
                <ePayment.21 nemsisName="Middle Initial/Name of the Insured"/>
                <ePayment.22 nemsisName="Relationship to the Insured"/>
                <ePayment.58 nemsisName="Insurance Group Name"/>
                <ePayment.59 nemsisName="Insurance Company Phone Number"/>
                <ePayment.60 nemsisName="Date of Birth of the Insured"/>
              </ePayment.InsuranceGroup>
              <ePayment.ClosestRelativeGroup nemsisName="Closest Relative/Guardian Last Name">
                <ePayment.23 nemsisName="Closest Relative/Guardian Last Name"/>
                <ePayment.24 nemsisName="Closest Relative/ Guardian First Name"/>
                <ePayment.25 nemsisName="Closest Relative/ Guardian Middle Initial/Name"/>
                <ePayment.26 nemsisName="Closest Relative/ Guardian Street Address"/>
                <ePayment.27 nemsisName="Closest Relative/ Guardian City"/>
                <ePayment.28 nemsisName="Closest Relative/ Guardian State"/>
                <ePayment.29 nemsisName="Closest Relative/ Guardian ZIP Code"/>
                <ePayment.30 nemsisName="Closest Relative/ Guardian Country"/>
                <ePayment.31 nemsisName="Closest Relative/ Guardian Phone Number"/>
                <ePayment.32 nemsisName="Closest Relative/ Guardian Relationship"/>
              </ePayment.ClosestRelativeGroup>
              <ePayment.EmployerGroup nemsisName="Patient's Employer">
                <ePayment.33 nemsisName="Patient's Employer"/>
                <ePayment.34 nemsisName="Patient's Employer's Address"/>
                <ePayment.35 nemsisName="Patient's Employer's City"/>
                <ePayment.36 nemsisName="Patient's Employer's State"/>
                <ePayment.37 nemsisName="Patient's Employer's ZIP Code"/>
                <ePayment.38 nemsisName="Patient's Employer's Country"/>
                <ePayment.39 nemsisName="Patient's Employer's Primary Phone Number"/>
              </ePayment.EmployerGroup>
              <ePayment.40 nemsisName="Response Urgency"/>
              <ePayment.41 nemsisName="Patient Transport Assessment"/>
              <ePayment.42 nemsisName="Specialty Care Transport Care Provider"/>
              <ePayment.44 nemsisName="Ambulance Transport Reason Code"/>
              <ePayment.45 nemsisName="Round Trip Purpose Description"/>
              <ePayment.46 nemsisName="Stretcher Purpose Description"/>
              <ePayment.47 nemsisName="Ambulance Conditions Indicator"/>
              <ePayment.48 nemsisName="Mileage to Closest Hospital Facility"/>
              <ePayment.49 nemsisName="ALS Assessment Performed and Warranted"/>
              <ePayment.50 nemsisName="CMS Service Level"/>
              <ePayment.51 nemsisName="EMS Condition Code"/>
              <ePayment.52 nemsisName="CMS Transportation Indicator"/>
              <ePayment.53 nemsisName="Transport Authorization Code"/>
              <ePayment.54 nemsisName="Prior Authorization Code Payer"/>
              <ePayment.SupplyItemGroup nemsisName="Supply Item Used Name">
                <ePayment.55 nemsisName="Supply Item Used Name"/>
                <ePayment.56 nemsisName="Number of Supply Item(s) Used"/>
              </ePayment.SupplyItemGroup>
              <ePayment.57 nemsisName="Payer Type"/>
            </ePayment>
            <eScene nemsisName="Incident Scene Information">
              <eScene.01 nemsisName="First EMS Unit on Scene"/>
              <eScene.ResponderGroup nemsisName="Other EMS or Public Safety Agencies at Scene">
                <eScene.02 nemsisName="Other EMS or Public Safety Agencies at Scene"/>
                <eScene.03 nemsisName="Other EMS or Public Safety Agency ID Number"/>
                <eScene.04 nemsisName="Type of Other Service at Scene"/>
                <eScene.24 nemsisName="First Other EMS or Public Safety Agency at Scene to Provide Patient Care"/>
              </eScene.ResponderGroup>
              <eScene.05 nemsisName="Date/Time Initial Responder Arrived on Scene"/>
              <eScene.06 nemsisName="Number of Patients at Scene"/>
              <eScene.07 nemsisName="Mass Casualty Incident"/>
              <eScene.08 nemsisName="Triage Classification for MCI Patient"/>
              <eScene.09 nemsisName="Incident Location Type"/>
              <eScene.10 nemsisName="Incident Facility Code"/>
              <eScene.11 nemsisName="Scene GPS Location"/>
              <eScene.12 nemsisName="Scene US National Grid Coordinates"/>
              <eScene.13 nemsisName="Incident Facility or Location Name"/>
              <eScene.14 nemsisName="Mile Post or Major Roadway"/>
              <eScene.15 nemsisName="Incident Street Address"/>
              <eScene.16 nemsisName="Incident Apartment, Suite, or Room"/>
              <eScene.17 nemsisName="Incident City"/>
              <eScene.18 nemsisName="Incident State"/>
              <eScene.19 nemsisName="Incident ZIP Code"/>
              <eScene.20 nemsisName="Scene Cross Street or Directions"/>
              <eScene.21 nemsisName="Incident County"/>
              <eScene.22 nemsisName="Incident Country"/>
              <eScene.23 nemsisName="Incident Census Tract"/>
            </eScene>
            <eSituation nemsisName="Situation Information">
              <eSituation.01 nemsisName="Date/Time of Symptom Onset"/>
              <eSituation.02 nemsisName="Possible Injury"/>
              <eSituation.PatientComplaintGroup nemsisName="Complaint Type">
                <eSituation.03 nemsisName="Complaint Type"/>
                <eSituation.04 nemsisName="Complaint"/>
                <eSituation.05 nemsisName="Duration of Complaint"/>
                <eSituation.06 nemsisName="Time Units of Duration of Complaint"/>
              </eSituation.PatientComplaintGroup>
              <eSituation.07 nemsisName="Chief Complaint Anatomic Location"/>
              <eSituation.08 nemsisName="Chief Complaint Organ System"/>
              <eSituation.09 nemsisName="Primary Symptom"/>
              <eSituation.10 nemsisName="Other Associated Symptoms"/>
              <eSituation.11 nemsisName="Provider's Primary Impression"/>
              <eSituation.12 nemsisName="Provider's Secondary Impressions"/>
              <eSituation.13 nemsisName="Initial Patient Acuity"/>
              <eSituation.WorkRelatedGroup nemsisName="Work-Related Illness/Injury">
                <eSituation.14 nemsisName="Work-Related Illness/Injury"/>
                <eSituation.15 nemsisName="Patient's Occupational Industry"/>
                <eSituation.16 nemsisName="Patient's Occupation"/>
              </eSituation.WorkRelatedGroup>
              <eSituation.17 nemsisName="Patient Activity"/>
              <eSituation.18 nemsisName="Date/Time Last Known Well"/>
              <eSituation.19 nemsisName="Justification for Transfer or Encounter"/>
              <eSituation.20 nemsisName="Reason for Interfacility Transfer/Medical Transport"/>
            </eSituation>
            <eInjury nemsisName="Injury Information">
              <eInjury.01 nemsisName="Cause of Injury"/>
              <eInjury.02 nemsisName="Mechanism of Injury"/>
              <eInjury.03 nemsisName="Trauma Triage Criteria (High Risk for Serious Injury)"/>
              <eInjury.04 nemsisName="Trauma Triage Criteria (Moderate Risk for Serious Injury)"/>
              <eInjury.05 nemsisName="Main Area of the Vehicle Impacted by the Collision"/>
              <eInjury.06 nemsisName="Location of Patient in Vehicle"/>
              <eInjury.07 nemsisName="Use of Occupant Safety Equipment"/>
              <eInjury.08 nemsisName="Airbag Deployment"/>
              <eInjury.09 nemsisName="Height of Fall (feet)"/>
              <eInjury.10 nemsisName="OSHA Personal Protective Equipment Used"/>
              <eInjury.CollisionGroup nemsisName="ACN System/Company Providing ACN Data">
                <eInjury.11 nemsisName="ACN System/Company Providing ACN Data"/>
                <eInjury.12 nemsisName="ACN Incident ID"/>
                <eInjury.13 nemsisName="ACN Call Back Phone Number"/>
                <eInjury.14 nemsisName="Date/Time of ACN Incident"/>
                <eInjury.15 nemsisName="ACN Incident Location"/>
                <eInjury.16 nemsisName="ACN Incident Vehicle Body Type"/>
                <eInjury.17 nemsisName="ACN Incident Vehicle Manufacturer"/>
                <eInjury.18 nemsisName="ACN Incident Vehicle Make"/>
                <eInjury.19 nemsisName="ACN Incident Vehicle Model"/>
                <eInjury.20 nemsisName="ACN Incident Vehicle Model Year"/>
                <eInjury.21 nemsisName="ACN Incident Multiple Impacts"/>
                <eInjury.22 nemsisName="ACN Incident Delta Velocity"/>
                <eInjury.23 nemsisName="ACN High Probability of Injury"/>
                <eInjury.24 nemsisName="ACN Incident PDOF"/>
                <eInjury.25 nemsisName="ACN Incident Rollover"/>
                <eInjury.SeatGroup nemsisName="ACN Vehicle Seat Location">
                  <eInjury.26 nemsisName="ACN Vehicle Seat Location"/>
                  <eInjury.27 nemsisName="Seat Occupied"/>
                  <eInjury.28 nemsisName="ACN Incident Seatbelt Use"/>
                  <eInjury.29 nemsisName="ACN Incident Airbag Deployed"/>
                </eInjury.SeatGroup>
              </eInjury.CollisionGroup>
            </eInjury>
            <eArrest nemsisName="Cardiac Arrest Information">
              <eArrest.01 nemsisName="Cardiac Arrest"/>
              <eArrest.02 nemsisName="Cardiac Arrest Etiology"/>
              <eArrest.03 nemsisName="Resuscitation Attempted By EMS"/>
              <eArrest.04 nemsisName="Arrest Witnessed By"/>
              <eArrest.07 nemsisName="AED Use Prior to EMS Arrival"/>
              <eArrest.09 nemsisName="Type of CPR Provided"/>
              <eArrest.10 nemsisName="Therapeutic Hypothermia by EMS"/>
              <eArrest.11 nemsisName="First Monitored Arrest Rhythm of the Patient"/>
              <eArrest.12 nemsisName="Any Return of Spontaneous Circulation"/>
              <eArrest.13 nemsisName="Neurological Outcome at Hospital Discharge"/>
              <eArrest.14 nemsisName="Date/Time of Cardiac Arrest"/>
              <eArrest.15 nemsisName="Date/Time Resuscitation Discontinued"/>
              <eArrest.16 nemsisName="Reason CPR/Resuscitation Discontinued"/>
              <eArrest.17 nemsisName="Cardiac Rhythm on Arrival at Destination"/>
              <eArrest.18 nemsisName="End of EMS Cardiac Arrest Event"/>
              <eArrest.19 nemsisName="Date/Time of Initial CPR"/>
              <eArrest.20 nemsisName="Who First Initiated CPR"/>
              <eArrest.21 nemsisName="Who First Applied the AED"/>
              <eArrest.22 nemsisName="Who First Defibrillated the Patient"/>
            </eArrest>
            <eHistory nemsisName="Patient History Information">
              <eHistory.01 nemsisName="Barriers to Patient Care"/>
              <eHistory.PractitionerGroup nemsisName="Last Name of Patient's Practitioner">
                <eHistory.02 nemsisName="Last Name of Patient's Practitioner"/>
                <eHistory.03 nemsisName="First Name of Patient's Practitioner"/>
                <eHistory.04 nemsisName="Middle Name/Initial of Patient's Practitioner"/>
              </eHistory.PractitionerGroup>
              <eHistory.05 nemsisName="Advance Directives"/>
              <eHistory.06 nemsisName="Medication Allergies"/>
              <eHistory.07 nemsisName="Environmental/Food Allergies"/>
              <eHistory.08 nemsisName="Medical/Surgical History"/>
              <eHistory.09 nemsisName="Medical History Obtained From"/>
              <eHistory.ImmunizationsGroup nemsisName="The Patient's Type of Immunization">
                <eHistory.10 nemsisName="The Patient's Type of Immunization"/>
                <eHistory.11 nemsisName="Immunization Year"/>
              </eHistory.ImmunizationsGroup>
              <eHistory.CurrentMedsGroup nemsisName="Current Medications">
                <eHistory.12 nemsisName="Current Medications"/>
                <eHistory.13 nemsisName="Current Medication Dose"/>
                <eHistory.14 nemsisName="Current Medication Dosage Unit"/>
                <eHistory.15 nemsisName="Current Medication Administration Route"/>
                <eHistory.20 nemsisName="Current Medication Frequency"/>
              </eHistory.CurrentMedsGroup>
              <eHistory.16 nemsisName="Presence of Emergency Information Form"/>
              <eHistory.17 nemsisName="Alcohol/Drug Use Indicators"/>
              <eHistory.18 nemsisName="Pregnancy"/>
              <eHistory.19 nemsisName="Last Oral Intake"/>
            </eHistory>
            <eNarrative nemsisName="Call Event Narrative">
              <eNarrative.01 nemsisName="Patient Care Report Narrative"/>
            </eNarrative>
            <eVitals nemsisName="Patient Vital Sign Information">
              <eVitals.VitalGroup nemsisName="Date/Time Vital Signs Taken">
                <eVitals.01 nemsisName="Date/Time Vital Signs Taken"/>
                <eVitals.02 nemsisName="Obtained Prior to this Unit's EMS Care"/>
                <eVitals.CardiacRhythmGroup nemsisName="Cardiac Rhythm / Electrocardiography (ECG)">
                  <eVitals.03 nemsisName="Cardiac Rhythm / Electrocardiography (ECG)"/>
                  <eVitals.04 nemsisName="ECG Type"/>
                  <eVitals.05 nemsisName="Method of ECG Interpretation"/>
                </eVitals.CardiacRhythmGroup>
                <eVitals.BloodPressureGroup nemsisName="SBP (Systolic Blood Pressure)">
                  <eVitals.06 nemsisName="SBP (Systolic Blood Pressure)"/>
                  <eVitals.07 nemsisName="DBP (Diastolic Blood Pressure)"/>
                  <eVitals.08 nemsisName="Method of Blood Pressure Measurement"/>
                  <eVitals.09 nemsisName="Mean Arterial Pressure"/>
                </eVitals.BloodPressureGroup>
                <eVitals.HeartRateGroup nemsisName="Heart Rate">
                  <eVitals.10 nemsisName="Heart Rate"/>
                  <eVitals.11 nemsisName="Method of Heart Rate Measurement"/>
                </eVitals.HeartRateGroup>
                <eVitals.12 nemsisName="Pulse Oximetry"/>
                <eVitals.13 nemsisName="Pulse Rhythm"/>
                <eVitals.14 nemsisName="Respiratory Rate"/>
                <eVitals.15 nemsisName="Respiratory Effort"/>
                <eVitals.16 nemsisName="End Tidal Carbon Dioxide (ETCO2)"/>
                <eVitals.17 nemsisName="Carbon Monoxide (CO)"/>
                <eVitals.18 nemsisName="Blood Glucose Level"/>
                <eVitals.GlasgowScoreGroup nemsisName="Glasgow Coma Score-Eye">
                  <eVitals.19 nemsisName="Glasgow Coma Score-Eye"/>
                  <eVitals.20 nemsisName="Glasgow Coma Score-Verbal"/>
                  <eVitals.21 nemsisName="Glasgow Coma Score-Motor"/>
                  <eVitals.22 nemsisName="Glasgow Coma Score-Qualifier"/>
                  <eVitals.23 nemsisName="Total Glasgow Coma Score"/>
                </eVitals.GlasgowScoreGroup>
                <eVitals.TemperatureGroup nemsisName="Temperature">
                  <eVitals.24 nemsisName="Temperature"/>
                  <eVitals.25 nemsisName="Temperature Method"/>
                </eVitals.TemperatureGroup>
                <eVitals.26 nemsisName="Level of Responsiveness (AVPU)"/>
                <eVitals.PainScaleGroup nemsisName="Pain Scale Score">
                  <eVitals.27 nemsisName="Pain Scale Score"/>
                  <eVitals.28 nemsisName="Pain Scale Type"/>
                </eVitals.PainScaleGroup>
                <eVitals.StrokeScaleGroup nemsisName="Stroke Scale Score">
                  <eVitals.29 nemsisName="Stroke Scale Score"/>
                  <eVitals.30 nemsisName="Stroke Scale Type"/>
                </eVitals.StrokeScaleGroup>
                <eVitals.31 nemsisName="Reperfusion Checklist"/>
                <eVitals.32 nemsisName="APGAR"/>
                <eVitals.33 nemsisName="Revised Trauma Score"/>
              </eVitals.VitalGroup>
            </eVitals>
            <eLabs nemsisName="Lab Results Information">
              <eLabs.LabGroup nemsisName="Date/Time of Laboratory or Imaging Result">
                <eLabs.01 nemsisName="Date/Time of Laboratory or Imaging Result"/>
                <eLabs.02 nemsisName="Study/Result Prior to this Unit's EMS Care"/>
                <eLabs.LabResultGroup nemsisName="Laboratory Result Type">
                  <eLabs.03 nemsisName="Laboratory Result Type"/>
                  <eLabs.04 nemsisName="Laboratory Result"/>
                </eLabs.LabResultGroup>
                <eLabs.LabImageGroup nemsisName="Imaging Study Type">
                  <eLabs.05 nemsisName="Imaging Study Type"/>
                  <eLabs.06 nemsisName="Imaging Study Results"/>
                  <eLabs.WaveformGraphicGroup nemsisName="Imaging Study File or Waveform Graphic Type">
                    <eLabs.07 nemsisName="Imaging Study File or Waveform Graphic Type"/>
                    <eLabs.08 nemsisName="Imaging Study File or Waveform Graphic"/>
                  </eLabs.WaveformGraphicGroup>
                </eLabs.LabImageGroup>
              </eLabs.LabGroup>
            </eLabs>
            <eExam nemsisName="Patient Exam Information">
              <eExam.01 nemsisName="Estimated Body Weight in Kilograms"/>
              <eExam.02 nemsisName="Length Based Tape Measure"/>
              <eExam.AssessmentGroup nemsisName="Date/Time of Assessment">
                <eExam.03 nemsisName="Date/Time of Assessment"/>
                <eExam.04 nemsisName="Skin Assessment"/>
                <eExam.05 nemsisName="Head Assessment"/>
                <eExam.06 nemsisName="Face Assessment"/>
                <eExam.07 nemsisName="Neck Assessment"/>
                <eExam.09 nemsisName="Heart Assessment"/>
                <eExam.AbdomenGroup nemsisName="Abdominal Assessment Finding Location">
                  <eExam.10 nemsisName="Abdominal Assessment Finding Location"/>
                  <eExam.11 nemsisName="Abdomen Assessment"/>
                </eExam.AbdomenGroup>
                <eExam.12 nemsisName="Pelvis/Genitourinary Assessment"/>
                <eExam.SpineGroup nemsisName="Back and Spine Assessment Finding Location">
                  <eExam.13 nemsisName="Back and Spine Assessment Finding Location"/>
                  <eExam.14 nemsisName="Back and Spine Assessment"/>
                </eExam.SpineGroup>
                <eExam.ExtremityGroup nemsisName="Extremity Assessment Finding Location">
                  <eExam.15 nemsisName="Extremity Assessment Finding Location"/>
                  <eExam.16 nemsisName="Extremities Assessment"/>
                </eExam.ExtremityGroup>
                <eExam.EyeGroup nemsisName="Eye Assessment Finding Location">
                  <eExam.17 nemsisName="Eye Assessment Finding Location"/>
                  <eExam.18 nemsisName="Eye Assessment"/>
                </eExam.EyeGroup>
                <eExam.LungGroup nemsisName="Lung Assessment Finding Location">
                  <eExam.22 nemsisName="Lung Assessment Finding Location"/>
                  <eExam.23 nemsisName="Lung Assessment"/>
                </eExam.LungGroup>
                <eExam.ChestGroup nemsisName="Chest Assessment Finding Location">
                  <eExam.24 nemsisName="Chest Assessment Finding Location"/>
                  <eExam.25 nemsisName="Chest Assessment"/>
                </eExam.ChestGroup>
                <eExam.19 nemsisName="Mental Status Assessment"/>
                <eExam.20 nemsisName="Neurological Assessment"/>
              </eExam.AssessmentGroup>
              <eExam.21 nemsisName="Stroke/CVA Symptoms Resolved"/>
            </eExam>
            <eProtocols nemsisName="Medical Protocols Information">
              <eProtocols.ProtocolGroup nemsisName="Protocols Used">
                <eProtocols.01 nemsisName="Protocols Used"/>
                <eProtocols.02 nemsisName="Protocol Age Category"/>
              </eProtocols.ProtocolGroup>
            </eProtocols>
            <eMedications nemsisName="Intervention Medications Information">
              <eMedications.MedicationGroup nemsisName="Date/Time Medication Administered">
                <eMedications.01 nemsisName="Date/Time Medication Administered"/>
                <eMedications.02 nemsisName="Medication Administered Prior to this Unit's EMS Care"/>
                <eMedications.03 nemsisName="Medication Administered"/>
                <eMedications.04 nemsisName="Medication Administered Route"/>
                <eMedications.DosageGroup nemsisName="Medication Dosage">
                  <eMedications.05 nemsisName="Medication Dosage"/>
                  <eMedications.06 nemsisName="Medication Dosage Units"/>
                </eMedications.DosageGroup>
                <eMedications.07 nemsisName="Response to Medication"/>
                <eMedications.08 nemsisName="Medication Complication"/>
                <eMedications.09 nemsisName="Medication Crew (Healthcare Professionals) ID"/>
                <eMedications.10 nemsisName="Role/Type of Person Administering Medication"/>
                <eMedications.11 nemsisName="Medication Authorization"/>
                <eMedications.12 nemsisName="Medication Authorizing Physician"/>
              </eMedications.MedicationGroup>
            </eMedications>
            <eProcedures nemsisName="Intervention Procedures Information">
              <eProcedures.ProcedureGroup nemsisName="Date/Time Procedure Performed">
                <eProcedures.01 nemsisName="Date/Time Procedure Performed"/>
                <eProcedures.02 nemsisName="Procedure Performed Prior to this Unit's EMS Care"/>
                <eProcedures.03 nemsisName="Procedure"/>
                <eProcedures.04 nemsisName="Size of Procedure Equipment"/>
                <eProcedures.05 nemsisName="Number of Procedure Attempts"/>
                <eProcedures.06 nemsisName="Procedure Successful"/>
                <eProcedures.07 nemsisName="Procedure Complication"/>
                <eProcedures.08 nemsisName="Response to Procedure"/>
                <eProcedures.09 nemsisName="Procedure Crew Members ID"/>
                <eProcedures.10 nemsisName="Role/Type of Person Performing the Procedure"/>
                <eProcedures.11 nemsisName="Procedure Authorization"/>
                <eProcedures.12 nemsisName="Procedure Authorizing Physician"/>
                <eProcedures.13 nemsisName="Vascular Access Location"/>
              </eProcedures.ProcedureGroup>
            </eProcedures>
            <eAirway nemsisName="Airway Device Information">
              <eAirway.AirwayGroup nemsisName="Indications for Invasive Airway">
                <eAirway.01 nemsisName="Indications for Invasive Airway"/>
                <eAirway.ConfirmationGroup nemsisName="Date/Time Airway Device Placement Confirmation">
                  <eAirway.02 nemsisName="Date/Time Airway Device Placement Confirmation"/>
                  <eAirway.03 nemsisName="Airway Device Being Confirmed"/>
                  <eAirway.04 nemsisName="Airway Device Placement Confirmed Method"/>
                  <eAirway.05 nemsisName="Tube Depth"/>
                  <eAirway.06 nemsisName="Type of Individual Confirming Airway Device Placement"/>
                  <eAirway.07 nemsisName="Crew Member ID"/>
                </eAirway.ConfirmationGroup>
                <eAirway.08 nemsisName="Airway Complications Encountered"/>
                <eAirway.09 nemsisName="Suspected Reasons for Failed Airway Management"/>
                <eAirway.10 nemsisName="Date/Time Decision to Manage the Patient with an Invasive Airway"/>
                <eAirway.11 nemsisName="Date/Time Invasive Airway Placement Attempts Abandoned"/>
              </eAirway.AirwayGroup>
            </eAirway>
            <eDevice nemsisName="Medical Device Information">
              <eDevice.DeviceGroup nemsisName="Medical Device Serial Number">
                <eDevice.01 nemsisName="Medical Device Serial Number"/>
                <eDevice.02 nemsisName="Date/Time of Event (per Medical Device)"/>
                <eDevice.03 nemsisName="Medical Device Event Type"/>
                <eDevice.WaveformGroup nemsisName="Medical Device Waveform Graphic Type">
                  <eDevice.04 nemsisName="Medical Device Waveform Graphic Type"/>
                  <eDevice.05 nemsisName="Medical Device Waveform Graphic"/>
                  <eDevice.06 nemsisName="Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)"/>
                </eDevice.WaveformGroup>
                <eDevice.07 nemsisName="Medical Device ECG Lead"/>
                <eDevice.08 nemsisName="Medical Device ECG Interpretation"/>
                <eDevice.ShockGroup nemsisName="Type of Shock">
                  <eDevice.09 nemsisName="Type of Shock"/>
                  <eDevice.10 nemsisName="Shock or Pacing Energy"/>
                  <eDevice.11 nemsisName="Total Number of Shocks Delivered"/>
                  <eDevice.12 nemsisName="Pacing Rate"/>
                </eDevice.ShockGroup>
              </eDevice.DeviceGroup>
            </eDevice>
            <eDisposition nemsisName="Patient Disposition Information">
              <eDisposition.DestinationGroup nemsisName="Destination/Transferred To, Name">
                <eDisposition.01 nemsisName="Destination/Transferred To, Name"/>
                <eDisposition.02 nemsisName="Destination/Transferred To, Code"/>
                <eDisposition.03 nemsisName="Destination Street Address"/>
                <eDisposition.04 nemsisName="Destination City"/>
                <eDisposition.05 nemsisName="Destination State"/>
                <eDisposition.06 nemsisName="Destination County"/>
                <eDisposition.07 nemsisName="Destination ZIP Code"/>
                <eDisposition.08 nemsisName="Destination Country"/>
                <eDisposition.09 nemsisName="Destination GPS Location"/>
                <eDisposition.10 nemsisName="Destination Location US National Grid Coordinates "/>
              </eDisposition.DestinationGroup>
              <eDisposition.11 nemsisName="Number of Patients Transported in this EMS Unit"/>
              <eDisposition.IncidentDispositionGroup nemsisName="Unit Disposition">
                <eDisposition.27 nemsisName="Unit Disposition"/>
                <eDisposition.28 nemsisName="Patient Evaluation/Care"/>
                <eDisposition.29 nemsisName="Crew Disposition"/>
                <eDisposition.30 nemsisName="Transport Disposition"/>
                <eDisposition.31 nemsisName="Reason for Refusal/Release"/>
              </eDisposition.IncidentDispositionGroup>
              <eDisposition.13 nemsisName="How Patient Was Moved to Ambulance"/>
              <eDisposition.14 nemsisName="Position of Patient During Transport"/>
              <eDisposition.15 nemsisName="How Patient Was Moved From Ambulance"/>
              <eDisposition.16 nemsisName="EMS Transport Method"/>
              <eDisposition.17 nemsisName="Transport Mode from Scene"/>
              <eDisposition.18 nemsisName="Additional Transport Mode Descriptors"/>
              <eDisposition.19 nemsisName="Final Patient Acuity"/>
              <eDisposition.20 nemsisName="Reason for Choosing Destination"/>
              <eDisposition.21 nemsisName="Type of Destination"/>
              <eDisposition.22 nemsisName="Hospital In-Patient Destination"/>
              <eDisposition.23 nemsisName="Hospital Capability"/>
              <eDisposition.HospitalTeamActivationGroup nemsisName="Destination Team Pre-Arrival Alert or Activation">
                <eDisposition.24 nemsisName="Destination Team Pre-Arrival Alert or Activation"/>
                <eDisposition.25 nemsisName="Date/Time of Destination Prearrival Alert or Activation"/>
              </eDisposition.HospitalTeamActivationGroup>
              <eDisposition.26 nemsisName="Disposition Instructions Provided"/>
              <eDisposition.32 nemsisName="Level of Care Provided per Protocol"/>
            </eDisposition>
            <eOutcome nemsisName="Patient Outcome Information">
              <eOutcome.01 nemsisName="Emergency Department Disposition"/>
              <eOutcome.02 nemsisName="Hospital Disposition"/>
              <eOutcome.ExternalDataGroup nemsisName="External Report ID/Number Type">
                <eOutcome.03 nemsisName="External Report ID/Number Type"/>
                <eOutcome.04 nemsisName="External Report ID/Number"/>
                <eOutcome.05 nemsisName="Other Report Registry Type"/>
              </eOutcome.ExternalDataGroup>
              <eOutcome.EmergencyDepartmentProceduresGroup nemsisName="Emergency Department Procedures">
                <eOutcome.09 nemsisName="Emergency Department Procedures"/>
                <eOutcome.19 nemsisName="Date/Time Emergency Department Procedure Performed"/>
              </eOutcome.EmergencyDepartmentProceduresGroup>
              <eOutcome.10 nemsisName="Emergency Department Diagnosis"/>
              <eOutcome.11 nemsisName="Date/Time of Hospital Admission"/>
              <eOutcome.HospitalProceduresGroup nemsisName="Hospital Procedures">
                <eOutcome.12 nemsisName="Hospital Procedures"/>
                <eOutcome.20 nemsisName="Date/Time Hospital Procedure Performed"/>
              </eOutcome.HospitalProceduresGroup>
              <eOutcome.13 nemsisName="Hospital Diagnosis"/>
              <eOutcome.16 nemsisName="Date/Time of Hospital Discharge"/>
              <eOutcome.17 nemsisName="Outcome at Hospital Discharge"/>
              <eOutcome.18 nemsisName="Date/Time of Emergency Department Admission"/>
            </eOutcome>
            <eCustomResults nemsisName="Custom Data Elements Results">
              <eCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
                <eCustomResults.01 nemsisName="Custom Data Element Result"/>
                <eCustomResults.02 nemsisName="Custom Element ID Referenced"/>
                <eCustomResults.03 nemsisName="CorrelationID of PatientCareReport Element or Group"/>
              </eCustomResults.ResultsGroup>
            </eCustomResults>
            <eOther nemsisName="Other Miscellaneous Information">
              <eOther.01 nemsisName="Review Requested"/>
              <eOther.02 nemsisName="Potential System of Care/Specialty/Registry Patient"/>
              <eOther.EMSCrewMemberGroup nemsisName="Personal Protective Equipment Used">
                <eOther.03 nemsisName="Personal Protective Equipment Used"/>
                <eOther.04 nemsisName="EMS Professional (Crew Member) ID"/>
                <eOther.05 nemsisName="Suspected EMS Work Related Exposure, Injury, or Death"/>
                <eOther.06 nemsisName="The Type of Work-Related Injury, Death or Suspected Exposure"/>
              </eOther.EMSCrewMemberGroup>
              <eOther.07 nemsisName="Natural, Suspected, Intentional, or Unintentional Disaster"/>
              <eOther.08 nemsisName="Crew Member Completing this Report"/>
              <eOther.FileGroup nemsisName="External Electronic Document Type">
                <eOther.09 nemsisName="External Electronic Document Type"/>
                <eOther.10 nemsisName="File Attachment Type"/>
                <eOther.11 nemsisName="File Attachment Image"/>
                <eOther.22 nemsisName="File Attachment Name"/>
              </eOther.FileGroup>
              <eOther.SignatureGroup nemsisName="Type of Person Signing">
                <eOther.12 nemsisName="Type of Person Signing"/>
                <eOther.13 nemsisName="Signature Reason"/>
                <eOther.14 nemsisName="Type Of Patient Representative"/>
                <eOther.15 nemsisName="Signature Status"/>
                <eOther.16 nemsisName="Signature File Name"/>
                <eOther.17 nemsisName="Signature File Type"/>
                <eOther.18 nemsisName="Signature Graphic"/>
                <eOther.19 nemsisName="Date/Time of Signature"/>
                <eOther.20 nemsisName="Signature Last Name"/>
                <eOther.21 nemsisName="Signature First Name"/>
              </eOther.SignatureGroup>
            </eOther>
          </PatientCareReport>
        </Header>
      </EMSDataSet>
    </nemsisElements>
    <nemsisElements version="3.4.0">
      <DEMDataSet xmlns="http://www.nemsis.org" nemsisName="Root Tag For Demographic DataSet">
        <dState nemsisName="State Required Demographic Data Elements">
          <dState.01 nemsisName="State Required Element"/>
        </dState>
        <dCustomConfiguration nemsisName="Contains information for demographic custom elements.">
          <dCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
            <dCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
            <dCustomConfiguration.02 nemsisName="Custom Definition"/>
            <dCustomConfiguration.03 nemsisName="Custom Data Type"/>
            <dCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
            <dCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
            <dCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
            <dCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
            <dCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
            <dCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
          </dCustomConfiguration.CustomGroup>
        </dCustomConfiguration>
        <DemographicReport nemsisName="Container Tag to hold each instance of a demographic record">
          <dAgency nemsisName="Agency Information">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.03 nemsisName="EMS Agency Name"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
            <dAgency.AgencyServiceGroup nemsisName="EMS Agency Service Area States">
              <dAgency.05 nemsisName="EMS Agency Service Area States"/>
              <dAgency.06 nemsisName="EMS Agency Service Area County(ies)"/>
              <dAgency.07 nemsisName="EMS Agency Census Tracts"/>
              <dAgency.08 nemsisName="EMS Agency Service Area ZIP Codes"/>
            </dAgency.AgencyServiceGroup>
            <dAgency.09 nemsisName="Primary Type of Service"/>
            <dAgency.10 nemsisName="Other Types of Service"/>
            <dAgency.11 nemsisName="Level of Service"/>
            <dAgency.12 nemsisName="Organization Status"/>
            <dAgency.13 nemsisName="Organizational Type"/>
            <dAgency.14 nemsisName="EMS Agency Organizational Tax Status"/>
            <dAgency.AgencyYearGroup nemsisName="Statistical Calendar Year">
              <dAgency.15 nemsisName="Statistical Calendar Year"/>
              <dAgency.16 nemsisName="Total Primary Service Area Size"/>
              <dAgency.17 nemsisName="Total Service Area Population"/>
              <dAgency.18 nemsisName="911 EMS Call Center Volume per Year"/>
              <dAgency.19 nemsisName="EMS Dispatch Volume per Year"/>
              <dAgency.20 nemsisName="EMS Patient Transport Volume per Year"/>
              <dAgency.21 nemsisName="EMS Patient Contact Volume per Year"/>
              <dAgency.22 nemsisName="EMS Billable Calls per Year"/>
            </dAgency.AgencyYearGroup>
            <dAgency.23 nemsisName="EMS Agency Time Zone"/>
            <dAgency.24 nemsisName="EMS Agency Daylight Savings Time Use"/>
            <dAgency.25 nemsisName="National Provider Identifier"/>
            <dAgency.26 nemsisName="Fire Department ID Number"/>
          </dAgency>
          <dContact nemsisName="Contact Information">
            <dContact.ContactInfoGroup nemsisName="Agency Contact Type">
              <dContact.01 nemsisName="Agency Contact Type"/>
              <dContact.02 nemsisName="Agency Contact Last Name"/>
              <dContact.03 nemsisName="Agency Contact First Name"/>
              <dContact.04 nemsisName="Agency Contact Middle Name/Initial"/>
              <dContact.05 nemsisName="Agency Contact Address"/>
              <dContact.06 nemsisName="Agency Contact City"/>
              <dContact.07 nemsisName="Agency Contact State"/>
              <dContact.08 nemsisName="Agency Contact ZIP Code"/>
              <dContact.09 nemsisName="Agency Contact Country"/>
              <dContact.10 nemsisName="Agency Contact Phone Number"/>
              <dContact.11 nemsisName="Agency Contact Email Address"/>
              <dContact.12 nemsisName="EMS Agency Contact Web Address"/>
              <dContact.EMSMedicalDirectorGroup nemsisName="Agency Medical Director Degree">
                <dContact.13 nemsisName="Agency Medical Director Degree"/>
                <dContact.14 nemsisName="Agency Medical Director Board Certification Type"/>
                <dContact.15 nemsisName="Medical Director Compensation"/>
                <dContact.16 nemsisName="EMS Medical Director Fellowship Trained Status"/>
              </dContact.EMSMedicalDirectorGroup>
            </dContact.ContactInfoGroup>
          </dContact>
          <dConfiguration nemsisName="Configuration Information">
            <dConfiguration.ConfigurationGroup nemsisName="State Associated with the Certification/Licensure Levels">
              <dConfiguration.01 nemsisName="State Associated with the Certification/Licensure Levels"/>
              <dConfiguration.02 nemsisName="State Certification/Licensure Levels"/>
              <dConfiguration.03 nemsisName="Procedures Permitted by the State"/>
              <dConfiguration.04 nemsisName="Medications Permitted by the State"/>
              <dConfiguration.05 nemsisName="Protocols Permitted by the State"/>
              <dConfiguration.ProcedureGroup nemsisName="EMS Certification Levels Permitted to Perform Each Procedure">
                <dConfiguration.06 nemsisName="EMS Certification Levels Permitted to Perform Each Procedure"/>
                <dConfiguration.07 nemsisName="EMS Agency Procedures"/>
              </dConfiguration.ProcedureGroup>
              <dConfiguration.MedicationGroup nemsisName="EMS Certification Levels Permitted to Administer Each Medication">
                <dConfiguration.08 nemsisName="EMS Certification Levels Permitted to Administer Each Medication"/>
                <dConfiguration.09 nemsisName="EMS Agency Medications"/>
              </dConfiguration.MedicationGroup>
              <dConfiguration.10 nemsisName="EMS Agency Protocols"/>
              <dConfiguration.11 nemsisName="EMS Agency Specialty Service Capability"/>
              <dConfiguration.12 nemsisName="Billing Status"/>
              <dConfiguration.13 nemsisName="Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area"/>
              <dConfiguration.14 nemsisName="EMD Vendor"/>
              <dConfiguration.15 nemsisName="Patient Monitoring Capability(ies)"/>
              <dConfiguration.16 nemsisName="Crew Call Sign"/>
              <dConfiguration.17 nemsisName="Dispatch Center (CAD) Name or ID"/>
            </dConfiguration.ConfigurationGroup>
          </dConfiguration>
          <dLocation nemsisName="Location Information">
            <dLocation.LocationGroup nemsisName="EMS Location Type">
              <dLocation.01 nemsisName="EMS Location Type"/>
              <dLocation.02 nemsisName="EMS Location Name"/>
              <dLocation.03 nemsisName="EMS Location Number"/>
              <dLocation.04 nemsisName="EMS Location GPS"/>
              <dLocation.05 nemsisName="EMS Location US National Grid Coordinates"/>
              <dLocation.06 nemsisName="EMS Location Address"/>
              <dLocation.07 nemsisName="EMS Location City"/>
              <dLocation.08 nemsisName="EMS Location State"/>
              <dLocation.09 nemsisName="EMS Station or Location ZIP Code"/>
              <dLocation.10 nemsisName="EMS Location County"/>
              <dLocation.11 nemsisName="EMS Location Country"/>
              <dLocation.12 nemsisName="EMS Location Phone Number"/>
            </dLocation.LocationGroup>
          </dLocation>
          <dVehicle nemsisName="Vehicle Information">
            <dVehicle.VehicleGroup nemsisName="Unit/Vehicle Number">
              <dVehicle.01 nemsisName="Unit/Vehicle Number"/>
              <dVehicle.02 nemsisName="Vehicle Identification Number"/>
              <dVehicle.03 nemsisName="EMS Unit Call Sign"/>
              <dVehicle.04 nemsisName="Vehicle Type"/>
              <dVehicle.VehicleCertificationLevelsGroup nemsisName="Crew State Certification/Licensure Levels">
                <dVehicle.05 nemsisName="Crew State Certification/Licensure Levels"/>
                <dVehicle.06 nemsisName="Number of Each EMS Personnel Level on Normal 911 Ambulance Response"/>
                <dVehicle.07 nemsisName="Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle"/>
                <dVehicle.08 nemsisName="Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance"/>
              </dVehicle.VehicleCertificationLevelsGroup>
              <dVehicle.09 nemsisName="Vehicle Initial Cost"/>
              <dVehicle.10 nemsisName="Vehicle Model Year"/>
              <dVehicle.YearGroup nemsisName="Year Miles/Kilometers Hours Accrued">
                <dVehicle.11 nemsisName="Year Miles/Kilometers Hours Accrued"/>
                <dVehicle.12 nemsisName="Annual Vehicle Hours"/>
                <dVehicle.13 nemsisName="Annual Vehicle Miles/Kilometers"/>
              </dVehicle.YearGroup>
            </dVehicle.VehicleGroup>
          </dVehicle>
          <dPersonnel nemsisName="Personnel Information">
            <dPersonnel.PersonnelGroup nemsisName="EMS Personnel's Last Name">
              <dPersonnel.NameGroup nemsisName="EMS Personnel's Last Name">
                <dPersonnel.01 nemsisName="EMS Personnel's Last Name"/>
                <dPersonnel.02 nemsisName="EMS Personnel's First Name"/>
                <dPersonnel.03 nemsisName="EMS Personnel's Middle Name/Initial"/>
              </dPersonnel.NameGroup>
              <dPersonnel.AddressGroup nemsisName="EMS Personnel's Mailing Address">
                <dPersonnel.04 nemsisName="EMS Personnel's Mailing Address"/>
                <dPersonnel.05 nemsisName="EMS Personnel's City of Residence"/>
                <dPersonnel.06 nemsisName="EMS Personnel's State"/>
                <dPersonnel.07 nemsisName="EMS Personnel's ZIP Code"/>
                <dPersonnel.08 nemsisName="EMS Personnel's Country"/>
              </dPersonnel.AddressGroup>
              <dPersonnel.09 nemsisName="EMS Personnel's Phone Number"/>
              <dPersonnel.10 nemsisName="EMS Personnel's Email Address"/>
              <dPersonnel.11 nemsisName="EMS Personnel's Date of Birth"/>
              <dPersonnel.12 nemsisName="EMS Personnel's Gender"/>
              <dPersonnel.13 nemsisName="EMS Personnel's Race"/>
              <dPersonnel.14 nemsisName="EMS Personnel's Citizenship"/>
              <dPersonnel.15 nemsisName="EMS Personnel's Highest Educational Degree"/>
              <dPersonnel.16 nemsisName="EMS Personnel's Degree Subject/Field of Study"/>
              <dPersonnel.17 nemsisName="EMS Personnel's Motor Vehicle License Type"/>
              <dPersonnel.ImmunizationsGroup nemsisName="EMS Personnel's Immunization Status">
                <dPersonnel.18 nemsisName="EMS Personnel's Immunization Status"/>
                <dPersonnel.19 nemsisName="EMS Personnel's Immunization Year"/>
              </dPersonnel.ImmunizationsGroup>
              <dPersonnel.20 nemsisName="EMS Personnel's Foreign Language Ability"/>
              <dPersonnel.21 nemsisName="EMS Personnel's Agency ID Number"/>
              <dPersonnel.LicensureGroup nemsisName="EMS Personnel's State of Licensure">
                <dPersonnel.22 nemsisName="EMS Personnel's State of Licensure"/>
                <dPersonnel.23 nemsisName="EMS Personnel's State's Licensure ID Number"/>
                <dPersonnel.24 nemsisName="EMS Personnel's State EMS Certification Licensure Level"/>
                <dPersonnel.25 nemsisName="EMS Personnel's State EMS Current Certification Date"/>
                <dPersonnel.26 nemsisName="EMS Personnel's Initial State's Licensure Issue Date"/>
                <dPersonnel.27 nemsisName="EMS Personnel's Current State's Licensure Expiration Date"/>
              </dPersonnel.LicensureGroup>
              <dPersonnel.28 nemsisName="EMS Personnel's National Registry Number"/>
              <dPersonnel.29 nemsisName="EMS Personnel's National Registry Certification Level"/>
              <dPersonnel.30 nemsisName="EMS Personnel's Current National Registry Expiration Date"/>
              <dPersonnel.31 nemsisName="EMS Personnel's Employment Status"/>
              <dPersonnel.32 nemsisName="EMS Personnel's Employment Status Date"/>
              <dPersonnel.33 nemsisName="EMS Personnel's Hire Date"/>
              <dPersonnel.34 nemsisName="EMS Personnel's Primary EMS Job Role"/>
              <dPersonnel.35 nemsisName="EMS Personnel's Other Job Responsibilities"/>
              <dPersonnel.36 nemsisName="EMS Personnel's Total Length of Service in Years"/>
              <dPersonnel.37 nemsisName="EMS Personnel's Date Length of Service Documented"/>
              <dPersonnel.CertificationLevelGroup nemsisName="EMS Personnel's Practice Level">
                <dPersonnel.38 nemsisName="EMS Personnel's Practice Level"/>
                <dPersonnel.39 nemsisName="Date of Personnel's Certification or Licensure for Agency"/>
              </dPersonnel.CertificationLevelGroup>
            </dPersonnel.PersonnelGroup>
          </dPersonnel>
          <dDevice nemsisName="Device Information">
            <dDevice.DeviceGroup nemsisName="Medical Device Serial Number">
              <dDevice.01 nemsisName="Medical Device Serial Number"/>
              <dDevice.02 nemsisName="Medical Device Name or ID"/>
              <dDevice.03 nemsisName="Medical Device Type"/>
              <dDevice.04 nemsisName="Medical Device Manufacturer"/>
              <dDevice.05 nemsisName="Medical Device Model Number"/>
              <dDevice.06 nemsisName="Medical Device Purchase Date"/>
            </dDevice.DeviceGroup>
          </dDevice>
          <dFacility nemsisName="Device Information">
            <dFacilityGroup nemsisName="Type of Facility">
              <dFacility.01 nemsisName="Type of Facility"/>
              <dFacility.FacilityGroup nemsisName="Facility Name">
                <dFacility.02 nemsisName="Facility Name"/>
                <dFacility.03 nemsisName="Facility Location Code"/>
                <dFacility.04 nemsisName="Hospital Designations"/>
                <dFacility.05 nemsisName="Facility National Provider Identifier"/>
                <dFacility.06 nemsisName="Facility Room, Suite, or Apartment"/>
                <dFacility.07 nemsisName="Facility Street Address"/>
                <dFacility.08 nemsisName="Facility City"/>
                <dFacility.09 nemsisName="Facility State"/>
                <dFacility.10 nemsisName="Facility ZIP Code"/>
                <dFacility.11 nemsisName="Facility County"/>
                <dFacility.12 nemsisName="Facility Country"/>
                <dFacility.13 nemsisName="Facility GPS Location"/>
                <dFacility.14 nemsisName="Facility US National Grid Coordinates"/>
                <dFacility.15 nemsisName="Facility Phone Number"/>
              </dFacility.FacilityGroup>
            </dFacilityGroup>
          </dFacility>
          <dCustomResults nemsisName="Custom Data Element Results">
            <dCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
              <dCustomResults.01 nemsisName="Custom Data Element Result"/>
              <dCustomResults.02 nemsisName="Custom Element ID Referenced"/>
              <dCustomResults.03 nemsisName="CorrelationID of DemographicReport Element or Group"/>
            </dCustomResults.ResultsGroup>
          </dCustomResults>
        </DemographicReport>
      </DEMDataSet>
      <EMSDataSet xmlns="http://www.nemsis.org" nemsisName="EMS Agency Unique State ID">
        <eState nemsisName="State Required Elements">
          <eState.01 nemsisName="State Required Element"/>
        </eState>
        <Header nemsisName="EMS Agency Unique State ID">
          <DemographicGroup nemsisName="EMS Agency Unique State ID">
            <dAgency.01 nemsisName="EMS Agency Unique State ID"/>
            <dAgency.02 nemsisName="EMS Agency Number"/>
            <dAgency.04 nemsisName="EMS Agency State"/>
          </DemographicGroup>
          <eCustomConfiguration nemsisName="">
            <eCustomConfiguration.CustomGroup nemsisName="Custom Data Element Title">
              <eCustomConfiguration.01 nemsisName="Custom Data Element Title"/>
              <eCustomConfiguration.02 nemsisName="Custom Definition"/>
              <eCustomConfiguration.03 nemsisName="Custom Data Type"/>
              <eCustomConfiguration.04 nemsisName="Custom Data Element Recurrence"/>
              <eCustomConfiguration.05 nemsisName="Custom Data Element Usage"/>
              <eCustomConfiguration.06 nemsisName="Custom Data Element Potential Values"/>
              <eCustomConfiguration.07 nemsisName="Custom Data Element Potential NOT Values (NV)"/>
              <eCustomConfiguration.08 nemsisName="Custom Data Element Potential Pertinent Negative Values (PN)"/>
              <eCustomConfiguration.09 nemsisName="Custom Data Element Grouping ID"/>
            </eCustomConfiguration.CustomGroup>
          </eCustomConfiguration>
          <PatientCareReport nemsisName="Container Tag to hold each instance of a patient care report (PCR)">
            <eRecord nemsisName="Patient Record Information">
              <eRecord.01 nemsisName="Patient Care Report Number"/>
              <eRecord.SoftwareApplicationGroup nemsisName="Software Creator">
                <eRecord.02 nemsisName="Software Creator"/>
                <eRecord.03 nemsisName="Software Name"/>
                <eRecord.04 nemsisName="Software Version"/>
              </eRecord.SoftwareApplicationGroup>
            </eRecord>
            <eResponse nemsisName="Unit Agency Information">
              <eResponse.AgencyGroup nemsisName="EMS Agency Number">
                <eResponse.01 nemsisName="EMS Agency Number"/>
                <eResponse.02 nemsisName="EMS Agency Name"/>
              </eResponse.AgencyGroup>
              <eResponse.03 nemsisName="Incident Number"/>
              <eResponse.04 nemsisName="EMS Response Number"/>
              <eResponse.ServiceGroup nemsisName="Type of Service Requested">
                <eResponse.05 nemsisName="Type of Service Requested"/>
                <eResponse.06 nemsisName="Standby Purpose"/>
              </eResponse.ServiceGroup>
              <eResponse.07 nemsisName="Primary Role of the Unit"/>
              <eResponse.08 nemsisName="Type of Dispatch Delay"/>
              <eResponse.09 nemsisName="Type of Response Delay"/>
              <eResponse.10 nemsisName="Type of Scene Delay"/>
              <eResponse.11 nemsisName="Type of Transport Delay"/>
              <eResponse.12 nemsisName="Type of Turn-Around Delay"/>
              <eResponse.13 nemsisName="EMS Vehicle (Unit) Number"/>
              <eResponse.14 nemsisName="EMS Unit Call Sign"/>
              <eResponse.15 nemsisName="Level of Care of This Unit"/>
              <eResponse.16 nemsisName="Vehicle Dispatch Location"/>
              <eResponse.17 nemsisName="Vehicle Dispatch GPS Location"/>
              <eResponse.18 nemsisName="Vehicle Dispatch Location US National Grid Coordinates"/>
              <eResponse.19 nemsisName="Beginning Odometer Reading of Responding Vehicle"/>
              <eResponse.20 nemsisName="On-Scene Odometer Reading of Responding Vehicle"/>
              <eResponse.21 nemsisName="Patient Destination Odometer Reading of Responding Vehicle"/>
              <eResponse.22 nemsisName="Ending Odometer Reading of Responding Vehicle"/>
              <eResponse.23 nemsisName="Response Mode to Scene"/>
              <eResponse.24 nemsisName="Additional Response Mode Descriptors"/>
            </eResponse>
            <eDispatch nemsisName="Dispatch Information">
              <eDispatch.01 nemsisName="Complaint Reported by Dispatch"/>
              <eDispatch.02 nemsisName="EMD Performed"/>
              <eDispatch.03 nemsisName="EMD Card Number"/>
              <eDispatch.04 nemsisName="Dispatch Center Name or ID"/>
              <eDispatch.05 nemsisName="Dispatch Priority (Patient Acuity)"/>
              <eDispatch.06 nemsisName="Unit Dispatched CAD Record ID"/>
            </eDispatch>
            <eCrew nemsisName="Crew Member Information">
              <eCrew.CrewGroup nemsisName="Crew Member ID">
                <eCrew.01 nemsisName="Crew Member ID"/>
                <eCrew.02 nemsisName="Crew Member Level"/>
                <eCrew.03 nemsisName="Crew Member Response Role"/>
              </eCrew.CrewGroup>
            </eCrew>
            <eTimes nemsisName="Call Event Times Information">
              <eTimes.01 nemsisName="PSAP Call Date/Time"/>
              <eTimes.02 nemsisName="Dispatch Notified Date/Time"/>
              <eTimes.03 nemsisName="Unit Notified by Dispatch Date/Time"/>
              <eTimes.04 nemsisName="Dispatch Acknowledged Date/Time"/>
              <eTimes.05 nemsisName="Unit En Route Date/Time"/>
              <eTimes.06 nemsisName="Unit Arrived on Scene Date/Time"/>
              <eTimes.07 nemsisName="Arrived at Patient Date/Time"/>
              <eTimes.08 nemsisName="Transfer of EMS Patient Care Date/Time"/>
              <eTimes.09 nemsisName="Unit Left Scene Date/Time"/>
              <eTimes.10 nemsisName="Arrival at Destination Landing Area Date/Time"/>
              <eTimes.11 nemsisName="Patient Arrived at Destination Date/Time"/>
              <eTimes.12 nemsisName="Destination Patient Transfer of Care Date/Time"/>
              <eTimes.13 nemsisName="Unit Back in Service Date/Time"/>
              <eTimes.14 nemsisName="Unit Canceled Date/Time"/>
              <eTimes.15 nemsisName="Unit Back at Home Location Date/Time"/>
              <eTimes.16 nemsisName="EMS Call Completed Date/Time"/>
            </eTimes>
            <ePatient nemsisName="Patient Information">
              <ePatient.01 nemsisName="EMS Patient ID"/>
              <ePatient.PatientNameGroup nemsisName="Last Name">
                <ePatient.02 nemsisName="Last Name"/>
                <ePatient.03 nemsisName="First Name"/>
                <ePatient.04 nemsisName="Middle Initial/Name"/>
              </ePatient.PatientNameGroup>
              <ePatient.05 nemsisName="Patient's Home Address"/>
              <ePatient.06 nemsisName="Patient's Home City"/>
              <ePatient.07 nemsisName="Patient's Home County"/>
              <ePatient.08 nemsisName="Patient's Home State"/>
              <ePatient.09 nemsisName="Patient's Home ZIP Code"/>
              <ePatient.10 nemsisName="Patient's Country of Residence"/>
              <ePatient.11 nemsisName="Patient Home Census Tract"/>
              <ePatient.12 nemsisName="Social Security Number"/>
              <ePatient.13 nemsisName="Gender"/>
              <ePatient.14 nemsisName="Race"/>
              <ePatient.AgeGroup nemsisName="Age">
                <ePatient.15 nemsisName="Age"/>
                <ePatient.16 nemsisName="Age Units"/>
              </ePatient.AgeGroup>
              <ePatient.17 nemsisName="Date of Birth"/>
              <ePatient.18 nemsisName="Patient's Phone Number"/>
              <ePatient.19 nemsisName="Patient's Email Address"/>
              <ePatient.20 nemsisName="State Issuing Driver's License"/>
              <ePatient.21 nemsisName="Driver's License Number"/>
            </ePatient>
            <ePayment nemsisName="Insurance/Payment Information">
              <ePayment.01 nemsisName="Primary Method of Payment"/>
              <ePayment.CertificateGroup nemsisName="Physician Certification Statement">
                <ePayment.02 nemsisName="Physician Certification Statement"/>
                <ePayment.03 nemsisName="Date Physician Certification Statement Signed"/>
                <ePayment.04 nemsisName="Reason for Physician Certification Statement"/>
                <ePayment.05 nemsisName="Healthcare Provider Type Signing Physician Certification Statement"/>
                <ePayment.06 nemsisName="Last Name of Individual Signing Physician Certification Statement"/>
                <ePayment.07 nemsisName="First Name of Individual Signing Physician Certification Statement"/>
              </ePayment.CertificateGroup>
              <ePayment.08 nemsisName="Patient Resides in Service Area"/>
              <ePayment.InsuranceGroup nemsisName="Insurance Company ID">
                <ePayment.09 nemsisName="Insurance Company ID"/>
                <ePayment.10 nemsisName="Insurance Company Name"/>
                <ePayment.11 nemsisName="Insurance Company Billing Priority"/>
                <ePayment.12 nemsisName="Insurance Company Address"/>
                <ePayment.13 nemsisName="Insurance Company City"/>
                <ePayment.14 nemsisName="Insurance Company State"/>
                <ePayment.15 nemsisName="Insurance Company ZIP Code"/>
                <ePayment.16 nemsisName="Insurance Company Country"/>
                <ePayment.17 nemsisName="Insurance Group ID"/>
                <ePayment.18 nemsisName="Insurance Policy ID Number"/>
                <ePayment.19 nemsisName="Last Name of the Insured"/>
                <ePayment.20 nemsisName="First Name of the Insured"/>
                <ePayment.21 nemsisName="Middle Initial/Name of the Insured"/>
                <ePayment.22 nemsisName="Relationship to the Insured"/>
                <ePayment.58 nemsisName="Insurance Group Name"/>
              </ePayment.InsuranceGroup>
              <ePayment.ClosestRelativeGroup nemsisName="Closest Relative/Guardian Last Name">
                <ePayment.23 nemsisName="Closest Relative/Guardian Last Name"/>
                <ePayment.24 nemsisName="Closest Relative/ Guardian First Name"/>
                <ePayment.25 nemsisName="Closest Relative/ Guardian Middle Initial/Name"/>
                <ePayment.26 nemsisName="Closest Relative/ Guardian Street Address"/>
                <ePayment.27 nemsisName="Closest Relative/ Guardian City"/>
                <ePayment.28 nemsisName="Closest Relative/ Guardian State"/>
                <ePayment.29 nemsisName="Closest Relative/ Guardian ZIP Code"/>
                <ePayment.30 nemsisName="Closest Relative/ Guardian Country"/>
                <ePayment.31 nemsisName="Closest Relative/ Guardian Phone Number"/>
                <ePayment.32 nemsisName="Closest Relative/ Guardian Relationship"/>
              </ePayment.ClosestRelativeGroup>
              <ePayment.EmployerGroup nemsisName="Patient's Employer">
                <ePayment.33 nemsisName="Patient's Employer"/>
                <ePayment.34 nemsisName="Patient's Employer's Address"/>
                <ePayment.35 nemsisName="Patient's Employer's City"/>
                <ePayment.36 nemsisName="Patient's Employer's State"/>
                <ePayment.37 nemsisName="Patient's Employer's ZIP Code"/>
                <ePayment.38 nemsisName="Patient's Employer's Country"/>
                <ePayment.39 nemsisName="Patient's Employer's Primary Phone Number"/>
              </ePayment.EmployerGroup>
              <ePayment.40 nemsisName="Response Urgency"/>
              <ePayment.41 nemsisName="Patient Transport Assessment"/>
              <ePayment.42 nemsisName="Specialty Care Transport Care Provider"/>
              <ePayment.44 nemsisName="Ambulance Transport Reason Code"/>
              <ePayment.45 nemsisName="Round Trip Purpose Description"/>
              <ePayment.46 nemsisName="Stretcher Purpose Description"/>
              <ePayment.47 nemsisName="Ambulance Conditions Indicator"/>
              <ePayment.48 nemsisName="Mileage to Closest Hospital Facility"/>
              <ePayment.49 nemsisName="ALS Assessment Performed and Warranted"/>
              <ePayment.50 nemsisName="CMS Service Level"/>
              <ePayment.51 nemsisName="EMS Condition Code"/>
              <ePayment.52 nemsisName="CMS Transportation Indicator"/>
              <ePayment.53 nemsisName="Transport Authorization Code"/>
              <ePayment.54 nemsisName="Prior Authorization Code Payer"/>
              <ePayment.SupplyItemGroup nemsisName="Supply Item Used Name">
                <ePayment.55 nemsisName="Supply Item Used Name"/>
                <ePayment.56 nemsisName="Number of Supply Item(s) Used"/>
              </ePayment.SupplyItemGroup>
              <ePayment.57 nemsisName="Payer Type"/>
            </ePayment>
            <eScene nemsisName="Incident Scene Information">
              <eScene.01 nemsisName="First EMS Unit on Scene"/>
              <eScene.ResponderGroup nemsisName="Other EMS or Public Safety Agencies at Scene">
                <eScene.02 nemsisName="Other EMS or Public Safety Agencies at Scene"/>
                <eScene.03 nemsisName="Other EMS or Public Safety Agency ID Number"/>
                <eScene.04 nemsisName="Type of Other Service at Scene"/>
              </eScene.ResponderGroup>
              <eScene.05 nemsisName="Date/Time Initial Responder Arrived on Scene"/>
              <eScene.06 nemsisName="Number of Patients at Scene"/>
              <eScene.07 nemsisName="Mass Casualty Incident"/>
              <eScene.08 nemsisName="Triage Classification for MCI Patient"/>
              <eScene.09 nemsisName="Incident Location Type"/>
              <eScene.10 nemsisName="Incident Facility Code"/>
              <eScene.11 nemsisName="Scene GPS Location"/>
              <eScene.12 nemsisName="Scene US National Grid Coordinates"/>
              <eScene.13 nemsisName="Incident Facility or Location Name"/>
              <eScene.14 nemsisName="Mile Post or Major Roadway"/>
              <eScene.15 nemsisName="Incident Street Address"/>
              <eScene.16 nemsisName="Incident Apartment, Suite, or Room"/>
              <eScene.17 nemsisName="Incident City"/>
              <eScene.18 nemsisName="Incident State"/>
              <eScene.19 nemsisName="Incident ZIP Code"/>
              <eScene.20 nemsisName="Scene Cross Street or Directions"/>
              <eScene.21 nemsisName="Incident County"/>
              <eScene.22 nemsisName="Incident Country"/>
              <eScene.23 nemsisName="Incident Census Tract"/>
            </eScene>
            <eSituation nemsisName="Situation Information">
              <eSituation.01 nemsisName="Date/Time of Symptom Onset"/>
              <eSituation.02 nemsisName="Possible Injury"/>
              <eSituation.PatientComplaintGroup nemsisName="Complaint Type">
                <eSituation.03 nemsisName="Complaint Type"/>
                <eSituation.04 nemsisName="Complaint"/>
                <eSituation.05 nemsisName="Duration of Complaint"/>
                <eSituation.06 nemsisName="Time Units of Duration of Complaint"/>
              </eSituation.PatientComplaintGroup>
              <eSituation.07 nemsisName="Chief Complaint Anatomic Location"/>
              <eSituation.08 nemsisName="Chief Complaint Organ System"/>
              <eSituation.09 nemsisName="Primary Symptom"/>
              <eSituation.10 nemsisName="Other Associated Symptoms"/>
              <eSituation.11 nemsisName="Provider's Primary Impression"/>
              <eSituation.12 nemsisName="Provider's Secondary Impressions"/>
              <eSituation.13 nemsisName="Initial Patient Acuity"/>
              <eSituation.WorkRelatedGroup nemsisName="Work-Related Illness/Injury">
                <eSituation.14 nemsisName="Work-Related Illness/Injury"/>
                <eSituation.15 nemsisName="Patient's Occupational Industry"/>
                <eSituation.16 nemsisName="Patient's Occupation"/>
              </eSituation.WorkRelatedGroup>
              <eSituation.17 nemsisName="Patient Activity"/>
              <eSituation.18 nemsisName="Date/Time Last Known Well"/>
            </eSituation>
            <eInjury nemsisName="Injury Information">
              <eInjury.01 nemsisName="Cause of Injury"/>
              <eInjury.02 nemsisName="Mechanism of Injury"/>
              <eInjury.03 nemsisName="Trauma Center Criteria"/>
              <eInjury.04 nemsisName="Vehicular, Pedestrian, or Other Injury Risk Factor"/>
              <eInjury.05 nemsisName="Main Area of the Vehicle Impacted by the Collision"/>
              <eInjury.06 nemsisName="Location of Patient in Vehicle"/>
              <eInjury.07 nemsisName="Use of Occupant Safety Equipment"/>
              <eInjury.08 nemsisName="Airbag Deployment"/>
              <eInjury.09 nemsisName="Height of Fall (feet)"/>
              <eInjury.10 nemsisName="OSHA Personal Protective Equipment Used"/>
              <eInjury.CollisionGroup nemsisName="ACN System/Company Providing ACN Data">
                <eInjury.11 nemsisName="ACN System/Company Providing ACN Data"/>
                <eInjury.12 nemsisName="ACN Incident ID"/>
                <eInjury.13 nemsisName="ACN Call Back Phone Number"/>
                <eInjury.14 nemsisName="Date/Time of ACN Incident"/>
                <eInjury.15 nemsisName="ACN Incident Location"/>
                <eInjury.16 nemsisName="ACN Incident Vehicle Body Type"/>
                <eInjury.17 nemsisName="ACN Incident Vehicle Manufacturer"/>
                <eInjury.18 nemsisName="ACN Incident Vehicle Make"/>
                <eInjury.19 nemsisName="ACN Incident Vehicle Model"/>
                <eInjury.20 nemsisName="ACN Incident Vehicle Model Year"/>
                <eInjury.21 nemsisName="ACN Incident Multiple Impacts"/>
                <eInjury.22 nemsisName="ACN Incident Delta Velocity"/>
                <eInjury.23 nemsisName="ACN High Probability of Injury"/>
                <eInjury.24 nemsisName="ACN Incident PDOF"/>
                <eInjury.25 nemsisName="ACN Incident Rollover"/>
                <eInjury.SeatGroup nemsisName="ACN Vehicle Seat Location">
                  <eInjury.26 nemsisName="ACN Vehicle Seat Location"/>
                  <eInjury.27 nemsisName="Seat Occupied"/>
                  <eInjury.28 nemsisName="ACN Incident Seatbelt Use"/>
                  <eInjury.29 nemsisName="ACN Incident Airbag Deployed"/>
                </eInjury.SeatGroup>
              </eInjury.CollisionGroup>
            </eInjury>
            <eArrest nemsisName="Cardiac Arrest Information">
              <eArrest.01 nemsisName="Cardiac Arrest"/>
              <eArrest.02 nemsisName="Cardiac Arrest Etiology"/>
              <eArrest.03 nemsisName="Resuscitation Attempted By EMS"/>
              <eArrest.04 nemsisName="Arrest Witnessed By"/>
              <eArrest.05 nemsisName="CPR Care Provided Prior to EMS Arrival"/>
              <eArrest.06 nemsisName="Who Provided CPR Prior to EMS Arrival"/>
              <eArrest.07 nemsisName="AED Use Prior to EMS Arrival"/>
              <eArrest.08 nemsisName="Who Used AED Prior to EMS Arrival"/>
              <eArrest.09 nemsisName="Type of CPR Provided"/>
              <eArrest.11 nemsisName="First Monitored Arrest Rhythm of the Patient"/>
              <eArrest.12 nemsisName="Any Return of Spontaneous Circulation"/>
              <eArrest.13 nemsisName="Neurological Outcome at Hospital Discharge"/>
              <eArrest.14 nemsisName="Date/Time of Cardiac Arrest"/>
              <eArrest.15 nemsisName="Date/Time Resuscitation Discontinued"/>
              <eArrest.16 nemsisName="Reason CPR/Resuscitation Discontinued"/>
              <eArrest.17 nemsisName="Cardiac Rhythm on Arrival at Destination"/>
              <eArrest.18 nemsisName="End of EMS Cardiac Arrest Event"/>
              <eArrest.19 nemsisName="Date/Time of Initial CPR"/>
            </eArrest>
            <eHistory nemsisName="Patient History Information">
              <eHistory.01 nemsisName="Barriers to Patient Care"/>
              <eHistory.PractitionerGroup nemsisName="Last Name of Patient's Practitioner">
                <eHistory.02 nemsisName="Last Name of Patient's Practitioner"/>
                <eHistory.03 nemsisName="First Name of Patient's Practitioner"/>
                <eHistory.04 nemsisName="Middle Name/Initial of Patient's Practitioner"/>
              </eHistory.PractitionerGroup>
              <eHistory.05 nemsisName="Advance Directives"/>
              <eHistory.06 nemsisName="Medication Allergies"/>
              <eHistory.07 nemsisName="Environmental/Food Allergies"/>
              <eHistory.08 nemsisName="Medical/Surgical History"/>
              <eHistory.09 nemsisName="Medical History Obtained From"/>
              <eHistory.ImmunizationsGroup nemsisName="The Patient's Type of Immunization">
                <eHistory.10 nemsisName="The Patient's Type of Immunization"/>
                <eHistory.11 nemsisName="Immunization Year"/>
              </eHistory.ImmunizationsGroup>
              <eHistory.CurrentMedsGroup nemsisName="Current Medications">
                <eHistory.12 nemsisName="Current Medications"/>
                <eHistory.13 nemsisName="Current Medication Dose"/>
                <eHistory.14 nemsisName="Current Medication Dosage Unit"/>
                <eHistory.15 nemsisName="Current Medication Administration Route"/>
              </eHistory.CurrentMedsGroup>
              <eHistory.16 nemsisName="Presence of Emergency Information Form"/>
              <eHistory.17 nemsisName="Alcohol/Drug Use Indicators"/>
              <eHistory.18 nemsisName="Pregnancy"/>
              <eHistory.19 nemsisName="Last Oral Intake"/>
            </eHistory>
            <eNarrative nemsisName="Call Event Narrative">
              <eNarrative.01 nemsisName="Patient Care Report Narrative"/>
            </eNarrative>
            <eVitals nemsisName="Patient Vital Sign Information">
              <eVitals.VitalGroup nemsisName="Date/Time Vital Signs Taken">
                <eVitals.01 nemsisName="Date/Time Vital Signs Taken"/>
                <eVitals.02 nemsisName="Obtained Prior to this Unit's EMS Care"/>
                <eVitals.CardiacRhythmGroup nemsisName="Cardiac Rhythm / Electrocardiography (ECG)">
                  <eVitals.03 nemsisName="Cardiac Rhythm / Electrocardiography (ECG)"/>
                  <eVitals.04 nemsisName="ECG Type"/>
                  <eVitals.05 nemsisName="Method of ECG Interpretation"/>
                </eVitals.CardiacRhythmGroup>
                <eVitals.BloodPressureGroup nemsisName="SBP (Systolic Blood Pressure)">
                  <eVitals.06 nemsisName="SBP (Systolic Blood Pressure)"/>
                  <eVitals.07 nemsisName="DBP (Diastolic Blood Pressure)"/>
                  <eVitals.08 nemsisName="Method of Blood Pressure Measurement"/>
                  <eVitals.09 nemsisName="Mean Arterial Pressure"/>
                </eVitals.BloodPressureGroup>
                <eVitals.HeartRateGroup nemsisName="Heart Rate">
                  <eVitals.10 nemsisName="Heart Rate"/>
                  <eVitals.11 nemsisName="Method of Heart Rate Measurement"/>
                </eVitals.HeartRateGroup>
                <eVitals.12 nemsisName="Pulse Oximetry"/>
                <eVitals.13 nemsisName="Pulse Rhythm"/>
                <eVitals.14 nemsisName="Respiratory Rate"/>
                <eVitals.15 nemsisName="Respiratory Effort"/>
                <eVitals.16 nemsisName="End Tidal Carbon Dioxide (ETCO2)"/>
                <eVitals.17 nemsisName="Carbon Monoxide (CO)"/>
                <eVitals.18 nemsisName="Blood Glucose Level"/>
                <eVitals.GlasgowScoreGroup nemsisName="Glasgow Coma Score-Eye">
                  <eVitals.19 nemsisName="Glasgow Coma Score-Eye"/>
                  <eVitals.20 nemsisName="Glasgow Coma Score-Verbal"/>
                  <eVitals.21 nemsisName="Glasgow Coma Score-Motor"/>
                  <eVitals.22 nemsisName="Glasgow Coma Score-Qualifier"/>
                  <eVitals.23 nemsisName="Total Glasgow Coma Score"/>
                </eVitals.GlasgowScoreGroup>
                <eVitals.TemperatureGroup nemsisName="Temperature">
                  <eVitals.24 nemsisName="Temperature"/>
                  <eVitals.25 nemsisName="Temperature Method"/>
                </eVitals.TemperatureGroup>
                <eVitals.26 nemsisName="Level of Responsiveness (AVPU)"/>
                <eVitals.PainScaleGroup nemsisName="Pain Scale Score">
                  <eVitals.27 nemsisName="Pain Scale Score"/>
                  <eVitals.28 nemsisName="Pain Scale Type"/>
                </eVitals.PainScaleGroup>
                <eVitals.StrokeScaleGroup nemsisName="Stroke Scale Score">
                  <eVitals.29 nemsisName="Stroke Scale Score"/>
                  <eVitals.30 nemsisName="Stroke Scale Type"/>
                </eVitals.StrokeScaleGroup>
                <eVitals.31 nemsisName="Reperfusion Checklist"/>
                <eVitals.32 nemsisName="APGAR"/>
                <eVitals.33 nemsisName="Revised Trauma Score"/>
              </eVitals.VitalGroup>
            </eVitals>
            <eLabs nemsisName="Lab Results Information">
              <eLabs.LabGroup nemsisName="Date/Time of Laboratory or Imaging Result">
                <eLabs.01 nemsisName="Date/Time of Laboratory or Imaging Result"/>
                <eLabs.02 nemsisName="Study/Result Prior to this Unit's EMS Care"/>
                <eLabs.LabResultGroup nemsisName="Laboratory Result Type">
                  <eLabs.03 nemsisName="Laboratory Result Type"/>
                  <eLabs.04 nemsisName="Laboratory Result"/>
                </eLabs.LabResultGroup>
                <eLabs.LabImageGroup nemsisName="Imaging Study Type">
                  <eLabs.05 nemsisName="Imaging Study Type"/>
                  <eLabs.06 nemsisName="Imaging Study Results"/>
                  <eLabs.WaveformGraphicGroup nemsisName="Imaging Study File or Waveform Graphic Type">
                    <eLabs.07 nemsisName="Imaging Study File or Waveform Graphic Type"/>
                    <eLabs.08 nemsisName="Imaging Study File or Waveform Graphic"/>
                  </eLabs.WaveformGraphicGroup>
                </eLabs.LabImageGroup>
              </eLabs.LabGroup>
            </eLabs>
            <eExam nemsisName="Patient Exam Information">
              <eExam.01 nemsisName="Estimated Body Weight in Kilograms"/>
              <eExam.02 nemsisName="Length Based Tape Measure"/>
              <eExam.AssessmentGroup nemsisName="Date/Time of Assessment">
                <eExam.03 nemsisName="Date/Time of Assessment"/>
                <eExam.04 nemsisName="Skin Assessment"/>
                <eExam.05 nemsisName="Head Assessment"/>
                <eExam.06 nemsisName="Face Assessment"/>
                <eExam.07 nemsisName="Neck Assessment"/>
                <eExam.08 nemsisName="Chest/Lungs Assessment"/>
                <eExam.09 nemsisName="Heart Assessment"/>
                <eExam.AbdomenGroup nemsisName="Abdominal Assessment Finding Location">
                  <eExam.10 nemsisName="Abdominal Assessment Finding Location"/>
                  <eExam.11 nemsisName="Abdomen Assessment"/>
                </eExam.AbdomenGroup>
                <eExam.12 nemsisName="Pelvis/Genitourinary Assessment"/>
                <eExam.SpineGroup nemsisName="Back and Spine Assessment Finding Location">
                  <eExam.13 nemsisName="Back and Spine Assessment Finding Location"/>
                  <eExam.14 nemsisName="Back and Spine Assessment"/>
                </eExam.SpineGroup>
                <eExam.ExtremityGroup nemsisName="Extremity Assessment Finding Location">
                  <eExam.15 nemsisName="Extremity Assessment Finding Location"/>
                  <eExam.16 nemsisName="Extremities Assessment"/>
                </eExam.ExtremityGroup>
                <eExam.EyeGroup nemsisName="Eye Assessment Finding Location">
                  <eExam.17 nemsisName="Eye Assessment Finding Location"/>
                  <eExam.18 nemsisName="Eye Assessment"/>
                </eExam.EyeGroup>
                <eExam.19 nemsisName="Mental Status Assessment"/>
                <eExam.20 nemsisName="Neurological Assessment"/>
              </eExam.AssessmentGroup>
              <eExam.21 nemsisName="Stroke/CVA Symptoms Resolved"/>
            </eExam>
            <eProtocols nemsisName="Medical Protocols Information">
              <eProtocols.ProtocolGroup nemsisName="Protocols Used">
                <eProtocols.01 nemsisName="Protocols Used"/>
                <eProtocols.02 nemsisName="Protocol Age Category"/>
              </eProtocols.ProtocolGroup>
            </eProtocols>
            <eMedications nemsisName="Intervention Medications Information">
              <eMedications.MedicationGroup nemsisName="Date/Time Medication Administered">
                <eMedications.01 nemsisName="Date/Time Medication Administered"/>
                <eMedications.02 nemsisName="Medication Administered Prior to this Unit's EMS Care"/>
                <eMedications.03 nemsisName="Medication Given"/>
                <eMedications.04 nemsisName="Medication Administered Route"/>
                <eMedications.DosageGroup nemsisName="Medication Dosage">
                  <eMedications.05 nemsisName="Medication Dosage"/>
                  <eMedications.06 nemsisName="Medication Dosage Units"/>
                </eMedications.DosageGroup>
                <eMedications.07 nemsisName="Response to Medication"/>
                <eMedications.08 nemsisName="Medication Complication"/>
                <eMedications.09 nemsisName="Medication Crew (Healthcare Professionals) ID"/>
                <eMedications.10 nemsisName="Role/Type of Person Administering Medication"/>
                <eMedications.11 nemsisName="Medication Authorization"/>
                <eMedications.12 nemsisName="Medication Authorizing Physician"/>
              </eMedications.MedicationGroup>
            </eMedications>
            <eProcedures nemsisName="Intervention Procedures Information">
              <eProcedures.ProcedureGroup nemsisName="Date/Time Procedure Performed">
                <eProcedures.01 nemsisName="Date/Time Procedure Performed"/>
                <eProcedures.02 nemsisName="Procedure Performed Prior to this Unit's EMS Care"/>
                <eProcedures.03 nemsisName="Procedure"/>
                <eProcedures.04 nemsisName="Size of Procedure Equipment"/>
                <eProcedures.05 nemsisName="Number of Procedure Attempts"/>
                <eProcedures.06 nemsisName="Procedure Successful"/>
                <eProcedures.07 nemsisName="Procedure Complication"/>
                <eProcedures.08 nemsisName="Response to Procedure"/>
                <eProcedures.09 nemsisName="Procedure Crew Members ID"/>
                <eProcedures.10 nemsisName="Role/Type of Person Performing the Procedure"/>
                <eProcedures.11 nemsisName="Procedure Authorization"/>
                <eProcedures.12 nemsisName="Procedure Authorizing Physician"/>
                <eProcedures.13 nemsisName="Vascular Access Location"/>
              </eProcedures.ProcedureGroup>
            </eProcedures>
            <eAirway nemsisName="Airway Device Information">
              <eAirway.AirwayGroup nemsisName="Indications for Invasive Airway">
                <eAirway.01 nemsisName="Indications for Invasive Airway"/>
                <eAirway.ConfirmationGroup nemsisName="Date/Time Airway Device Placement Confirmation">
                  <eAirway.02 nemsisName="Date/Time Airway Device Placement Confirmation"/>
                  <eAirway.03 nemsisName="Airway Device Being Confirmed"/>
                  <eAirway.04 nemsisName="Airway Device Placement Confirmed Method"/>
                  <eAirway.05 nemsisName="Tube Depth"/>
                  <eAirway.06 nemsisName="Type of Individual Confirming Airway Device Placement"/>
                  <eAirway.07 nemsisName="Crew Member ID"/>
                </eAirway.ConfirmationGroup>
                <eAirway.08 nemsisName="Airway Complications Encountered"/>
                <eAirway.09 nemsisName="Suspected Reasons for Failed Airway Management"/>
                <eAirway.10 nemsisName="Date/Time Decision to Manage the Patient with an Invasive Airway"/>
                <eAirway.11 nemsisName="Date/Time Invasive Airway Placement Attempts Abandoned"/>
              </eAirway.AirwayGroup>
            </eAirway>
            <eDevice nemsisName="Medical Device Information">
              <eDevice.DeviceGroup nemsisName="Medical Device Serial Number">
                <eDevice.01 nemsisName="Medical Device Serial Number"/>
                <eDevice.02 nemsisName="Date/Time of Event (per Medical Device)"/>
                <eDevice.03 nemsisName="Medical Device Event Type"/>
                <eDevice.WaveformGroup nemsisName="Medical Device Waveform Graphic Type">
                  <eDevice.04 nemsisName="Medical Device Waveform Graphic Type"/>
                  <eDevice.05 nemsisName="Medical Device Waveform Graphic"/>
                  <eDevice.06 nemsisName="Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)"/>
                </eDevice.WaveformGroup>
                <eDevice.07 nemsisName="Medical Device ECG Lead"/>
                <eDevice.08 nemsisName="Medical Device ECG Interpretation"/>
                <eDevice.ShockGroup nemsisName="Type of Shock">
                  <eDevice.09 nemsisName="Type of Shock"/>
                  <eDevice.10 nemsisName="Shock or Pacing Energy"/>
                  <eDevice.11 nemsisName="Total Number of Shocks Delivered"/>
                  <eDevice.12 nemsisName="Pacing Rate"/>
                </eDevice.ShockGroup>
              </eDevice.DeviceGroup>
            </eDevice>
            <eDisposition nemsisName="Patient Disposition Information">
              <eDisposition.DestinationGroup nemsisName="Destination/Transferred To, Name">
                <eDisposition.01 nemsisName="Destination/Transferred To, Name"/>
                <eDisposition.02 nemsisName="Destination/Transferred To, Code"/>
                <eDisposition.03 nemsisName="Destination Street Address"/>
                <eDisposition.04 nemsisName="Destination City"/>
                <eDisposition.05 nemsisName="Destination State"/>
                <eDisposition.06 nemsisName="Destination County"/>
                <eDisposition.07 nemsisName="Destination ZIP Code"/>
                <eDisposition.08 nemsisName="Destination Country"/>
                <eDisposition.09 nemsisName="Destination GPS Location"/>
                <eDisposition.10 nemsisName="Destination Location US National Grid Coordinates "/>
              </eDisposition.DestinationGroup>
              <eDisposition.11 nemsisName="Number of Patients Transported in this EMS Unit"/>
              <eDisposition.12 nemsisName="Incident/Patient Disposition"/>
              <eDisposition.13 nemsisName="How Patient Was Moved to Ambulance"/>
              <eDisposition.14 nemsisName="Position of Patient During Transport"/>
              <eDisposition.15 nemsisName="How Patient Was Transported From Ambulance"/>
              <eDisposition.16 nemsisName="EMS Transport Method"/>
              <eDisposition.17 nemsisName="Transport Mode from Scene"/>
              <eDisposition.18 nemsisName="Additional Transport Mode Descriptors"/>
              <eDisposition.19 nemsisName="Final Patient Acuity"/>
              <eDisposition.20 nemsisName="Reason for Choosing Destination"/>
              <eDisposition.21 nemsisName="Type of Destination"/>
              <eDisposition.22 nemsisName="Hospital In-Patient Destination"/>
              <eDisposition.23 nemsisName="Hospital Capability"/>
              <eDisposition.HospitalTeamActivationGroup nemsisName="Destination Team Pre-Arrival Alert or Activation">
                <eDisposition.24 nemsisName="Destination Team Pre-Arrival Alert or Activation"/>
                <eDisposition.25 nemsisName="Date/Time of Destination Prearrival Alert or Activation"/>
              </eDisposition.HospitalTeamActivationGroup>
              <eDisposition.26 nemsisName="Disposition Instructions Provided"/>
            </eDisposition>
            <eOutcome nemsisName="Patient Outcome Information">
              <eOutcome.01 nemsisName="Emergency Department Disposition"/>
              <eOutcome.02 nemsisName="Hospital Disposition"/>
              <eOutcome.ExternalDataGroup nemsisName="External Report ID/Number Type">
                <eOutcome.03 nemsisName="External Report ID/Number Type"/>
                <eOutcome.04 nemsisName="External Report ID/Number"/>
                <eOutcome.05 nemsisName="Other Report Registry Type"/>
              </eOutcome.ExternalDataGroup>
              <eOutcome.06 nemsisName="Emergency Department Chief Complaint"/>
              <eOutcome.07 nemsisName="First ED Systolic Blood Pressure"/>
              <eOutcome.08 nemsisName="Emergency Department Recorded Cause of Injury"/>
              <eOutcome.09 nemsisName="Emergency Department Procedures"/>
              <eOutcome.10 nemsisName="Emergency Department Diagnosis"/>
              <eOutcome.11 nemsisName="Date/Time of Hospital Admission"/>
              <eOutcome.12 nemsisName="Hospital Procedures"/>
              <eOutcome.13 nemsisName="Hospital Diagnosis"/>
              <eOutcome.14 nemsisName="Total ICU Length of Stay"/>
              <eOutcome.15 nemsisName="Total Ventilator Days"/>
              <eOutcome.16 nemsisName="Date/Time of Hospital Discharge"/>
              <eOutcome.17 nemsisName="Outcome at Hospital Discharge"/>
            </eOutcome>
            <eCustomResults nemsisName="Custom Data Elements Results">
              <eCustomResults.ResultsGroup nemsisName="Custom Data Element Result">
                <eCustomResults.01 nemsisName="Custom Data Element Result"/>
                <eCustomResults.02 nemsisName="Custom Element ID Referenced"/>
                <eCustomResults.03 nemsisName="CorrelationID of PatientCareReport Element or Group"/>
              </eCustomResults.ResultsGroup>
            </eCustomResults>
            <eOther nemsisName="Other Miscellaneous Information">
              <eOther.01 nemsisName="Review Requested"/>
              <eOther.02 nemsisName="Potential System of Care/Specialty/Registry Patient"/>
              <eOther.EMSCrewMemberGroup nemsisName="Personal Protective Equipment Used">
                <eOther.03 nemsisName="Personal Protective Equipment Used"/>
                <eOther.04 nemsisName="EMS Professional (Crew Member) ID"/>
                <eOther.05 nemsisName="Suspected EMS Work Related Exposure, Injury, or Death"/>
                <eOther.06 nemsisName="The Type of Work-Related Injury, Death or Suspected Exposure"/>
              </eOther.EMSCrewMemberGroup>
              <eOther.07 nemsisName="Natural, Suspected, Intentional, or Unintentional Disaster"/>
              <eOther.08 nemsisName="Crew Member Completing this Report"/>
              <eOther.FileGroup nemsisName="External Electronic Document Type">
                <eOther.09 nemsisName="External Electronic Document Type"/>
                <eOther.10 nemsisName="File Attachment Type"/>
                <eOther.11 nemsisName="File Attachment Image"/>
              </eOther.FileGroup>
              <eOther.SignatureGroup nemsisName="Type of Person Signing">
                <eOther.12 nemsisName="Type of Person Signing"/>
                <eOther.13 nemsisName="Signature Reason"/>
                <eOther.14 nemsisName="Type Of Patient Representative"/>
                <eOther.15 nemsisName="Signature Status"/>
                <eOther.16 nemsisName="Signature File Name"/>
                <eOther.17 nemsisName="Signature File Type"/>
                <eOther.18 nemsisName="Signature Graphic"/>
                <eOther.19 nemsisName="Date/Time of Signature"/>
                <eOther.20 nemsisName="Signature Last Name"/>
                <eOther.21 nemsisName="Signature First Name"/>
              </eOther.SignatureGroup>
            </eOther>
          </PatientCareReport>
        </Header>
      </EMSDataSet>
    </nemsisElements>
  </nem:lookup>

</xsl:stylesheet>
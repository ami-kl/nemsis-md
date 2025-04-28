<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="facetFound" match="element/restrictions/*/facet" use="@name"/>
<xsl:output method="html" encoding="us-ascii"/>
<xsl:template match="/">  
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title><xsl:value-of select="element/@number"/> - <xsl:value-of select="element/name"/></title>
   <style type="text/css">
      body {font-family:"Open Sans",sans-serif; position:relative;}
            
      .pageHeadingElement {font-size:20px;}
  
      .deprecated {width:80px;font-size:14px;text-align:center;color:white;background: PURPLE no-repeat;}
      .national {width:80px;font-size:14px;text-align:center;color:white;background-color:#E10000;}
      .state    {width:80px;font-size:14px;text-align:center;color:white;background-color:#FBC723;}
      
      .numberName {font-size:16px;color:white;padding:3px 0 3px 5px;background-color:#283e56;}
         
      .definitionTitle {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}    
      .definitionValue {font-size:14px;}

      .summaryTitle         {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .summaryValue         {font-size:14px;padding:2px 0 2px 2px;border:1px solid #283e56;}
            
      .attributeTitle         {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .attributeName          {font-size:12px;font-weight:bold;color:#283e56;}
      .attributeValue         {font-size:12px;}
            
      .sectionCommentTitle    {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .sectionCommentValue    {font-size:12px;}
      
      .sectionV3ChangesTitle  {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .sectionV3ChangesValue  {font-size:12px;}

      .sectionDeprecatedCommentTitle  {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .sectionDeprecatedCommentValue  {font-size:12px;}
            
      .sectionRestrictionsEnumerationCodeTitle        {width:60px;  font-size:12px;font-weight:bold;}
      .sectionRestrictionsEnumerationDescriptionTitle {width:560px; font-size:12px;font-weight:bold;}
      .sectionRestrictionsEnumerationCodeValue        {width:60px;  font-size:12px;}
      .sectionRestrictionsEnumerationDescriptionValue {width:560px; font-size:12px;}     
             
      .sectionAssociatedMeasuresTitle     {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .sectionAssociatedMeasuresValue     {font-size:12px;padding-right:30px;}      
      
      .sectionRestrictionsTitle   {font-size:14px;background:#F0F0F0;color:#283e56;padding:2px 0 2px 2px;border:1px solid #283e56;}
      .sectionRestrictionsPattern {width:600px;font-size:12px;}
      
      .sectionRestrictionsDataTypeTitle   {width:120px;font-size:12px;font-weight:bold;}
      .sectionRestrictionsDataTypeValue   {width:120px;font-size:12px;}     
      .sectionRestrictionsConstraintTitle {width:155px;font-size:12px;font-weight:bold;}
      .sectionRestrictionsConstraintValue {width:155px;font-size:12px;}
      
      .sectionConstraintsHeaderDataType   {width:100px;font-size:12px;font-weight:bold;}
      .sectionConstraintsValueDataType    {width:100px;font-size:12px;}      
      .sectionConstraintsHeaderDateTime   {width:200px;font-size:12px;font-weight:bold;}
      .sectionConstraintsValueDateTime    {width:200px;font-size:12px;}
      
      .td1 {height:1px;width:1px;background-color:#283e56;}
      .td2 {height:1px;background-color:#283e56;}
      .td3 {width:1px;background-color:#283e56;}
      
      .assert td {padding: 1ex 1ex 1ex 0;}
      .role    {display:inline-block;padding:0.5ex;text-align:center;width:8ex;}
      .Fatal   {background-color: #e10000;}
      .Error   {background-color: #fbc723;}
      .Warning {background-color: #ffffbb;}
    </style>
</head>
<body>

  <xsl:variable name="isDeprecated" select="element/deprecated[text()='Yes']"/>
  <table border="0" cellspacing="0" cellpadding="0" width="675px">    
    <tr><td>
        <table width="675px" border="0" cellspacing="0" cellpadding="0" >
          <tr>            
            <xsl:choose><xsl:when test="$isDeprecated">
            <td class="deprecated" height="23px">Deprecated</td>
            </xsl:when></xsl:choose> 
            
            <td align="right" class="pageHeadingElement">
			  <xsl:choose>
				  <xsl:when test="$isDeprecated">
				    <span style="text-decoration: line-through;">
				      <xsl:choose>
				        <xsl:when test="contains(element/@number, ' (DEPRECATED)')">
				          <xsl:value-of select="substring-before(element/@number, ' (DEPRECATED)')"/>
				        </xsl:when>
				        <xsl:otherwise>
				          <xsl:value-of select="element/@number"/>
				        </xsl:otherwise>
				      </xsl:choose>
				    </span>
				    <span> (DEPRECATED)</span>
				  </xsl:when>
				  <xsl:otherwise>
				    <xsl:value-of select="element/@number"/>
				  </xsl:otherwise>
			  </xsl:choose>
            </td>
          </tr>
        </table>
    </td></tr>     
    <xsl:choose><xsl:when test="element/state/text()='Yes' or element/national/text()='Yes' or element/deprecated/text()='Yes'">
    <tr><td height="8px;"></td></tr> 
    <tr><td>
        <table border="0" cellspacing="0" cellpadding="0" align="right" >
          <tr>  
            <xsl:choose><xsl:when test="element/state/text()='Yes'">
            <td class="state" height="23px">
			  <xsl:choose>
				<xsl:when test="$isDeprecated">
				  <span style="text-decoration: line-through;">State</span>
				</xsl:when>
				<xsl:otherwise>State</xsl:otherwise>
			  </xsl:choose>
			</td>
            </xsl:when></xsl:choose> 
               
            <xsl:choose><xsl:when test="element/national/text()='Yes'">
            <td width="5px;"></td> 
            <td class="national" height="23px">
			  <xsl:choose>
				<xsl:when test="$isDeprecated">
				  <span style="text-decoration: line-through;">National</span>
				</xsl:when>
				<xsl:otherwise>National</xsl:otherwise>
			  </xsl:choose>
			</td>
            <td width="2px;"></td> 
            </xsl:when></xsl:choose>  
             
          </tr>
        </table>
    </td></tr>  
    </xsl:when></xsl:choose>    
    <tr><td height="5px;"></td></tr>  
    <tr><td>
        <table width="675px" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td class="numberName" height="26px;">
              <xsl:choose>
				  <xsl:when test="$isDeprecated">
					<span style="text-decoration: line-through;">
					  <xsl:choose>
						<xsl:when test="contains(element/@number, ' (DEPRECATED)')">
						  <xsl:value-of select="substring-before(element/@number, ' (DEPRECATED)')"/>
						</xsl:when>
						<xsl:otherwise>
						  <xsl:value-of select="element/@number"/>
						</xsl:otherwise>
					  </xsl:choose>
					</span>
				  </xsl:when>
				  <xsl:otherwise>
					<xsl:value-of select="element/@number"/>
				  </xsl:otherwise>
				</xsl:choose> - 
                <xsl:choose>  
                  <xsl:when test="element/refNumber"> 
                    (<xsl:value-of select="element/refNumber"/>) 
                  </xsl:when>
                </xsl:choose> 
              <xsl:choose>
	            <xsl:when test="$isDeprecated">
	              <span style="text-decoration: line-through;">
	                <xsl:choose>
				        <xsl:when test="contains(element/name, ' (DEPRECATED)')">
				          <xsl:value-of select="substring-before(element/name, ' (DEPRECATED)')"/>
				        </xsl:when>
				        <xsl:otherwise>
				          <xsl:value-of select="element/name"/>
				        </xsl:otherwise>
				      </xsl:choose>
	              </span>
	              <span> (DEPRECATED)</span>
	            </xsl:when>
	            <xsl:otherwise>
	              <xsl:value-of select="element/name"/>
	            </xsl:otherwise>
	          </xsl:choose>
            </td>
          </tr>
        </table>
    </td></tr> 
    <tr><td height="5px;"></td></tr>     
    <tr><td>       
        <table border="0" cellspacing="0" cellpadding="0" width="675px">
          <tr>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0" width="675px" >
                <tr>
                  <td>
                    <table border="0" cellspacing="0" cellpadding="0" width="675px" height="26px">
                      <tr>
                        <td width="667px" class="definitionTitle">Definition</td>
                      </tr>      
                    </table>
                  </td>
                </tr>
                <tr><td height="2px;"></td></tr>
                <tr>                  
                  <td class="definitionValue" style="padding-left:5px">
					<xsl:choose>
			            <xsl:when test="$isDeprecated">
			              <span style="text-decoration: line-through;">
			                <xsl:choose>
						        <xsl:when test="contains(element/definition, ' (DEPRECATED)')">
						          <xsl:value-of select="substring-before(element/definition, ' (DEPRECATED)')"/>
						        </xsl:when>
						        <xsl:otherwise>
						          <xsl:value-of select="element/definition"/>
						        </xsl:otherwise>
						      </xsl:choose>
			              </span>
			              <span> (DEPRECATED)</span>
			            </xsl:when>
			            <xsl:otherwise>
			              <xsl:value-of select="element/definition"/>
			            </xsl:otherwise>
			          </xsl:choose>
				  </td>
                </tr>
              </table>
            </td>        
          </tr>
        </table>
    </td></tr>    
    <tr><td height="10px;"></td></tr>         
    <tr><td>         
        <table border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0" >
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">National Element</td>
                      </tr>      
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
						  <xsl:choose>
							<xsl:when test="$isDeprecated">
							  <span style="text-decoration: line-through;">
								<xsl:value-of select="element/national"/>
							  </span>
							</xsl:when>
							<xsl:otherwise>
							  <xsl:value-of select="element/national"/>
							</xsl:otherwise>
						  </xsl:choose>
						</td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
            <td width="5px"></td>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">Pertinent Negatives (PN)</td>
                      </tr>      
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">                        
                          <xsl:choose>
                            <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:choose>
							        <xsl:when test="element/attributes/PN">Yes</xsl:when>
							        <xsl:otherwise>No</xsl:otherwise>
							      </xsl:choose>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:choose>
							      <xsl:when test="element/attributes/PN">Yes</xsl:when>
							      <xsl:otherwise>No</xsl:otherwise>
							    </xsl:choose>
							  </xsl:otherwise>
                          </xsl:choose>    
                        </td>
                      </tr>      
                    </table>
                  </td>
                </tr>
              </table>
            </td>            
          </tr>
          <tr><td height="3px;"></td></tr> 
          <tr>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">State Element</td>
                      </tr>      
                    </table>
                  </td> 
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
						  <xsl:choose>
							<xsl:when test="$isDeprecated">
							  <span style="text-decoration: line-through;">
								<xsl:value-of select="element/state"/>
							  </span>
							</xsl:when>
							<xsl:otherwise>
							  <xsl:value-of select="element/state"/>
							</xsl:otherwise>
						  </xsl:choose>
						</td>
                      </tr>      
                    </table>
                  </td>
                </tr>
              </table>
            </td>   
            <td width="5px"></td>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">NOT Values</td>
                      </tr>      
                    </table>
                  </td>    
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
                          <xsl:choose>
                            <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:choose>
							        <xsl:when test="element/attributes/NV">Yes</xsl:when>
							        <xsl:otherwise>No</xsl:otherwise>
							      </xsl:choose>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:choose>
							      <xsl:when test="element/attributes/NV">Yes</xsl:when>
							      <xsl:otherwise>No</xsl:otherwise>
							    </xsl:choose>
							  </xsl:otherwise>
                          </xsl:choose> 
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>                     
          </tr>          
          <tr><td height="3px;"></td></tr> 
          <tr>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">Version 2 Element</td>
                      </tr>
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">                        
                          <xsl:choose>
                            <xsl:when test="string-length(element/v2Number) &gt; 0">
								<xsl:value-of select="element/v2Number"/>
							</xsl:when>
                            <xsl:otherwise>&#160;</xsl:otherwise>
                          </xsl:choose>     
                        </td>
                      </tr>      
                    </table>
                  </td>
                </tr>
              </table>
            </td>
            <td width="5px"></td>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">Is Nillable</td>
                      </tr>
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
							<xsl:choose>
							  <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:value-of select="element/@isNillable"/>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:value-of select="element/@isNillable"/>
							  </xsl:otherwise>
							</xsl:choose>
						</td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>            
          </tr>          
          <tr><td height="3px"></td></tr> 
          <tr>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">Usage</td>
                      </tr>
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
                          <xsl:choose>
                            <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:choose>
							        <xsl:when test="element/usage">
							          <xsl:value-of select="element/usage"/>
							        </xsl:when>
							        <xsl:otherwise>&#160;</xsl:otherwise>
							      </xsl:choose>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:choose>
							      <xsl:when test="element/usage">
							        <xsl:value-of select="element/usage"/>
							      </xsl:when>
							      <xsl:otherwise>&#160;</xsl:otherwise>
							    </xsl:choose>
							  </xsl:otherwise>
                          </xsl:choose>   
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
            <td width="5px"></td>
            <td>  
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <table width="180px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="summaryTitle">Recurrence</td>
                      </tr>      
                    </table>
                  </td>
                  <td width="2px"></td>
                  <td>
                    <table width="140px" cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td align="center" class="summaryValue">
                          <xsl:choose>
							  <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:value-of select="element/@minOccurs"/> : <xsl:value-of select="element/@maxOccurs"/>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:value-of select="element/@minOccurs"/> : <xsl:value-of select="element/@maxOccurs"/>
							  </xsl:otherwise>
							</xsl:choose>
                        </td>
                      </tr>      
                    </table>
                  </td>
                </tr>
              </table>
            </td>            
          </tr>   
        </table>
    </td></tr>
        
    
    <!-- PERFORMANCE MEASURES SECTION -->  
    <xsl:choose>  
    <xsl:when test="element/performanceMeasuresGroup/*"> 
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="667px" class="sectionAssociatedMeasuresTitle">Associated Performance Measure Initiatives</td>
                </tr>      
              </table>
            </td>
          </tr>
          <tr><td height="2px;"></td></tr> 
          <tr>
            <td>
              <table cellspacing="0" cellpadding="0" border="0" >
                <tr>
                <td width="5px"></td>
                <xsl:for-each select="element/performanceMeasuresGroup/*">                 
                    <td class="sectionAssociatedMeasuresValue">
                      <xsl:choose>
						  <xsl:when test="$isDeprecated">
						    <span style="text-decoration: line-through;">
						      <xsl:value-of select="."/>
						    </span>
						  </xsl:when>
						  <xsl:otherwise>
						    <xsl:value-of select="."/>
						  </xsl:otherwise>
						</xsl:choose>
                    </td>                 
                </xsl:for-each>  
                </tr>      
              </table>
            </td>                       
          </tr>
        </table>
    </td></tr>           
    </xsl:when>
    </xsl:choose>     
    
    
    
    <!-- ATTRIBUTES --> 
    <xsl:choose>  
    <xsl:when test="element/attributes/*">
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="667px" class="attributeTitle">Attributes</td>
                </tr>      
              </table>
            </td>
          </tr>
          
          <xsl:choose><xsl:when test="element/attributes/NV">
          <tr><td height="5px;"></td></tr>  
          <tr>
            <td>
              <table width="667px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td width="667px" class="attributeName">NOT Values (NV)</td>
                </tr>         
                <tr>
                  <td width="5px"></td>
                  <td>                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td>
                        <xsl:for-each select="element/attributes/NV/*/facet">
                        <div class="attributeValue" style="width:220px;float:left;white-space: nowrap;">
                          <xsl:choose>
						        <xsl:when test="$isDeprecated">
						          <span style="text-decoration: line-through;">
						            <xsl:value-of select="@value"/>
						          </span> - 
						          <span style="text-decoration: line-through;">
						            <xsl:value-of select="@annotation" disable-output-escaping="yes"/>
						          </span> 
						        </xsl:when>
						        <xsl:otherwise>
						          <xsl:value-of select="@value"/> - <xsl:value-of select="@annotation" disable-output-escaping="yes"/>
						        </xsl:otherwise>
						      </xsl:choose>
                        </div>
                        </xsl:for-each> 
                        </td>
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose>
          
          <xsl:choose><xsl:when test="element/attributes/PN">
          <tr><td height="5px;"></td></tr>  
          <tr>
            <td>
              <table width="667px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td width="667px" class="attributeName">Pertinent Negatives (PN)</td>
                </tr>         
                <tr>
                  <td width="5px"></td>
                  <td>                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td>
                        <xsl:for-each select="element/attributes/PN/*/facet">
                        <div class="attributeValue" style="width:220px;float:left;white-space: nowrap;">
                          <xsl:choose>
							  <xsl:when test="$isDeprecated">
							    <span style="text-decoration: line-through;">
							      <xsl:value-of select="@value"/> - <xsl:value-of select="@annotation"/>
							    </span>
							  </xsl:when>
							  <xsl:otherwise>
							    <xsl:value-of select="@value"/> - <xsl:value-of select="@annotation"/>
							  </xsl:otherwise>
							</xsl:choose>
                        </div>
                        </xsl:for-each> 
                        </td>
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose>
          
          <xsl:choose><xsl:when test="element/attributes/CodeType">
          <tr><td height="5px;"></td></tr>  
          <tr>
            <td>
              <table width="667px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td width="667px" class="attributeName">Code Type</td>
                </tr>         
                <tr>
                  <td width="5px"></td>
                  <td>                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td>
                        <xsl:for-each select="element/attributes/CodeType/*/facet">
                        <div class="attributeValue" style="width:220px;float:left;white-space: nowrap;">
                          <xsl:value-of select="@value"/> - <xsl:value-of select="@annotation" disable-output-escaping="yes"/>
                        </div>
                        </xsl:for-each> 
                        </td>
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose>

          <xsl:for-each select="element/attributes/*">
          <xsl:choose><xsl:when test="name()!='PN' and name()!='NV' and name()!='CodeType' and ./facet/@name!='enumeration' and name()!='TIMESTAMP' ">
          <tr><td style="padding:4px 0 0 0">
              <table width="667px" cellspacing="0" cellpadding="0" border="0">
                <tr>
                  <td width="667px" class="attributeName" style="padding:0 0 0 5px"><xsl:value-of select="name()"/></td>
                </tr>         
                <tr>
                  <td style="padding:0 0 0 5px">                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td class="attributeValue" style="width:150px;"><b>Data Type:</b> String</td>
                        <xsl:for-each select="./facet">
                          <xsl:choose><xsl:when test="@name!='pattern'">
                          <td class="attributeValue" style="width:250px;"><b><xsl:value-of select="@name"/>: </b><xsl:value-of select="@value"/></td>
                          </xsl:when></xsl:choose>
                        </xsl:for-each> 
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose>
          </xsl:for-each> 
          
          
          
          <xsl:for-each select="element/attributes/*">
          <xsl:choose><xsl:when test="name()='TIMESTAMP'"> 
          <tr><td style="padding:4px 0 0 0">
              <table width="667px" cellspacing="0" cellpadding="0" border="0">
                <tr>
                  <td width="667px" class="attributeName" style="padding:0 0 0 5px"><xsl:value-of select="name()"/></td>
                </tr>         
                <tr>
                  <td style="padding:0 0 0 5px">                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td class="attributeValue" style="width:150px;"><b>Data Type: </b><xsl:value-of select="@baseType"/></td>
                        <xsl:for-each select="./facet">
                          <xsl:choose><xsl:when test="@name!='pattern'">
                          <td class="attributeValue" style="width:250px;"><b><xsl:value-of select="@name"/>: </b><xsl:value-of select="@value"/></td>
                          </xsl:when></xsl:choose>
                        </xsl:for-each> 
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          <tr>
            <td style="padding:4px 0 5px 5px">
              <table width="675px" cellspacing="0" cellpadding="0" border="0">
                <tr>
                  <td width="675px" class="sectionRestrictionsDataTypeTitle">Pattern</td>
                </tr>         
                <xsl:for-each select="./facet">
                <xsl:choose><xsl:when test="@name='pattern'">
                <tr>
                  <td class="sectionRestrictionsPattern"> 
                    <xsl:value-of select="@value"/> 
                  </td>
                </tr>
                </xsl:when></xsl:choose>
                </xsl:for-each>   
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose> 
          </xsl:for-each>        
          
          <xsl:for-each select="element/attributes/*">
          <xsl:choose><xsl:when test="facet/@name='enumeration'">
          <tr><td height="5px;"></td></tr>  
          <tr>
            <td>
              <table width="667px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td width="667px" class="attributeName"><xsl:value-of select="name()"/></td>
                </tr>         
                <tr>
                  <td width="5px"></td>
                  <td>                      
                    <div class="attributeValue" style="float:left;"> 
                    <table cellspacing="0" cellpadding="0" border="0">
                      <tr>
                        <td>
                        <xsl:for-each select="./facet">                            
                          <div class="attributeValue" style="width:220px;float:left;white-space: nowrap;">
                          <xsl:value-of select="@value"/> - <xsl:value-of select="@annotation"/>
                          </div>
                        </xsl:for-each> 
                        </td>
                      </tr>
                    </table>
                    </div>
                  </td>
                </tr>  
              </table>
            </td>
          </tr>
          </xsl:when></xsl:choose>
          </xsl:for-each>
        </table>          
    </td></tr>    
    </xsl:when>
    </xsl:choose>        
    
    
    <!-- CONSTRAINTS SECTION & PATTERNS --> 
    <xsl:choose>  
    <xsl:when test="element/restrictions/*/facet/@name!='enumeration' or element/restrictions/*/@baseType='base64Binary'">
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="667px" class="sectionRestrictionsTitle">Constraints</td>
                </tr>      

              </table>
            </td>
          </tr>
          
          <xsl:choose><xsl:when test="element/restrictions/*/facet/@name!='pattern'  or element/restrictions/*/@baseType='base64Binary'"> 
          <tr>
            <td style="padding-left:5px">              
              <table cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td width="120px">
                    <table cellspacing="0" cellpadding="0" border="0" >
                      <tr>
                        <td class="sectionRestrictionsDataTypeTitle">Data Type</td>
                      </tr>
                      <tr>
                      <td class="sectionRestrictionsConstraintValue">
                        <xsl:value-of select="element/restrictions/*/@baseType"/>
                      </td>
                      </tr>
                    </table>
                  </td>          
                  <xsl:for-each select="element/restrictions/*/facet">
                    <xsl:if test="@name!='pattern'">
                    <td>
                        <table cellspacing="0" cellpadding="0">
                        <tr>
                          <td class="sectionRestrictionsConstraintTitle"><xsl:value-of select="@name"/></td>   
                        </tr>
                        <tr>                 
                          <td class="sectionRestrictionsConstraintValue"> 
                            <xsl:choose>  
                              <xsl:when test="../@baseType='positiveInteger' ">
                                <xsl:value-of select="format-number(number(@value),'###,###')"/>
                              </xsl:when>
                              <xsl:otherwise>
                                <xsl:value-of select="@value"/>
                              </xsl:otherwise>
                            </xsl:choose>  
                          </td>
                        </tr>
                      </table> 
                    </td>
                    <td width="15px"/>
                    </xsl:if>
                  </xsl:for-each>       
                </tr>  
              </table>  
            </td>
          </tr>    
          </xsl:when></xsl:choose> 
          
          <xsl:choose><xsl:when test="element/restrictions/*/facet/@name='pattern'"> 
            <xsl:choose><xsl:when test="element/restrictions/*">
              <tr><td height="8px;"></td></tr> 
            </xsl:when>
            <xsl:otherwise>
              <tr><td height="3px;"></td></tr> 
            </xsl:otherwise></xsl:choose>
            <tr>
              <td style="padding-left:5px">
                <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                  <tr>
                    <td width="5px"></td>
                    <td width="675px" class="sectionRestrictionsDataTypeTitle">Pattern</td>
                  </tr>         
                  <xsl:for-each select="element/restrictions/*/facet">
                  <xsl:choose><xsl:when test="@name='pattern'">
                  <tr>
                    <td width="5px"></td>
                    <td class="sectionRestrictionsPattern"> 
                      <xsl:value-of select="@value"/> 
                    </td>
                  </tr>
                  </xsl:when></xsl:choose>
                  </xsl:for-each>   
                </table>
              </td>
            </tr>
          </xsl:when></xsl:choose> 
            
        </table>          
    </td></tr>    
    </xsl:when>
    </xsl:choose>         
        
    <!-- ENUMERATIONS SECTION -->
    <xsl:choose>  
    <xsl:when test="element/restrictions/*/facet/@name='enumeration'">
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td class="sectionCommentTitle">Code List</td>
                </tr>      
              </table>
            </td>
          </tr>
          <tr><td height="3px;"></td></tr> 
          <tr>
            <td>
              <table cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td class="sectionRestrictionsEnumerationCodeTitle">Code</td>
                  <td class="sectionRestrictionsEnumerationCodeTitle">Description</td>
                </tr>
                <tr><td height="3px"></td></tr>
                <xsl:for-each select="element/restrictions/*/facet">
                  <tr>
                    <td width="5px"></td>
                    <td class="sectionRestrictionsEnumerationCodeValue" valign="top">
                      <xsl:choose>
						  <xsl:when test="$isDeprecated">
							<span style="text-decoration: line-through;">
							  <xsl:value-of select="@value"/>
							</span>
						  </xsl:when>
						  <xsl:otherwise>
							<xsl:value-of select="@value"/>
						  </xsl:otherwise>
						</xsl:choose>
                    </td>
                    <td class="sectionRestrictionsEnumerationDescriptionValue">
                        
                        <!--fix for escaping &lt;-->
                        <xsl:choose>
						  <xsl:when test="$isDeprecated or contains(@annotation, '(DEPRECATED)')">
						    <span style="text-decoration: line-through;">
						      	<xsl:choose>
							        <xsl:when test="contains(@annotation, '(DEPRECATED)')">
							        	<xsl:call-template name="replace-string">
								          <xsl:with-param name="text" select="substring-before(@annotation, '(DEPRECATED)')"/>
								          <xsl:with-param name="replace" select="'&amp;lt;'"/>
							        	  <xsl:with-param name="with" select="'&lt;'"/>
								        </xsl:call-template>
							        </xsl:when>
							        <xsl:otherwise>
							        	<xsl:call-template name="replace-string">
								          <xsl:with-param name="text" select="@annotation"/>
								          <xsl:with-param name="replace" select="'&amp;lt;'"/>
							        	  <xsl:with-param name="with" select="'&lt;'"/>
								        </xsl:call-template>
							        </xsl:otherwise>
							      </xsl:choose>
						        <!-- <xsl:with-param name="text" select="substring-before(@annotation, '(DEPRECATED)')"/> -->
						    </span>
						    <span>(DEPRECATED)</span>
						  </xsl:when>
						  <xsl:otherwise>
						    <xsl:call-template name="replace-string">
						      <xsl:with-param name="text" select="@annotation"/>
						      <xsl:with-param name="replace" select="'&amp;lt;'"/>
						      <xsl:with-param name="with" select="'&lt;'"/>
						    </xsl:call-template>
						  </xsl:otherwise>
						</xsl:choose>
                        <!--<xsl:value-of    disable-output-escaping="no" select="string(@annotation)"/>-->
                        
						<!-- Not sure how this is supposed to work or if it ever worked -->
    									<xsl:choose>  
    									<xsl:when test="@deprecated='true'">
                           <span style="background:purple;margin:0 2px;color:white;padding:0 2px">DEPRECATED</span>
    									</xsl:when>
    									</xsl:choose>  
                    </td>
                  </tr>
                  <tr><td height="3px"></td></tr>
                </xsl:for-each> 
              </table>
            </td>                       
          </tr>
        </table>     
    </td></tr>          
    </xsl:when>
    </xsl:choose>    
        
    <!-- DATA ELEMENT COMMENT SECTION -->
    <!--<xsl:choose>  
    <xsl:when test="string-length(element/v3Comment) &gt;= 0">-->
    <tr><td height="4px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0">
          <tr>
                  <td width="667px" class="sectionCommentTitle">Data Element Comment</td>
          </tr>
          <tr>
            <td class="sectionCommentValue" style="padding-left:5px"><xsl:copy-of select="element/v3Comment"/></td>
          </tr>
        </table>     
    </td></tr>       
       
    <!-- VERSION 3 CHANGES IMPLEMENTED SECTION -->
    <xsl:choose>  
    <xsl:when test="string-length(element/v3Changes) &gt; 0">
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0" width="675px">
          <tr>
                  <td width="667px" class="sectionV3ChangesTitle">Version 3 Changes Implemented</td>
          </tr>
          <tr>
            <td class="sectionV3ChangesValue" style="padding-left:5px"><xsl:copy-of select="element/v3Changes"/></td>
          </tr>
        </table>     
    </td></tr>       
    </xsl:when>
    </xsl:choose>
    
    <!-- Deprecated Comment SECTION -->
    <xsl:choose>  
    <xsl:when test="string-length(element/deprecatedComment) &gt; 0">
    <tr><td height="8px;"></td></tr> 
    <tr><td>    
        <table border="0" cellspacing="0" cellpadding="0" width="675px">
          <tr>
            <td width="667px" class="sectionDeprecatedCommentTitle">Deprecated Comment</td>
          </tr>
          <tr>
            <td class="sectionDeprecatedComment" style="padding-left:5px"><xsl:copy-of select="element/deprecatedComment"/></td>
          </tr>
        </table>     
    </td></tr>       
    </xsl:when>
    </xsl:choose>
     
    <!-- VALIDATION RULES SECTION -->
    <xsl:if test="element/asserts">
    <tr><td height="8px;"></td></tr> 
    <tr><td>
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <table width="675px" cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td class="sectionCommentTitle">Associated Validation Rules</td>
                </tr>
              </table>
            </td>
          </tr>
          <tr><td height="3px;"></td></tr> 
          <tr>
            <td>
              <table cellspacing="0" cellpadding="0" border="0" >
                <tr>
                  <td width="5px"></td>
                  <td class="sectionRestrictionsEnumerationCodeTitle">Rule ID</td>
                  <td class="sectionRestrictionsEnumerationCodeTitle">Level</td>
                  <td class="sectionRestrictionsEnumerationCodeTitle">Message</td>
                </tr>
                <tr><td height="3px"></td></tr>
                <xsl:for-each select="element/asserts/assert">
                  <xsl:sort select="@id"/>
                  <tr class="assert">
                    <td width="5px"></td>
                    <td class="sectionRestrictionsEnumerationCodeValue" valign="top">
                    	<xsl:choose>
						  <xsl:when test="$isDeprecated">
						    <span style="text-decoration: line-through;">
				      			<xsl:value-of select="@id"/>
							</span>
						  </xsl:when>
						  <xsl:otherwise>
						    <xsl:value-of select="@id"/>
						  </xsl:otherwise>
						</xsl:choose>
                    </td>
                    <td class="sectionRestrictionsEnumerationCodeValue" valign="top">
                      <span>
                        <xsl:attribute name="class">
                          role
                          <xsl:value-of select="@role" />
                        </xsl:attribute>
                        
                        <xsl:choose>
						  <xsl:when test="$isDeprecated">
						    <span style="text-decoration: line-through;">
					      		<xsl:value-of select="@role" />
							</span>
						  </xsl:when>
						  <xsl:otherwise>
						    <xsl:value-of select="@role" />
						  </xsl:otherwise>
						</xsl:choose>
                    </span>
                    </td>
                    <td class="sectionRestrictionsEnumerationDescriptionValue">
                        <xsl:choose>
						  <xsl:when test="$isDeprecated">
						    <span style="text-decoration: line-through;">
				      			<!--fix for escaping &lt;-->
					        	<xsl:call-template name="replace-string">
						          <xsl:with-param name="text" select="."/>
						          <xsl:with-param name="replace" select="'&amp;lt;'"/>
					        	  <xsl:with-param name="with" select="'&lt;'"/>
						        </xsl:call-template>
							</span>
						  </xsl:when>
						  <xsl:otherwise>
						  	<!--fix for escaping &lt;-->
						    <xsl:call-template name="replace-string">
						      <xsl:with-param name="text" select="."/>
						      <xsl:with-param name="replace" select="'&amp;lt;'"/>
						      <xsl:with-param name="with" select="'&lt;'"/>
						    </xsl:call-template>
						  </xsl:otherwise>
						</xsl:choose>
                    </td>
                  </tr>
                  <tr><td height="3px"></td></tr>
                </xsl:for-each>
              </table>
            </td>
          </tr>
        </table>
    </td></tr>
    </xsl:if>
  </table>
           
 
                 
</body>
</html>
</xsl:template>
<xsl:template name="replace-string">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="with"/>
    <xsl:choose>
      <xsl:when test="contains($text,$replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$with"/>
        <xsl:call-template name="replace-string">
          <xsl:with-param name="text"
select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="with" select="$with"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
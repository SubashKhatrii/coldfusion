<?xml version="1.0" encoding="UTF-8"?>
<!-- Copyright (c) 1995-2005 Macromedia, Inc. All rights reserved. -->

<xsl:stylesheet version="1.0"
xmlns:xsi="http://www.w3.org/1999/XMLSchema-instance" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:cf="http://www.macromedia.com/2004/cfform" 
xmlns:xf="http://www.w3.org/2002/xforms" 
xmlns:html="http://www.w3.org/1999/xhtml" 
exclude-result-prefixes="xsi cf xsl xf html">
 
	<!-- <cfformgroup type="vertical"> -->
	<xsl:template match="xf:group[@appearance='vertical']">
		<xsl:call-template name="vertical"/>
	</xsl:template>


	<!-- default vertical align group -->
	<xsl:template name="vertical">
		<!-- create a table row for each child -->
		<xsl:element name="div">
			<xsl:attribute name="class">vertical</xsl:attribute>

			<xsl:if test="xf:label/text()">
				<xsl:element name="span">
					<xsl:attribute name="class">cfHeaderTitle</xsl:attribute>
					<xsl:value-of select="xf:label/text()"/>
				</xsl:element>
			</xsl:if>
			
									
			<xsl:for-each select="*[not(self::xf:extension)][not(self::xf:label)]">

				<xsl:choose>
					<!-- child is another group element -->
					<xsl:when test="self::xf:group">
						<xsl:apply-templates select="."/>	
					</xsl:when>
					<xsl:otherwise>

							<!-- set the correct class for this form Element -->
							<xsl:choose>
							
								<!-- textarea: put the label above the textbox -->
								<xsl:when test="self::xf:textarea">
									<xsl:element name="p">
										<xsl:attribute name="class">cfLabelPosTop</xsl:attribute>
										<xsl:element name="span"><!-- empty span, mac IE hack -->
																									
											<!-- element is a form element. So we will set the label and classes -->
											<xsl:if test="not (self::xf:group) and not(self::xf:submit) and not(self::xf:trigger)">
												<xsl:element name="span">
													<xsl:attribute name="class">cfLabelTitle cfFirstChild</xsl:attribute>
													<xsl:element name="label">
														<xsl:value-of select="xf:label/text()"/>
														<xsl:text> </xsl:text>
													</xsl:element>
												</xsl:element>
											</xsl:if>
									
											<xsl:apply-templates select="."/>
										</xsl:element>						
									</xsl:element>
								</xsl:when>
								
								<!-- radio: -->
								<xsl:when test="self::xf:select1[@appearance='full']">
									<xsl:for-each select="xf:choices/xf:item">
									<xsl:element name="div">
										<xsl:attribute name="class">cfLabelPosTop</xsl:attribute>
											<xsl:element name="p">
												<xsl:call-template name="radio"/>
											</xsl:element>
									</xsl:element>
									</xsl:for-each>
								</xsl:when>
								
								
								<!-- checkbox: -->
								<xsl:when test="self::xf:select[@appearance='full']">
				
									<xsl:for-each select="xf:choices/xf:item">
									<xsl:element name="div">
										<xsl:attribute name="class">cfLabelPosTop</xsl:attribute>									
											<xsl:element name="p">												
												<xsl:call-template name="checkbox"/>
											</xsl:element>
									</xsl:element>
									</xsl:for-each>
									
								</xsl:when>
								
								<xsl:when test="self::form | self::xf:model">
									<xsl:apply-templates select="."/>
								</xsl:when>

								<xsl:otherwise>
									<xsl:element name="div">
										<xsl:attribute name="class">cfLabelPosTop</xsl:attribute>								
											<xsl:element name="p">
												<xsl:element name="span"><!-- empty span, mac IE hack -->
		
														<!-- element is a form element. So we will set the label and classes -->
														<xsl:if test="not (self::xf:group) and not(self::xf:submit) and not(self::xf:trigger)">
															<xsl:element name="span">
																<xsl:variable name="id" select="@id"/>
																<xsl:attribute name="class">cfLabelTitle cfFirstChild <xsl:if test="//form/xf:model/xf:bind[@id = $id]/@required = 'true()'">		cfRequiredLabel</xsl:if></xsl:attribute>
																<xsl:element name="label">		
																	<xsl:value-of select="xf:label/text()"/>
																	<xsl:if test="xf:label/text() = false()">
																	<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
																	</xsl:if>
																</xsl:element>
															</xsl:element>
														</xsl:if>
												
														<xsl:apply-templates select="."/>										
												</xsl:element>
											</xsl:element>
									</xsl:element>
								</xsl:otherwise>
							</xsl:choose>
							
					</xsl:otherwise>
				</xsl:choose>						
			</xsl:for-each>					
		</xsl:element>	
	</xsl:template>

</xsl:stylesheet>

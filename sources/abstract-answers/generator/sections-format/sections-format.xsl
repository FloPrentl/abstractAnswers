<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<html>
  <head>
    <meta charset="utf-8"></meta> 
    <link rel="stylesheet" href="stylesheet.css"></link>
  </head>
  <body>
  
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
	<div id="page">
  
		<!-- content_header_table -->  
		<div id="content_header_table">
			<div id="content_header_table_row">
				<div class="content_header_table_cell"></div>
				<div class="content_header_table_cell" id="content_header_table_cell_2"><p>Finance Area</p></div>
				<div class="content_header_table_cell" id="content_header_table_cell_3"><p>abstractvision.de</p></div>
				<div class="content_header_table_cell"></div>
			</div>
		</div>
		
		<!-- content -->  	
		<div id="content">
			<h1><xsl:value-of select="abstractanswer/question"/></h1>
			<p id="question_context_paragraph"><xsl:value-of select="abstractanswer/questioncontext"/></p>

			<!-- *** tag cloud section *** -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">tag cloud section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>				
						<div class="section_body" id="tag_cloud_section">					
							<xsl:for-each select="abstractanswer/tagcloud/tag">					
								<div class="tag_cloud_tag_horizontal">
									<xsl:attribute name="style">left:<xsl:value-of select="left"/>px; top: <xsl:value-of select="top"/>px;</xsl:attribute>
									<a>
										<xsl:attribute name="style">color:<xsl:value-of select="color"/>; font-size: <xsl:value-of select="fontsize"/>pt; text-decoration-line:none</xsl:attribute>
										<xsl:attribute name="title"><xsl:value-of select="title"/></xsl:attribute>
										<xsl:attribute name="href"><xsl:value-of select="href"/></xsl:attribute>
										<xsl:value-of select="text"/>							  
									</a>		
								</div>
							</xsl:for-each>														
						</div>	
					</div>
					<div class="section_inner_cell"></div>
					<div class="section_outer_cell">				
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">soundcloud/youtube section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>			  
						<div class="section_body" id="section_body_soundcloud_youtube">   
							<!--<img src="soundcloud.png" width="242" height="154"></img>-->
						</div>					
					</div>
				</div>		  
			</div>        
			  
			<!-- *** summary section *** -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_outer_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">tag cloud section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>
						<div class="section_body">    
							<xsl:for-each select="abstractanswer/summaryparagraphs/summaryparagraph">
								<p class="summary_text_paragraph">								
									<xsl:value-of select="text"/>
								</p>							
							</xsl:for-each>							
						</div>								
					</div>	
					<div class="section_inner_cell"></div>				
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">summary (bullets) section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>
						<div class="section_body">
							<ul id="summary_bullets_section_list">
								<xsl:for-each select="abstractanswer/summarybullets/summarybullet">
									<li>
										<xsl:for-each select="summarybulletpart">
											<span>
												<xsl:if test="class != ''"><xsl:attribute name="class"><xsl:value-of select="class"/></xsl:attribute></xsl:if>
												<xsl:if test="color != ''"><xsl:attribute name="style">color:<xsl:value-of select="color"/>;</xsl:attribute></xsl:if>
												<xsl:value-of select="text"/>
											</span>
										</xsl:for-each>
									</li>
								</xsl:for-each>
							</ul>					
						</div>					
					</div>
				</div>		  
			</div>       
			  
			<!-- *** related aspects and related questions sections *** -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">sponsor section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>							
						<div class="section_body" id="section_body_sponsor">
							<script async="async" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Ad unit for sections-formatted pages (2) -->
							<ins class="adsbygoogle"
								 style="display:inline-block;width:336px;height:280px"
								 data-ad-client="ca-pub-9295187614171155"
								 data-ad-slot="2910968220"></ins>
							<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
							</script>
						</div>					
					</div>		  				
					<div class="section_inner_cell"></div>		  				
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">related questions section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>									
						<div class="section_body" id="related_questions_section">
							<p style="color: orange; margin-top: 0px;">Sorry, I have currently no related questions on abstractvision.de, but I am planning to work on these:</p>
							<ul id="related_questions_section_list">
								<li>What is a mutual fund?</li>
							</ul>						
						</div>					
					</div>
				</div>		  
			</div>

			<!-- *** web sources section *** -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">web sources (general) section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>				
						<div class="section_body" id="web_resources_general_section">
							<dl class="web_resources_list">							
								<xsl:for-each select="abstractanswer/general_web_sources/general_web_source">
									<dt>
										<a class="web_source_general_link">
											<xsl:attribute name="id"><xsl:value-of select="header_id"/></xsl:attribute>
											<xsl:attribute name="title"><xsl:value-of select="header_title"/></xsl:attribute>
											<xsl:attribute name="href"><xsl:value-of select="header_href"/></xsl:attribute>
											<xsl:value-of select="header_text"/>
										</a>
									</dt>						  
									<dd class="web_sources_list_entry_body">								  	
										<xsl:value-of select="pre_text_link_text"/>
										<a class="web_source_general_link">
											<xsl:attribute name="title"><xsl:value-of select="text_link_title"/></xsl:attribute>
											<xsl:attribute name="href"><xsl:value-of select="text_link_href"/></xsl:attribute>
											<xsl:value-of select="text_link_text"/>
										</a>								  	
										<xsl:value-of select="post_text_link_text"/>								  	
									</dd>
								</xsl:for-each>
							</dl>
						  </div>
					</div>	
					<div class="section_inner_cell"></div>				
					<div class="section_outer_cell">			
						<div class="section_header_table">				
							<div class="section_header_table_upper_row">
								<div  class="section_header_table_upper_cell">web resources (sponsored) section</div>
							</div>
							<div class="section_header_table_lower_row">					
								<div  class="section_header_table_lower_cell"></div>
							</div>
						</div>				
						<div class="section_body" id="web_resources_sponsored_section">
							<dl class="web_resources_list">							
								<xsl:for-each select="abstractanswer/sponsored_web_sources/sponsored_web_source">	
									<dt>
										<a class="web_source_sponsored_link">
											<xsl:attribute name="id"><xsl:value-of select="header_id"/></xsl:attribute>
											<xsl:attribute name="title"><xsl:value-of select="header_title"/></xsl:attribute>
											<xsl:attribute name="href"><xsl:value-of select="header_href"/></xsl:attribute>
											<xsl:value-of select="header_text"/>
										</a>
									</dt>						  
									<dd class="web_sources_list_entry_body">								  	
										<xsl:value-of select="pre_text_link_text"/>
										<a class="web_source_general_link">
											<xsl:attribute name="title"><xsl:value-of select="text_link_title"/></xsl:attribute>
											<xsl:attribute name="href"><xsl:value-of select="text_link_href"/></xsl:attribute>
											<xsl:value-of select="text_link_text"/>
										</a>
										<xsl:value-of select="post_text_link_text"/>
									</dd>								
								</xsl:for-each>
							</dl>
						</div>
					</div>
				</div>		  
			</div>

			<!-- *** disclaimer section *** -->	 	  	  
			<div class="section_header_table">				
				<div class="section_header_table_upper_row">
					<div  class="section_header_table_upper_cell">disclaimer section</div>
				</div>
				<div class="section_header_table_lower_row">					
					<div  class="section_header_table_lower_cell"></div>
				</div>
			</div>				  
			<div class="section_body" id="disclaimer_section">
				<p id="disclaimer_paragraph">Disclaimer: abstractvision.de claims no responsibility for any damage that may occur from the use of any information found here or found on links followed from this page. All items, logos and/or companies mentioned on this and other pages are trademarks, registered trademarks, logos, copyrights, or service marks of the respective companies.</p>
			</div>
		
		</div>
	</div>

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  </body>
</html>
  
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  
</xsl:template>

</xsl:stylesheet> 
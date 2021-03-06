<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<html>
  <head>
    <meta charset="utf-8"></meta>     
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>    
    <meta name="description">
    	<xsl:attribute name="content"><xsl:value-of select="abstractanswer/title"/></xsl:attribute>    
    </meta>    
	<meta name="keywords">
		<xsl:attribute name="content"><xsl:value-of select="abstractanswer/title"/></xsl:attribute>    		
	</meta>	
	<link rel="stylesheet" href="modern-format.css"></link>    
	<script type="text/javascript" language="javascript" src="jquery-1.9.1.js"></script>
	<script type="text/javascript" language="javascript" src="modern-format.js"></script>	
	<title><xsl:value-of select="abstractanswer/title"/></title>	
  </head>
  <body>
  
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
	<div id="page">
  
		<!-- content_header_table -->  
		<div id="content_header_table">
			<div id="content_header_table_row">
				<div class="content_header_table_cell"></div>
				<div class="content_header_table_cell" id="content_header_table_cell_2"><p class="content_header_table_paragraph">Finance Area</p></div>
				<div class="content_header_table_cell" id="content_header_table_cell_3"><p class="content_header_table_paragraph">abstract answers @ abstractvision.de</p></div>
				<div class="content_header_table_cell"></div>
			</div>
		</div>
		
		<!-- content -->  	
		<div id="content">			
			<div id="section_table_question" class="section_table">
				<div class="section_row">
					<div class="section_cell">			
						<h1><xsl:value-of select="abstractanswer/question"/></h1>
						<!--<p id="question_context_paragraph"><xsl:value-of select="abstractanswer/questioncontext"/> </p>-->
					</div>					
				</div>		  
			</div>			

			<!-- tags -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell">
							<p class="section_header_table_cell_paragraph"><span>tags ...</span>&#160;<span class="section_header_click_to_span">click to highlight tags on page / to perform a specific search on site</span></p>
								</div>
							</div>							
						</div>
						<div class="section_body">    
							<xsl:for-each select="abstractanswer/tags/tag">
								<span class="tag">
									<a>									
										<xsl:attribute name="href">#</xsl:attribute>
										<xsl:attribute name="onClick">execute_tag('<xsl:value-of select="text"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="search"/>');</xsl:attribute>
										<xsl:value-of select="text"/>
									</a>
									&#160;...&#160;
								</span>
							</xsl:for-each>
						</div>								
					</div>	
				</div>		  
			</div>  			
			  
			<!-- answer -->
			<div class="section_table">
				<div class="section_row">
					<div id="section_cell_answer" class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">answer</p></div>
							</div>							
						</div>
						<div class="section_body">    
							<xsl:for-each select="abstractanswer/paragraphs/paragraph">
								<p class="summary_text_paragraph">					
									<xsl:value-of select="text"/>
								</p>							
							</xsl:for-each>
						</div>								
					</div>	
					<div id="section_cell_youtube" class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">&#160;</p></div>
							</div>							
						</div>
						<div class="section_body"><img src="youtube_inactive.png" width="80" height="40"></img><br></br><br></br><img src="soundcloud_inactive.png" width="80" height="40"></img></div>
					</div>	
				</div>		  
			</div>       
			
			<!-- tl;dr -->
			<div class="section_table">
				<div class="section_row">
					<div id="section_cell_tldr" class="section_cell">
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">tl;dr</p></div>
							</div>							
						</div>
						<div class="section_body"> 
							<ul id="summary_bullets_section_list">
								<xsl:for-each select="abstractanswer/bullets/bullet">
									<li class="summary_bullets_section_list_entry"><xsl:value-of select="text"/></li>
								</xsl:for-each>
							</ul>
						</div>								
					</div>	
					<div id="section_cell_adunit" class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">google ad</p></div>
							</div>							
						</div>
						<div id="section_body_google_ad" class="section_body">														
							<script async="async" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<ins class="adsbygoogle"
								 style="display:inline-block;width:200px;height:200px"
								 data-ad-client="ca-pub-9295187614171155"
								 data-ad-slot="9081279427"></ins>
							<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
							</script>							
						</div>						
					</div>
				</div>		  
			</div>
			
			<!-- web resources -->
			<div class="section_table">
				<div class="section_row">
					<div id="section_cell_web" class="section_cell">
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph"><span>web resources ...</span>&#160;<span class="section_header_click_to_span">click to perform a specific search on site</span></p></div>
							</div>							
						</div>
						<div class="section_body">							
							<ul id="web_resources_list">
								<xsl:for-each select="abstractanswer/web_sources/web_source">
									<li>										
										<a style="color: #5b9bd5;">
											<xsl:attribute name="href">#</xsl:attribute>
											<xsl:attribute name="onClick">execute_google_search('<xsl:value-of select="search"/>');</xsl:attribute>
											<xsl:value-of select="header"/>
										</a>
										<xsl:value-of select="body"/>
									</li>
								</xsl:for-each>
							</ul>							
						</div>								
					</div>						
					<div id="section_cell_linkunit" class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">custom search and links</p></div>
							</div>							
						</div>
						<div id="section_body_google_ad" class="section_body">						
							<form action="http://www.google.com" id="cse-search-box" target="_blank">
							  <div>
								<input type="hidden" name="cx" value="partner-pub-9295187614171155:4107853022" />
								<input type="hidden" name="ie" value="UTF-8" />
								<input type="text" name="q" size="20" />
								<input type="submit" name="sa" value="Search" />
							  </div>
							</form>
							<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
						
							<script async="async" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<ins class="adsbygoogle"
								 style="display:inline-block;width:200px;height:90px"
								 data-ad-client="ca-pub-9295187614171155"
								 data-ad-slot="6142989426"></ins>
							<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
							</script>							
						</div>
					</div>					
				</div>		  
			</div>			

			<!-- *** disclaimer section *** -->
			<div id="section_table_disclaimer" class="section_table">
				<div class="section_row">
					<div class="section_cell">			
						<p id="disclaimer_paragraph">Disclaimer: abstractvision.de claims no responsibility for any damage that may occur from the use of any information found here or found on links followed from this page. All items, logos and/or companies mentioned on this and other pages are trademarks, registered trademarks, logos, copyrights, or service marks of the respective companies.</p>
					</div>					
				</div>		  
			</div>		
		</div>
	</div>

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  </body>
</html>
  
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  
</xsl:template>

</xsl:stylesheet> 
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
				<div class="content_header_table_cell" id="content_header_table_cell_2"><p class="content_header_table_paragraph">Finance Area</p></div>
				<div class="content_header_table_cell" id="content_header_table_cell_3"><p class="content_header_table_paragraph">abstractvision.de</p></div>
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
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">tags</p></div>
							</div>							
						</div>
						<div class="section_body">    
							<xsl:for-each select="abstractanswer/tags/tag"><span class="tag"><xsl:value-of select="text"/>&#160;</span></xsl:for-each>
						</div>								
					</div>	
				</div>		  
			</div>  			
			  
			<!-- answer -->
			<div class="section_table">
				<div class="section_row">
					<div class="section_cell">					
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
					<div class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">&#160;</p></div>
							</div>							
						</div>
						<div class="section_body"><img src="youtube.png" width="80" height="40"></img><br></br><br></br><img src="soundcloud.png" width="80" height="40"></img></div>
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
									<li><xsl:value-of select="text"/></li>
								</xsl:for-each>
							</ul>
						</div>								
					</div>	
					<div id="section_cell_adunit" class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">&#160;</p></div>
							</div>							
						</div>
						<div class="section_body">
							<script async="async" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<ins class="adsbygoogle"
								 style="display:inline-block;width:300px;height:250px"
								 data-ad-client="ca-pub-9295187614171155"
								 data-ad-slot="7367860629"></ins>
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
					<div class="section_cell">					
						<div class="section_header_table">				
							<div class="section_header_table_row">
								<div  class="section_header_table_cell"><p class="section_header_table_cell_paragraph">web resources</p></div>
							</div>							
						</div>
						<div class="section_body">   
							<dl class="web_resources_list">							
								<xsl:for-each select="abstractanswer/web_sources/web_source">
									<dt><xsl:value-of select="header"/></dt>						  
									<dd class="web_sources_list_entry_body">
										<xsl:value-of select="body"/>
									</dd>
								</xsl:for-each>
							</dl>							
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
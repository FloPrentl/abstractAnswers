
$(document).ready(function() {	
});

function execute_tag(tagstring, tagtype, searchstring) {
	
	console.log(tagstring, tagtype, searchstring);	
	
	if (tagtype == 'text') {
		console.log('highlighting texts with tag: ' + tagstring);	
	
		$(".summary_text_paragraph").each(		
			function execute_tag_paragraph() {
				this.style.color = "black";
				if ($(this).text().indexOf(tagstring) > -1) {
					this.style.color = "blue";				
				}
			}	
		);
		
		$(".summary_bullets_section_list_entry").each(		
			function execute_tag_tldr() {
				this.style.color = "black";
				if ($(this).text().indexOf(tagstring) > -1) {
					this.style.color = "blue";				
				}
			}	
		);	
		
	}	else if (tagtype == 'web') {
		console.log('executing google search with search string' + searchstring);	
		execute_google_search(searchstring);
	}
}

function execute_google_search(searchstring) {
	var google_search_form = $("#cse-search-box");
	var google_search_field = google_search_form.find("input[name='q']");
	google_search_field.focus();
	google_search_field.val(searchstring);
	google_search_form.submit();
}

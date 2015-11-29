
$(document).ready(function() {	
});

function execute_tag(tagstring) {
	console.log(tagstring);	
	$(".summary_text_paragraph").each(		
		function execute_tag_paragraph() {
			this.style.color = "black";
			if ($(this).text().indexOf(tagstring) > -1) {
				this.style.color = "blue";				
			}
		}	
	);
}

function execute_google_search(searchstring) {
	var google_search_form = $("#cse-search-box");
	var google_search_field = google_search_form.find("input[name='q']");
	google_search_field.focus();
	google_search_field.val(searchstring);
	google_search_form.submit();
}

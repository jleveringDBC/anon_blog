$(document).ready(function() {
	$("#tag_search").on("click", function(event){
		event.preventDefault();
		$.post("/tag_search", function(response){
			$("#search_box").replaceWith(response).html();
		});
	});

	$("#create").on("click", function(event){
		event.preventDefault();
		$.get("/create", function(response){
			$("#stage").replaceWith(response).html();
		});
	});

	$(".post_link").on("click", function(event){
		event.preventDefault();
		url = $(this).attr("title");
		$.get(url, function(response){
			$("#stage").replaceWith(response).html();
		});
	});

	$(".tag_link").on("click", function(event){
		event.preventDefault();
		url = $(this).attr("title");
		$.get(url, function(response){
			$("#stage").replaceWith(response).html();
		});
	});

	$("#tag_form").on("submit", function(event){
		event.preventDefault();
		name = $("#name_field").val();
		console.log(name);
		url = "/tagsname/" + name;
		console.log(url);
		$.post(url, function(response){
			$("#stage").replaceWith(response).html();
		});
	});
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

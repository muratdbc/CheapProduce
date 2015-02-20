(function(){
	'use strict'

$( document ).ready(function() {
	$("#subscribe").submit(function(event){
		var values = $(this).serialize();
		event.preventDefault();
		$.ajax({
			type: 'POST',
			data: {email: $("#email").val(), zipCode: $("#zipCode").val()},
			url: '/subscribe'
		})
		.success(function(data){
			$("#subscribe").hide();
			$("#capture h2").empty();
			$("#capture h2").html("We will get back to you soon. Promise!")

			console.log(data)
		}).error(function(data){
			console.log(data)
		})

	})
});
}())
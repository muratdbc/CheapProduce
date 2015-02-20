(function(){
	'use strict'

$( document ).ready(function() {
	$("#subscribe").submit(function(event){
		// var values = $('#subscribe').serialize();
		event.preventDefault();
		$.ajax({
			contentType: "application/json; charset=utf-8",
			type: 'POST',
			data: JSON.stringify($('#subscribe').serialize()),
			url: '/subscribe'
		})
		.success(function(data){
			console.log(data)
		}).error(function(data){
			console.log(data)
		})

	})
});
}())
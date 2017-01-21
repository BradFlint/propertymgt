
$(document).on("turbolinks:load", function(){
	$(".home").click(function(){
		$('.property').addClass("hidden");
		 console.log($(this).data("id") )
		  $('.home').where().att() == $(this).data('id')
		  $('.property').addClass("property");
	});
});


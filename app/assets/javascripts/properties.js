
$(document).on("turbolinks:load", function(){
	$(".home").click(function(){
	$('.property').addClass("hidden");
	$('.property[data-id="' + $(this).data('id') + '"]').removeClass('hidden');
	});
});

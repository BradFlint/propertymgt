// displays the first home in the home preview box, the others are hidden, when different home is
// clicked, that home is now displayed in the preview box
$(document).on("turbolinks:load", function(){
	$(".home").click(function(){
	$('.property').addClass("hidden");
	$('.property[data-id="' + $(this).data('id') + '"]').removeClass('hidden');
	});
});

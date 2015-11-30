$( document ).ready(function() {
    
	// $("#logo").click(function(){
	//     $("#logo").fadeOut("slow", 3000);
	// });

	$(".zebra").click(function(){
	    $(this).animate({left: '+=300px'});
		return false;

	}); 

	$("#logo").click(function(){
	    $(this).fadeOut("slow");
	});


});
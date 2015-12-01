$(document).ready(function() {
    $( '#header' ).click(function() {
      if ( $( '#container' ).is( ":hidden" ) ) {
        $( "#container" ).show( "slow" );
      } else {
        $( "#container" ).slideUp();
      }
});

    $('form').submit(function(){
		console.log($(this).serialize())
		$.post(
			$(this).attr("action"), 
			$(this).serialize(), 
			function(response, status) {
			$('#append_row').append(response)
		}, 
		"html"
		);
		return false
	});
});

// (function(window){

//     // get vars
//     var searchEl = document.querySelector("#input");
//     var labelEl = document.querySelector("#label");

//     // register clicks and toggle classes
//     labelEl.addEventListener("click",function(){
//         if (classie.has(searchEl,"focus")) {
//             classie.remove(searchEl,"focus");
//             classie.remove(labelEl,"active");
//         } else {
//             classie.add(searchEl,"focus");
//             classie.add(labelEl,"active");
//         }
//     });

//     // register clicks outisde search box, and toggle correct classes
//     document.addEventListener("click",function(e){
//         var clickedID = e.target.id;
//         if (clickedID != "search-terms" && clickedID != "search-label") {
//             if (classie.has(searchEl,"focus")) {
//                 classie.remove(searchEl,"focus");
//                 classie.remove(labelEl,"active");
//             }
//         }
//     });
// }(window));












// $('form').submit(function(){
// 		console.log($(this).serialize())
// 		$.post($(this).attr("action"), $(this).serialize(), function(response, status) {
// 		var input = ( $( this ).serialize() );
//       $.ajax ({
//         type: $(this).attr('method'),
//         url: $(this).attr('action'),
//         data: input,
//         dataType: "json",
//       }).
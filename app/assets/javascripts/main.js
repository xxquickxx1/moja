
  $(document).ready(function(){
  	$(function() {
   $('.alert').delay(500).fadeIn('normal', function() {
      $(this).delay(2400).fadeOut();
   });
});
  })
  $(document).ready(function(){
  	$(function() {
   $('.freebies').delay(2800).fadeIn('normal', function() {
      $(this).delay(3200).fadeOut();
   });
});
  })


  $(document).ready(function() {
    $(".fancybox").fancybox();
  });

  $(document).ready(function() {
    $(".Forque").addClass("addEffect");
  });


$('a').hover(function(){ $(this).tooltip('toggle')})

$(document).ready(function(){

	 //Only shows drop down trigger when js is enabled (Adds empty span tag after ul.subnav*)
	
	$("ul.topnav li a").hover(function() { //When trigger is hovered...
		
		//Following events are applied to the subnav itself (moving subnav up and down)
		$(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

		$(this).parent().hover(function() {
		}, function(){	
			$(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
		});

		//Following events are applied to the trigger (Hover events for the trigger)
		}).hover(function() { 
			$(this).addClass("subhover"); //On hover over, add class "subhover"
		}, function(){	//On Hover Out
			$(this).removeClass("subhover"); //On hover out, remove class "subhover"
	});

		/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();



});







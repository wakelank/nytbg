$(document).ready(function(){

	$('a#title').click(function() {

        $('html,body').animate({'scrollTop' : 500},1000);
        console.log("hello");


		var thisClass = $(this).attr('data-clicked-class'),
			nextClass = $(this).attr('data-next-class'),
			nextElementId = (typeof $(this).attr('data-id-to-expand') !== 'undefined') ? $(this).attr('data-id-to-expand') : null;

		// Remove all classes
		$("." + thisClass).removeClass(thisClass);
		$("." + nextClass).removeClass(nextClass);

		// Add class to clicked element
		$(this).addClass(thisClass);

		console.log(nextElementId);
		// Add class to associated element
		if (nextElementId !== null) {
			console.log("next");
			$("#" + nextElementId).addClass(nextClass);
		}

		else
		{
			console.log("else");
			$(this).addClass(thisClass);
			$(this).next().addClass(nextClass);
		}
    });

    $('.clickToExpand').click(function() {

        $('html,body').animate({'scrollTop' : 300}, 1000);
        console.log("hello");


		var thisClass = $(this).attr('data-clicked-class'),
			nextClass = $(this).attr('data-next-class'),
			nextElementId = (typeof $(this).attr('data-id-to-expand') !== 'undefined') ? $(this).attr('data-id-to-expand') : null;

		// Remove all classes
		$("." + thisClass).removeClass(thisClass);
		$("." + nextClass).removeClass(nextClass);

		// Add class to clicked element
		$(this).addClass(thisClass);

		console.log(nextElementId);
		// Add class to associated element
		if (nextElementId !== null) {
			console.log("next");
			$("#" + nextElementId).addClass(nextClass);
		}

		else
		{
			console.log("else");
			$(this).addClass(thisClass);
			$(this).next().addClass(nextClass);
		}
    });



});

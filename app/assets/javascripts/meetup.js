$(document).ready(function(){
	$(".clickToExpand").click(function() {
		var thisClass = $(this).attr('data-clicked-class'),
			nextClass = $(this).attr('data-next-class'),
			nextElementId = (typeof $(this).attr('data-id-to-expand') !== 'undefined') ? $(this).attr('data-id-to-expand') : null;

		$(".headerPicture").addClass('hide');



			// Remove all classes
			$("." + thisClass).removeClass(thisClass);
			$("." + nextClass).removeClass(nextClass);


			// Add class to clicked element
			$(this).addClass(thisClass);


			// Add class to associated element
			if (nextElementId !== null) {
				$("#" + nextElementId).addClass(nextClass);
			}

			else {
				$(this).addClass(thisClass);
				$(this).next().addClass(nextClass);
			}

	});



});

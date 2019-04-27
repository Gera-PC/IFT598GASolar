$(document).ready(function ($) {
    $(function () {

        //initialize all modals           
        $('.modal').modal();
		$('.modal').modal({
		  dismissible: false, // Modal can be dismissed by clicking outside of the modal
		  opacity: .3, // Opacity of modal background
		  inDuration: 300, // Transition in duration
		  outDuration: 200, // Transition out duration
		  startingTop: '5%', // Starting top style attribute
		  endingTop: '10%', // Ending top style attribute
		}
		);
		$('#modal1').modal('open');

        //now you can open modal from code
        //$('#modal1').modal('open');

        //or by click on trigger
        $('.trigger-modal').modal();

    });
})(jQuery); // end of jQuery name space
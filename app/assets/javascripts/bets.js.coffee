# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('.choose-bet').on('click', '.choose-bet', event) ->
		event.preventDefault()
		$(this).parent().next('div#make-bet').toggle();



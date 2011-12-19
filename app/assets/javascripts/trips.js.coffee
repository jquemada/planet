# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery () ->
	$(".autosubmit").change () ->
		parent_form = $(this).parent("form")
		console.log(parent_form)
		parent_form.submit()

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#gofe_event_id').parent().hide()
  events = $('#gofe_event_id').html()
  $('#gofe_level_id').change ->
    level = $('#gofe_level_id :selected').text()
    console.log(level)
    alert("I changed")
    options = $(events).filter("optgroup[label='#{level}']").html()
    console.log(options)
    if options
      $('#gofe_event_id').html(options)
      $('#gofe_event_id').parent().show()
    else
      $('#gofe_event_id').empty
      $('#gofe_event_id').parent().hide()
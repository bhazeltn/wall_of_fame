# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  events = $('#skater_event_id').html()
  $('#skater_level_id').change ->
    level = $('#skater_level_id :selected').text()
    lvl_options = $(events).filter("optgroup[label='#{level}']").html()
    if lvl_options
      $('#skater_event_id').html(lvl_options)
      $('#skater_event_id').html(lvl_options).prepend("<option value=''></option>")
      $('#skater_event_id option:first').attr("selected", "selected")
    else
      $('#skater_event_id').empty
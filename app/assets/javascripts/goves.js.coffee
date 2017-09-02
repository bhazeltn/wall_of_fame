# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  events = $('#gofe_event_id').html()
  $('#gofe_level_id').change ->
    level = $('#gofe_level_id :selected').text()
    lvl_options = $(events).filter("optgroup[label='#{level}']").html()
    if lvl_options
      $('#gofe_event_id').html(lvl_options)
      $('#gofe_event_id').html(lvl_options).prepend("<option value=''></option>")
      $('#gofe_event_id option:first').attr("selected", "selected")
    else
      $('#gofe_event_id').empty

  segments = $('#gofe_segment_id').html()
  $('#gofe_event_id').change ->
    segment = $('#gofe_event_id :selected').val()
    seg_options = $(segments).filter("optgroup[label='#{segment}']").html()
    if seg_options
      $('#gofe_segment_id').html(seg_options)
      $('#gofe_segment_id').html(seg_options).prepend("<option value=''></option>")
      $('#gofe_segment_id option:first').attr("selected", "selected")
    else
      $('#gofe_segment_id').empty
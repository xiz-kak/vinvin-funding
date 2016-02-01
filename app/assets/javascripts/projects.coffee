# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $("li[data-target-id]").click( ->
    $("li[data-target-id]").removeClass('active')
    $(this).addClass('active')
    $('.detail-section').css('display', 'none')
    $('#'+$(this).data('target-id')).css('display', 'table')
  )

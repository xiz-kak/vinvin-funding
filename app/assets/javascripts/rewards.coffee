# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(".box-body ul li").click( ->
    $(".box-body ul li").removeClass('active')
    $(this).addClass('active')
  )

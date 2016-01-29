# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  if $('.fixed-base .fixed-box').length > 0
    baseSelector = '.fixed-base'
    fixingSelector = baseSelector + ' .fixed-box'

    $(window).on('load scroll resize', -> 
      # 固定開始位置より後にスクロールされた場合
      if $(window).scrollTop() > 10
        $(fixingSelector).addClass('fixed')
        $(baseSelector).height($(fixingSelector).outerHeight())
        $(fixingSelector).width($(baseSelector).width()-3)

      # 固定開始位置以前にスクロールされた場合
      else 
        $(fixingSelector).removeClass('fixed')
        $(baseSelector).height('')
        $(fixingSelector).width('')
    )

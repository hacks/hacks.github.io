jQuery ->

  $('.event').hover ->
    h = $(this).css('height','auto').height()
    $(this).css('height','150px')
    $(this).animate({height : h}, 'fast')
  , ->
    $(this).animate({height : '150px'}, 'fast')
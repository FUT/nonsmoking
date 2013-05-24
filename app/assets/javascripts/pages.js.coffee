$ ->
  $info = $('.full-info').toggle()

  $('.full-info-trigger').on 'click', =>
    $info.toggle()

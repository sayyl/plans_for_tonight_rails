$('#past_events').on('click', function() {
  $('#show_past').toggle();
    if ($.trim($(this).text()) === 'View Past Events') {
      $(this).text('Hide Past Events');
    } else {
        $(this).text('View Past Events');        
    }
    return false; 
  });

$('a[data-popup').on('click', function(e) {window.open($(this).attr('href'), "Popup", "height=600, width=600"); e.preventDefault(); });
 $('#past_events').on('click', function() {
  $('#show_past').toggle();

    if ($.trim($(this).text()) === 'View Past Events') {
      $(this).text('Hide Past Events');
  } else {
      $(this).text('View Past Events');        
  }
  
  return false; 
});


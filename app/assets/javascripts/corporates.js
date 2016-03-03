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


function htmlbodyHeightUpdate(){
  var height3 = $( window ).height()
  var height1 = $('.nav').height()+50
  height2 = $('.main').height()
  if(height2 > height3){
    $('html').height(Math.max(height1,height3,height2)+10);
    $('body').height(Math.max(height1,height3,height2)+10);
  }
  else
  {
    $('html').height(Math.max(height1,height3,height2));
    $('body').height(Math.max(height1,height3,height2));
  }
  
}
$(document).ready(function () {
  htmlbodyHeightUpdate()
  $( window ).resize(function() {
    htmlbodyHeightUpdate()
  });
  $( window ).scroll(function() {
    height2 = $('.main').height()
      htmlbodyHeightUpdate()
  });
});

$('#graph1').on('click', function() {
  $('#total_transactions').toggle();
  $('#calendar').toggle();
});

$('#graph2').on('click', function() {
  $('#transactions_monthly').toggle();
  $('#calendar').toggle();
});

$('#graph3').on('click', function() {
  $('#ticket_sales').toggle();
  $('#calendar').toggle();
});


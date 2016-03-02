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

function toggleChartOne() { 
  // get the clock 
  var myChart = document.getElementById('total_transactions');
  // get the current value of the clock's display property 
  var displaySetting = myChart.style.display;
  // also get the clock button, so we can change what it says 
  var chartButton = document.getElementById('total_trans');
  // now toggle the clock and the button text, depending on current state
  if (displaySetting == 'block') { 
    // clock is visible. hide it
    myChart.style.display = 'none';
    // change button text
    chartButton.innerHTML = 'View';
  }
  else { 
    // clock is hidden. show it 
    myChart.style.display = 'block';
    // change button text
    chartButton.innerHTML = 'Close';
  }
}  


  function toggleChartTwo() { 
      // get the clock 
  var myChart = document.getElementById('transactions_monthly');
    // get the current value of the clock's display property 
    var displaySetting = myChart.style.display;
    // also get the clock button, so we can change what it says 
    var chartButton = document.getElementById('months_trans');
    // now toggle the clock and the button text, depending on current state
    if (displaySetting == 'block') { 
      // clock is visible. hide it
      myChart.style.display = 'none';
      // change button text
      chartButton.innerHTML = 'View';
    }
    else { 
      // clock is hidden. show it 
      myChart.style.display = 'block';
      // change button text
      chartButton.innerHTML = 'Close';
    }
  }  
  
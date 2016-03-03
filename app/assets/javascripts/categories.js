
  var $grid = $('#categories-page').find('.grid').isotope({
    itemSelector: '.element-item',
    layoutMode: 'fitRows'
  });


  function getSelectorValue(selectorSelector) {
    return $(selectorSelector).find(':selected').attr('data-filter-value'); 
  }

  function setGridFilter(){
      var city = getSelectorValue("#city-select");
      var time = getSelectorValue("#time-select");
      var gridFilter = city + time;
      $grid.isotope({ filter: gridFilter });
    }

  // filter buttons
  $('.filter-selector').change(setGridFilter);

  $('#categories-page').find('ul>li').click(function() {
      var $this = $(this);
      var group = $this.parent().data('filter-group');
      filters[ group ] = $this.data('filter-value'); 
      var isoFilters = [];
        for ( var prop in filters ) {
          isoFilters.push( filters[ prop ] )
        }
        console.log(filters);
        var selector = isoFilters.join('');
        $grid.isotope({ filter: selector });
        return false;
  });

  var $grid = $('.grid').isotope({
    itemSelector: '.element-item',
    layoutMode: 'fitRows'
  });

  filters = {};
  // filter buttons
  $('select').change(function(){
    var $this = $(this);
    
    // store filter value in object
    // i.e. filters.color = 'red'
    var group = $this.attr('data-filter-group');
    
    filters[ group ] = $this.find(':selected').attr('data-filter-value');
    // console.log( $this.find(':selected') )
    // convert object into array
    var isoFilters = [];
    for ( var prop in filters ) {
      isoFilters.push( filters[ prop ] )
    }
    // console.log(filters);
    var selector = isoFilters.join('');
    $grid.isotope({ filter: selector });
    return false;
  });

  $('ul>li').click(function() {
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

  // // init Isotope
  // var $grid = $('.grid').isotope({
  //   itemSelector: '.element-item',
  //   layoutMode: 'fitRows'
  // });
  // // filter functions
  // var filterFns = {
  // };

  // // var time = "";
  // // var location = "";
  // // bind filter on select change
  // $('.filters-time').on( 'change', function() {
  //   // get filter value from option value
  //   time = this.value;
  //   var filterValue = this.value.concat(location);
  //   // use filterFn if matches value
  //   filterValue = filterFns[ filterValue ] || filterValue;
  //   $grid.isotope({ filter: filterValue });
  // });

  // $('.filters-location').on( 'change', function() {
  //   // get filter value from option value
  //   location = this.value;
  //   var filterValue = this.value.concat(time);
  //   // use filterFn if matches value
  //   filterValue = filterFns[ filterValue ] || filterValue;
  //   $grid.isotope({ filter: filterValue });
  // });
  
  // // // init Isotope
  // // var $grid = $('.grid').isotope({
  // //   itemSelector: '.element-item',
  // //   layoutMode: 'fitRows'
  // // });
  // // // filter functions
  // // var location = "";
  // // var time = "";
  // // var filterFns = {};
  // // // bind filter on select change
  // // $('.filters-time').on( 'change', function() {
  // //   // get filter value from option value
  // //   time = this.value;
  // //   // use filterFn if matches value
  // //   time = filterFns[ time ] || time;
  // //   $grid.isotope({ filter: time });
  // // });
  

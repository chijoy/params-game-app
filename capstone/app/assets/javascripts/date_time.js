$(function() {
    $('input[name="daterange"]').daterangepicker({
        timePicker: false,
        timePickerIncrement: 30,
        locale: {
            format: 'MM/DD/YYYY'
        }
    },
    function(start, end, label) {
      url = "/?start=" + start.format('YYYY-MM-DD') + "&end=" + end.format('YYYY-MM-DD') ;
      $.ajax({url: url, success: function(result){
        $("#calendar").html(result);
      }});
      
    });
});




// $(function() {
//     $('input[name="daterange"]').daterangepicker();
// });



// $(function() {

//   $('input[name="datefilter"]').daterangepicker({
//       autoUpdateInput: false,
//       locale: {
//           cancelLabel: 'Clear'
//       }
//   });

//   $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
//       $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
//   });

//   $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
//       $(this).val('');
//   });

// });

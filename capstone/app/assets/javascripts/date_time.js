$(function() {
    $('input[name="daterange"]').daterangepicker({
        timePicker: false,
        timePickerIncrement: 30,
        locale: {
            format: 'MM/DD/YYYY'
        }
    });
});

$(document).on("turbolinks:load", function() {
    $('#employee_multiselect').multiselect({
        enableFiltering: true,
        buttonWidth: '100%',
        maxHeight: 400,
        buttonText: function (options, select) {
            if (options.length === 0) {
                return 'Seleccionar ...';
            }
            else if (options.length > 2) {
                return options.length.toString() + ' seleccionados';
            }
            else {
                var labels = [];
                options.each(function () {
                    if ($(this).attr('label') !== undefined) {
                        labels.push($(this).attr('label'));
                    }
                    else {
                        labels.push($(this).html());
                    }
                });
                return labels.join(', ') + '';
            }
        }
    });

    $('#manager_multiselect').multiselect({
        enableFiltering: true,
        buttonWidth: '100%',
        maxHeight: 400,
        buttonText: function (options, select) {
            if (options.length === 0) {
                return 'Seleccionar ...';
            }
            else if (options.length > 2) {
                return options.length.toString() + ' seleccionados';
            }
            else {
                var labels = [];
                options.each(function () {
                    if ($(this).attr('label') !== undefined) {
                        labels.push($(this).attr('label'));
                    }
                    else {
                        labels.push($(this).html());
                    }
                });
                return labels.join(', ') + '';
            }
        }
    });
});
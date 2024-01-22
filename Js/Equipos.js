$(document).ready(function(){
    $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#TablaJugadores tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});

$(document).ready(function () {
    // Obtén las filas de la tabla y conviértelas en un array
    var rows = $('#TablaJugadores tr').get();

    // Ordena el array en función del contenido de la columna "Nombre"
    rows.sort(function (a, b) {
        var nameA = $(a).find('td:first').text().toUpperCase();
        var nameB = $(b).find('td:first').text().toUpperCase();
        return nameA.localeCompare(nameB);
    });

    // Vuelve a agregar las filas ordenadas a la tabla
    $.each(rows, function (index, row) {
        $('#TablaJugadores').append(row);
    });
});
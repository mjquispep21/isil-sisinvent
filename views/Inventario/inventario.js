var tabla;

function init() {
    $("#inventario_form").on("submit", function (e) {
        guardaryeditar(e);
    });
}

function guardaryeditar(e){
    e.preventDefault();
	var formData = new FormData($("#inventario_form")[0]);
    $.ajax({
        url: "../../Controllers/inventario.php?op=guardaryeditar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(datos){    
            console.log(datos);
            $('#inventario_form')[0].reset();
            $("#modalinventario").modal('hide');
            $('#ficha_data').DataTable().ajax.reload();

            swal({
                title: "SIS-INVENTA!",
                text: "Completado.",
                type: "success",
                confirmButtonClass: "btn-success"
            });
        }
    }); 
}

$(document).ready(function () {


    tabla = $('#ficha_data').dataTable({
        "aProcessing": true,
        "aServerSide": true,
        dom: 'Bfrtip',
        "searching": true,
        lengthChange: false,
        colReorder: true,
        buttons: [

        ],
        "ajax": {
            url: '../../Controllers/inventario.php?op=listar',
            type: "post",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        "bDestroy": true,
        "responsive": true,
        "bInfo": true,
        "iDisplayLength": 10,
        "autoWidth": false,
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
    }).DataTable();


    $('#ficha_descrip').summernote({
        height: 400,
        lang: "es-ES",
        callbacks: {
            onImageUpload: function (image) {
                console.log("Image detect...");
                myimagetreat(image[0]);
            },
            onPaste: function (e) {
                console.log("Text detect...");
            }
        }
    });

    $.post("../../Controllers/categoria.php?op=combo_sede", function (data, status) {
        $('#ID_sede').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_torre", function (data, status) {
        $('#ID_torre').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_almacen", function (data, status) {
        $('#ID_almacen').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_equipo", function (data, status) {
        $('#ID_equipo').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_marca", function (data, status) {
        $('#ID_marca').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_modelo", function (data, status) {
        $('#ID_modelo').html(data);
    });

    $.post("../../Controllers/categoria.php?op=combo_operatividad", function (data, status) {
        $('#ID_operatividad').html(data);
    });


});

function editar(ID_ficha) {

    $('#mdltitulo').html('Editar Registro');

    $.post("../../Controllers/inventario.php?op=mostrar", { ID_ficha: ID_ficha }, function (data) {
        data = JSON.parse(data);
        $('#ID_ficha').val(data.ID_ficha);
        $('#ID_sede').val(data.ID_sede).trigger('change');
        $('#ID_torre').val(data.ID_torre).trigger('change');
        $('#Salon').val(data.Salon);
        $('#ID_almacen').val(data.ID_almacen).trigger('change');
        $('#ID_equipo').val(data.ID_equipo).trigger('change');
        $('#Descripcion').val(data.Descripcion);
        $('#ID_marca').val(data.ID_marca).trigger('change');
        $('#ID_modelo').val(data.ID_modelo).trigger('change');
        $('#Numero_serie').val(data.Numero_serie);
        $('#Codigo_isil').val(data.Codigo_isil);
        $('#Cantidad').val(data.Cantidad);
        $('#Imagen').val(data.Imagen);
        $('#ID_usuario').val(data.ID_usuario);
        $('#ID_operatividad').val(data.ID_operatividad).trigger('change');
        $('#Observaciones').val(data.Observaciones);
    });

    $('#modalinventario').modal('show');
}


function eliminar(ID_ficha) {

    swal({
        title: "Isil Inventar",
        text: "Esta segure de Eliminar el registro?",
        type: "error",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "Si",
        cancelButtonText: "No",
        closeOnConfirm: false
    },
        function (isConfirm) {
            if (isConfirm) {
                $.post("../../Controllers/inventario.php?op=eliminar", { ID_ficha: ID_ficha }, function (data) {

                });


                $('#ficha_data').DataTable().ajax.reload();


                swal({
                    title: "HelpDesk",
                    text: "El estimado ha sido baneado del server",
                    type: "success",
                    confirmButtonClass: "btn-success"
                });
            }
        });

}

$(document).on("click", "#btnnuevo", function () {

    $('#mdltitulo').html('Nuevo Registro');
    $('#inventario_form')[0].reset();
    $('#modalinventario').modal('show');
});
init();
<?php
require_once("../../Config/conexion.php");
if (isset($_SESSION["ID_usuario"])) {
?>

    <?php require_once("../layout/page_head.php") ?>

    <div class="page-content">
        <div class="container-fluid">
            <div class="box-typical box-typical-padding">
                <button type="button" id="btnnuevo" class="btn btn-inline btn-primary">Nuevo Registro</button>
                <table id="usuario_data" class="table table-bordered table-striped table-vcenter js-dataTable-full">
                    <thead>
                        <tr>
                            <th style="width: 5px;">ID Usuario</th>
                            <th style="width: 5%;">Rol </th>
                            <th style="width: 10%;">Nombre</th>
                            <th style="width: 10%;">Apellidos</th>
                            <th style="width: 10%;">Correo</th>
                            <th style="width: 10%;">Numero</th>
                            <th style="width: 10%;">Usuario</th>
                            <th style="width: 10%;">Contraseña</th>
                            <th style="width: 10%;">Editar</th>
                            <th style="width: 10%;">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div><!--.container-fluid-->
    </div>
    
    <!--.page-content-->



    <?php require_once("registro.php");?>
    <?php require_once("../layout/page_js.php") ?>
    
    <script type="text/javascript" src="mntusuario.js"></script>

    <?php require_once("../layout/page_footer.php") ?>

<?php
} else {
    header("Location:" . Conectar::ruta() . "index.php");
}
?>
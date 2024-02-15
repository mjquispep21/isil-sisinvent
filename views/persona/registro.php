<?php
require_once("../../Config/conexion.php");
if (isset($_SESSION["ID_usuario"])) {
?>

	<?php require_once("../layout/page_head.php") ?>

	<div class="page-content">
		<div class="container-fluid">

			<section class="card card-blue ">
				<header class="card-header">
					<br>
					<h4>Registro de Usuario</h4>
				</header>
				<div class="card-block">
					<div class="col-md-5">
						<form method="post" id="usuario_form">
							<div class="modal-body">
								<input type="hidden" id="usu_id" name="usu_id">

								<div class="form-group">
									<label class="form-label" for="usu_nom">Nombre</label>
									<input type="text" class="form-control" id="usu_nom" name="usu_nom" placeholder="Ingrese Nombre" required>
								</div>

								<div class="form-group">
									<label class="form-label" for="usu_ape">Apellido</label>
									<input type="text" class="form-control" id="usu_ape" name="usu_ape" placeholder="Ingrese Apellido" required>
								</div>

								<div class="form-group">
									<label class="form-label" for="usu_correo">Correo Electronico</label>
									<input type="email" class="form-control" id="usu_correo" name="usu_correo" placeholder="test@test.com" required>
								</div>

								<div class="form-group">
									<label class="form-label" for="usu_pass">Contraseña</label>
									<input type="text" class="form-control" id="usu_pass" name="usu_pass" placeholder="************" required>
								</div>

								<div class="form-group">
									<label class="form-label" for="rol_id">Rol</label>
									<select class="select2" id="rol_id" name="rol_id">
										<option value="1">Usuario</option>
										<option value="2">Soporte</option>
									</select>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-rounded btn-default" data-dismiss="modal">Cerrar</button>
								<button type="submit" name="action" id="#" value="add" class="btn btn-rounded btn-primary">Guardar</button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div><!--.container-fluid-->
	</div>
	<?php require_once("../layout/page_js.php") ?>
	<?php require_once("../layout/page_footer.php") ?>

<?php
} else {
	header("Location:" . Conectar::ruta() . "index.php");
}
?>
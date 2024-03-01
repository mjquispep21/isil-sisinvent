<?php
require_once("../../Config/conexion.php");
if (isset($_SESSION["ID_usuario"])) {
?>

	<?php require_once("../layout/page_head.php") ?>

	<div class="page-content">
		<div class="container-fluid">

			<header class="section-header">
				<div class="tbl">
					<div class="tbl-row">
						<div class="tbl-cell">
							<h3>Perfil</h3>
							<ol class="breadcrumb breadcrumb-simple">
								<li><a href="#">Home</a></li>
								<li class="active">Cambiar Contraseña</li>
							</ol>
						</div>
					</div>
				</div>
			</header>

			<div class="page-center">
				<div class="page-center-in">
					<div class="container-fluid">
						<form class="sign-box reset-password-box">
							<!--<div class="sign-avatar">
                        <img src="img/avatar-sign.png" alt="">
                    </div>-->
							<header class="sign-title">New Password</header>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="New Password" />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Confirm New Password" />
							</div>
							<button type="submit" class="btn btn-rounded btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div><!--.page-center-->

		</div>
	</div>

	<script>
		$(function() {
			$('.page-center').matchHeight({
				target: $('html')
			});

			$(window).resize(function() {
				setTimeout(function() {
					$('.page-center').matchHeight({
						remove: true
					});
					$('.page-center').matchHeight({
						target: $('html')
					});
				}, 100);
			});
		});
	</script>
	<?php require_once("../layout/page_js.php") ?>
	<?php require_once("../layout/page_footer.php") ?>

<?php
} else {
	header("Location:" . Conectar::ruta() . "index.php");
}
?>
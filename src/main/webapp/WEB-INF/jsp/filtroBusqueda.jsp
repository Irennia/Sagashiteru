<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="plantillas/headLogeo.jsp"%>
<body>


	<!-- LOGIN CLIENTE -->
	<header>
		<nav
			class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv"
			style="background-color: #022557;">
			<div class="container">
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarCollapse1"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand mx-auto" href="/sagashiteru"
					style="color: white;">Sagashi<span style="color: #d59c01;">teru</span></a>
				<div class="collapse navbar-collapse" id="navbarCollapse1">
					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a class="nav-link" href="/sagashiteru"
							style="color: white;">Inicio<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/contacto"
							style="color: white;">Nosotros</a></li>
						<li class="nav-item">
							<ul class="nav navbar-nav">
								<li class="dropdown"
									style="margin-top: 10px; margin-left: 30px;"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">Cliente</a>
									<ul class="dropdown-menu" style="padding: 20px;">
										<li><a href="#">Perfil</a></li>
										<li class="divider"></li>
										<li><a href="#">Mis Reservas</a></li>
										<li class="divider"></li>
										<li><a href="#">Cerrar Sesión</a></li>
									</ul></li>
							</ul>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- LOGIN HOTEL -->
	
	<header>
		<nav
			class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv"
			style="background-color: #022557;">
			<div class="container">
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarCollapse1"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand mx-auto" href="/sagashiteru"
					style="color: white;">Sagashi<span style="color: #d59c01;">teru</span></a>
				<div class="collapse navbar-collapse" id="navbarCollapse1">
					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a class="nav-link" href="/sagashiteru"
							style="color: white;">Inicio<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/contacto"
							style="color: white;">Nosotros</a></li>
						<li class="nav-item">
							<ul class="nav navbar-nav">
								<li class="dropdown"
									style="margin-top: 11px; margin-left: 30px;"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">Hotel</a>
									<ul class="dropdown-menu" style="padding: 20px;">
										<li><a href="#">Perfil</a></li>
										<li class="divider"></li>
										<li><a href="#">Gestión</a></li>
										<li class="divider"></li>
										<li><a href="#">Cerrar Sesión</a></li>
									</ul></li>
							</ul>
					</ul>
				</div>
			</div>
		</nav>
	</header>

</body>
</html>
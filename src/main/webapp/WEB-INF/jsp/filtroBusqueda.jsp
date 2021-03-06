<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sagashiteru</title>
		<link rel="shortcut icon" href="img/favicon1.png" />
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
			
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
			
		<script
			src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			
		<link
			href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			rel="stylesheet" id="bootstrap-css">
		
		<script src="js/index.js"></script>
		<link href="css/index.css" rel='stylesheet' type='text/css' />
		<link href="css/footer.css" rel='stylesheet' type='text/css' />
		<style>
		
			.main{
			 	padding: 40px 0;
			}
			.main input,
			.main input::-webkit-input-placeholder {
			    font-size: 11px;
			    padding-top: 3px;
			}
			.main-center{
			 	/* margin-top: 30px;
			 	margin: 0 auto; */
			 	margin-top: 106px;
    			margin-left: 120px;
			 	width: 69%;
			    padding: 31px;
				background:#212C88;
				color: #FFF;
			    text-shadow: none;
				-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
				-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
				box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.31);			
			}
			
		
 			span.input-group-addon i {
			    color: #009edf;
			    font-size: 17px;
			}
			
		</style>
		</head>
	<body>
		<c:choose>
		
			<c:when test = "${not empty dni}">
				<%@ include file="plantillas/headerCliente.jsp"%> 
	 		</c:when>
	 		<c:when test = "${not empty cif}">
				<%@ include file="plantillas/headerHotel.jsp"%> 
	 		</c:when>
	 		<c:otherwise>
           		<%@ include file="plantillas/header.jsp"%> 
         	</c:otherwise>
         	
	 	</c:choose>
		<c:choose>
		 <c:when test = "${empty filtroBusqueda}">
		 	<div class="container" style="margin-top: 350px; margin-bottom: 550px; max-width: 100%;">
				<h4 style="text-align: center;">No existen hoteles</h4><br><br>
				<div style="margin-left: 44%;">
					<h5>¿Quiéres Anunciarte?</h5><br>
					<a href="/registrohotel"><button class="btn btn-outline-warning" style="margin-left: 3%;">¡Anunciate Aquí!</button></a>
				</div>
			</div>
		</c:when>
		 
		 <c:when test = "${not empty filtroBusqueda}">
		 <div class="container-fluid">
		 	<div class="row">
		 	<div class="col-md-4">
		 		<div class="container">
				<div class="main">
					<div class="main-center">
					<h5 style="font-weight: bold;">Filtra tu Busqueda</h5><br>
						<form class="" method="post" action="filtroshabitacion">
							
							<div>
								<label>Nombre/Destino del Hotel</label>
								<div >
								<input type="text" name="nombrehotel" id="name" style="width: 332px;" placeholder="Introduzca el hotel al que quiere ir"/><br>
								</div>
							</div><br>
							<div>
								<label >Estrellas</label><br>
								<div style="margin-left: 10px;">
									<input type="radio" name="estrellas" style="margin-left: 10px;" value="1">&nbsp;&nbsp;1 Estrella<br>
									<input type="radio" name="estrellas" style="margin-left: 10px;" value="2">&nbsp;&nbsp;2 Estrellas<br>
									<input type="radio" name="estrellas" style="margin-left: 10px;" value="3">&nbsp;&nbsp;3 Estrellas<br>
									<input type="radio" name="estrellas" style="margin-left: 10px;" value="4">&nbsp;&nbsp;4 Estrellas<br>
									<input type="radio" name="estrellas" style="margin-left: 10px;" value="5">&nbsp;&nbsp;5 Estrellas<br><br>
								</div>
							</div>
							<div>
								<label>Tipo de Cama</label>
								<div>
									<input type="text" name="cama" style="width: 332px;" placeholder="¿Cómo quieres tu cama?"/>
								</div>
							</div><br>
							<div>
								<label>Personas</label>
								<div>
									<input type="tel" name="personas" style="width: 332px;" placeholder="¿Cuántos Sois?"/>
								</div>
							</div><br>
							<div>
								<label>Piscina</label>
								<div>
									<input type="radio" name="piscina" value="true"/><label>&nbsp;Si</label>&nbsp;
									<input type="radio" name="piscina" value="false"/><label>&nbsp;No</label>
								</div>
							</div><br>
							<div>
								<label>Animales</label>
								<div>
									<input type="radio" name="animales" value="true"/><label>&nbsp;Si</label>&nbsp;
									<input type="radio" name="animales" value="false"/><label>&nbsp;No</label>
								</div>
							</div><br>
							
							<button type="submit" class="btn btn-warning">Filtrar</button>
							
						</form>
					</div>
				</div>
			</div>	
		 	</div>
		 		<div class="col-md-8">
		 			<div class="carousel-inner" style="margin-top:173px; text-align: center; margin-bottom: 380px;">
				<div class="item carousel-item active" style=" margin-left: 22px; margin-right: -200px;">
					<div class="row" style="margin-bottom: 10px;">
					<c:forEach var="o" items="${filtroBusqueda}">
					<div class="col-md-3 column productbox" style="background-color:#ededf2; margin-left: 20px; padding:40px; width: 300px; text-align:center; box-shadow: 0px 4px 15px 0px rgba(0,0,0,0.31); margin-bottom: 60px;">
						<div class="col-lm-2">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="img/fotohotel.jpg" class="img-responsive img-fluid" alt="fotohotel">
								</div>
								<div class="thumb-content">
									<h4 style="text-align:left;"><a href="#" style="color: black; text-decoration: none">${o.nombre }</a></h4>
									<p style="text-align:left;"><img src="img/localizacion.png" style="max-width: 20px; max-height: 20px; margin-right: 5px; margin-bottom: 5px;">${o.localizacion }</p>
								</div><br>
								<div style="text-align:center;">
								<a href="/hotelcompleto?cif=${o.cif}" class="btn btn-warning">Ver Hotel</a>
								</div>		
							</div>
						</div>
					 </div>
					 </c:forEach>
					</div>
				</div>
			</div>
		 		</div>
		 	</div>
		 </div>
			
			
			
		</c:when>
		</c:choose>
		
		<%-- <c:if test = "${not empty filtroBusquedaVacia}">
		 
			<div class="carousel-inner" style="margin-top:173px; text-align: center; margin-bottom: 380px;">
				<div class="item carousel-item active" style="max-width: 80%; float: right; margin-left: 70px; margin-right: -200px;">
					<div class="row" style="margin-bottom: 10px;">
					<c:forEach var="o" items="${filtroBusqueda}">
					<div class="col-md-3 column productbox" style="background-color:#ededf2; margin-left: 20px; padding:40px; width: 300px; text-align:center; box-shadow: 0px 4px 15px 0px rgba(0,0,0,0.31); margin-bottom: 60px;">
						<div class="col-lm-2">
							<div class="thumb-wrapper">
								<div class="img-box">
									<img src="img/fotohotel.jpg" class="img-responsive img-fluid" alt="fotohotel">
								</div>
								<div class="thumb-content">
									<h4 style="text-align:left;"><a href="#" style="color: black; text-decoration: none">${o.nombre }</a></h4>
									<p style="text-align:left;"><img src="img/localizacion.png" style="max-width: 20px; max-height: 20px; margin-right: 5px; margin-bottom: 5px;">${o.localizacion }</p>
								</div><br>
								<div style="text-align:center;">
								<a href="/hotelcompleto?cif=${o.cif}" class="btn btn-warning">Ver Hotel</a>
								</div>		
							</div>
						</div>
					 </div>
					 </c:forEach>
					</div>
				</div>
			</div>
			
			<div class="container">
				<div class="main">
					<div class="main-center">
					<h5 style="font-weight: bold;">Filtra tu Busqueda</h5><br>
						<form class="" method="post" action="/filtroshabitacion">
							
							<div>
								<label>Nombre/Destino del Hotel</label>
								<div >
								<input type="text" name="nombrehotel" id="name" style="width: 332px;" placeholder="Introduzca el hotel al que quiere ir"/><br>
								</div>
							</div><br>
							<div>
								<label >Estrellas</label><br>
								<div style="margin-left: 10px;">
									<input type="checkbox" name="estrellas" style="margin-left: 10px;" value="1">&nbsp;&nbsp;1 Estrella<br>
									<input type="checkbox" name="estrellas" style="margin-left: 10px;" value="2">&nbsp;&nbsp;2 Estrellas<br>
									<input type="checkbox" name="estrellas" style="margin-left: 10px;" value="3">&nbsp;&nbsp;3 Estrellas<br>
									<input type="checkbox" name="estrellas" style="margin-left: 10px;" value="4">&nbsp;&nbsp;4 Estrellas<br>
									<input type="checkbox" name="estrellas" style="margin-left: 10px;" value="5">&nbsp;&nbsp;5 Estrellas<br><br>
								</div>
							</div>
							<div>
								<label>Tipo de Cama</label>
								<div>
									<input type="text" name="cama" style="width: 332px;" placeholder="¿Cómo quieres tu cama?"/>
								</div>
							</div><br>
							<div>
								<label>Personas</label>
								<div>
									<input type="tel" name="personas" style="width: 332px;" placeholder="¿Cuántos Sois?"/>
								</div>
							</div><br>
							<div>
								<label>Piscina</label>
								<div>
									<input type="radio" name="piscina" value="true"/><label>&nbsp;Si</label>&nbsp;
									<input type="radio" name="piscina" value="false"/><label>&nbsp;No</label>
								</div>
							</div><br>
							<div>
								<label>Animales</label>
								<div>
									<input type="radio" name="animales" value="true"/><label>&nbsp;Si</label>&nbsp;
									<input type="radio" name="animales" value="false"/><label>&nbsp;No</label>
								</div>
							</div><br>
							
							<button type="submit" class="btn btn-warning">Filtrar</button>
							
						</form>
					</div>
				</div>
			</div>
		</c:if> --%>
		
		<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
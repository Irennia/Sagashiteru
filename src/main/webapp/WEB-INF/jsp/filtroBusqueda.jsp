<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
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
			 	clear: both;
			 	float: right;
			 	margin-top: -900px;
			 	margin-right: -220px;
			 	max-width: 800px;
			    padding: 40px;
				background:#212C88;
				color: #FFF;
			    text-shadow: none;
				-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
				-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
				box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
			
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
		
		 <c:if test = "${empty filtroBusqueda}">
			<h4 style="text-align: center; margin-top: 350px;">No existen hoteles</h4><br><br>
			<div style="margin-left: 842px; margin-bottom: 385px;">
				<h5>¿Quiéres Anunciarte?</h5><br>
				<a href="/registrohotel"><button class="btn btn-outline-warning" style="margin-left: 35px;">¡Anunciate Aquí!</button></a>
			</div>
		 </c:if>
		 
		 <c:if test = "${not empty filtroBusqueda}">
		 
			<div class="carousel-inner" style="margin-top:200px; text-align: center; margin-bottom: 380px;">
				<div class="item carousel-item active" style="max-width: 80%; float: left; margin-left: 70px;">
					<div class="row">
					<c:forEach var="o" items="${filtroBusqueda}">
					<div class="col-md-3 column productbox" style="background-color:#ededf2; margin: 10px; padding:40px; width: 300px; text-align:center; box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);">
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
								<a href="#" class="btn btn-warning">Ver Hotel</a>
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
					<div class="main-center" style="width: 40%;">
					<h5 style="font-weight: bold;">Filtra tu Busqueda</h5><br>
						<form class="" method="post" action="#">
							
							<div class="form-group">
								<label for="name">Nombre Hotel</label>
								<div class="input-group">
								<input type="text" class="form-control" name="nombrehotel" id="name"  placeholder="Introduzca el hotel al que quiere ir"/>
								</div>
							</div>
							<!-- <div class="list-group" style="display: block;"> -->
								<label >Estrellas</label><br>
								
									<input type="checkbox" name="estrellas" value="1">&nbsp;&nbsp;1 Estrella<br>
									<input type="checkbox" name="estrellas" value="2">&nbsp;&nbsp;2 Estrellas<br>
									<input type="checkbox" name="estrellas" value="3">&nbsp;&nbsp;3 Estrellas<br>
									<input type="checkbox" name="estrellas" value="4">&nbsp;&nbsp;4 Estrellas<br>
									<input type="checkbox" name="estrellas" value="5">&nbsp;&nbsp;5 Estrellas<br><br>
								
							<!-- </div> -->
							
							<div class="form-group">
								<label for="confirm">Tipo de Cama</label>
								<div class="input-group">
									<input type="text" class="form-control" name="cama" placeholder="¿Cómo quieres tu cama?"/>
								</div>
							</div>
	
							<div class="form-group">
								<label for="password">Personas</label>
									<div class="input-group">
										<input type="tel" class="form-control" name="personas" placeholder="¿Cuántos Sois?"/>
									</div>
							</div>
	
							
							<br>
							<button type="submit" class="btn btn-warning">Filtrar</button>
							
						</form>
					</div><!--main-center"-->
				</div><!--main-->
			</div><!--container-->
		</c:if>
		
		<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
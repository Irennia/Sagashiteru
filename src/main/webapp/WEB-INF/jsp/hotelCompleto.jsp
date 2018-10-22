<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
	<body style="background-color: #f2f2f2;">
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
	 	<div class="container" style="max-width: 1280px;max-height: 855px;margin-top: 200px;box-shadow: 0px 15px 15px 0px rgba(0,0,0,0.31); padding: 0px !important;">
		 	<input type="hidden" value="${hotel}">
		 	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="img/hotel/hotel1.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel1">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/hotel/hotel2.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel2">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/hotel/hotel3.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel3">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/hotel/hotel4.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel4">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/hotel/hotel5.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel5">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/hotel/hotel6.jpg" style="max-width: 1280px; max-height: 583px;" alt="hotel6">
			    </div>
			  </div>
			</div>
		</div>
		
		<div class="container">
		
			<p style="text-align:left; font-weight: bold; font-size: 40px; margin-top: 150px; color: #022557;">${hotel.nombre}</p><br><br><br><br><br>
			<div style="margin-top: -73px;">
				<p>${hotel.descripcion}</p>
			</div>
			
			<div class="card" style="width: 20rem; float: right; margin-top: -380px; margin-right: -15px;">
			    <div class="card-body">
			        <h3 class="card-title">Datos de Contacto</h3>
			        <div style="margin-left: 20px;">
				        <p class="card-text">
				        	<span>${hotel.direccion}</span>
				        	<span>${hotel.telefono}</span><br>
				        	<span>${hotel.email}</span><br>		        	
				        </p>
			        </div><br>
			        <a href="#" class="btn btn-warning">Contactar</a>
			    </div>
			</div>

		</div>
		
		
		<div class="container-fluid text-center" style="max-width: 722px; margin-top: 100px; background-color: #fdfbef; padding: 0px;">
		
		   <div style="text-align: center;">
		  	 <h3 class="h5-responsive font-weight-bold my-2" style="color: #455b37; padding-top: 25px;">Servicios del Hotel</h3>
		  </div>
		  
		  <div class="row" style="justify-content: center; padding-top: 25px; padding-bottom: 25px;">
		   
		      <h5 class="font-weight-bold my-2" style="color: #455b37; margin-right: 20px;">Estrellas</h5>
		    
		   
		      <h5 class="font-weight-bold my-2" style="color: #455b37; margin-right: 20px; margin-left: 20px;">Wifi</h5>
		    
		    
		      <h5 class="font-weight-bold my-2" style="color: #455b37; margin-right: 20px; margin-left: 20px;">Servicio Habitaciones</h5>
		    
		      <h5 class="font-weight-bold my-2" style="color: #455b37; margin-right: 20px; margin-left: 20px;">Piscina</h5>
		   
		      <h5 class="font-weight-bold my-2" style="color: #455b37; margin-left: 2 0px;">Animales</h5>
		    
		  </div>
		
		</div>
		
		<div class="container" style="margin-bottom: 100px;">
			<div>
				<h3 style="text-align: center; font-weight: bold; color: #022557; margin-top: 100px; margin-bottom: 100px;">Habitaciones del Hotel</h3>
			</div>
			<c:if test = "${empty habitaciones}">
				<h4 style="text-align: center;">Este hotel no tiene habitaciones todavía</h4>
			</c:if>
			<c:forEach var="h" items="${habitaciones}">
				<div class="my-5">
				  <div class="row">
				    <div class="col-lg-5">
				      <div class="view overlay rounded z-depth-2 mb-lg-0 mb-4">
				        <img class="img-fluid" src="img/hotel/habitacion1.jpg" alt="Sample image" style="max-width: 600px; box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.31); margin-left: -26%;">
				      </div>
				    </div>
				    <div class="col-lg-7" style="padding-left: 92px; padding-top: 47px;">
				      <h3 class="font-weight-bold mb-3">${h.descripcion}</h3>
						
						<span><strong>Fecha Entrada&nbsp;&nbsp;&nbsp;</strong></span><input type="date" name="" min="2018/01/31" max="9999/12/31" style="width: 150px; height: 25px;" placeholder="&nbsp;dd/mm/aaaa">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span><strong>Fecha Salida&nbsp;&nbsp;&nbsp;</strong></span><input type="date" name="" min="2018/01/31" max="9999/12/31" style="width: 150px; height: 25px;" placeholder="&nbsp;dd/mm/aaaa">
						<br>
						<br>
						<span style="color: green;"><strong>${h.precio}&nbsp;€</strong></span><br><br>
						<input type="hidden" value="${h.id_habitacion}" name="id_habitacion">
						<p><strong>Servicios</strong></p>
							<ul class="list-inline">
							  <li class="list-inline-item">Fumador</li>
							  <li class="list-inline-item">TV</li>
							  <li class="list-inline-item">Tipo Cama</li>
							  <li class="list-inline-item">Personas</li>
							  <li class="list-inline-item">Aire</li>
							  <li class="list-inline-item">Secador</li>
							</ul>
						
							
						<c:if test = "${empty dni}">
							<a href="/loginCliente" class="btn btn-warning btn-md">Reservar</a>
						</c:if>
						<c:if test = "${not empty dni}">
							<a href="/reserva" class="btn btn-warning btn-md">Reservar</a>
						</c:if>
						
				    </div>
				  </div>
				  <hr class="my-5">
				</div>
			</c:forEach>
		</div>
		
		<script>
			$('.carousel').carousel({
				  interval: 5000
				})
		</script>
		
		<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
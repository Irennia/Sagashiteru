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
		
			<p style="text-align:left; font-weight: bold; font-size: 40px; margin-top: 150px; color: #022557;">Nombre del Hotel</p><br><br><br><br><br>
			<div style="margin-top: -73px;">
				<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi
				luctus mi nec arcu pulvinar consectetur. Cras iaculis tortor ac arcu
				varius tempus. Phasellus vitae mauris tempus, accumsan ex id,
				ultricies ex. Nunc eget eros et dolor rutrum consectetur eget id
				nulla. Sed a mauris dolor. Proin sit amet accumsan lorem. Nunc sit
				amet est varius, blandit eros at, volutpat magna. Cras eget aliquam
				metus. Morbi rutrum dignissim massa, quis tempor metus tempus vitae.
				In eget odio ac odio consectetur malesuada. Duis tincidunt, elit a
				efficitur blandit, odio erat vehicula erat, at convallis nisi mauris
				quis quam. Donec varius quam efficitur tellus aliquam sodales. Nunc
				et viverra nulla, placerat sagittis urna. Integer eu tortor et risus
				viverra interdum eu sit amet risus. <br><br>
				
				Vestibulum ante ipsum primis in
				faucibus orci luctus et ultrices posuere cubilia Curae; Cras
				fringilla velit a odio vulputate condimentum. Quisque molestie leo in
				diam convallis, non semper justo facilisis. Donec erat turpis, congue
				at justo pharetra, sollicitudin venenatis ante. Aliquam vehicula eros
				tortor, ac vestibulum purus feugiat vitae. Maecenas ac lobortis
				ipsum. Donec ac auctor ex. Aenean aliquet euismod purus, id cursus
				ante vestibulum sed. Curabitur dapibus, risus commodo accumsan
				ultrices, odio nunc bibendum ante, eget fringilla augue dui ut sem.
				Aenean placerat leo quis augue sagittis, non hendrerit eros tempus.
				Curabitur pharetra sem dui, sed placerat magna euismod eget.<br><br>
	
				Curabitur rutrum vestibulum efficitur. Integer at dictum quam. Nullam
				vel dolor luctus urna dapibus tincidunt sit amet et sapien. Donec non
				metus et diam ullamcorper eleifend. Integer cursus, tellus eget
				porttitor mattis, purus mi convallis quam, ac finibus tellus tellus
				fringilla risus. Aliquam venenatis pharetra dolor vitae consequat. In
				mattis, neque vitae tincidunt aliquam, risus nunc vulputate tellus,
				ac tempus mauris quam non dolor. Curabitur vel ultricies leo. Aenean
				non gravida eros, accumsan commodo diam. Nunc tincidunt erat eu quam
				porta, at lobortis nisl hendrerit. Vestibulum a orci tortor. Morbi
				commodo vulputate lorem non malesuada. Mauris mollis risus at felis
				posuere consequat. Nunc pharetra posuere massa. Proin a metus metus.
				Vestibulum auctor velit nisi, in dignissim urna elementum quis.
				</p>
			</div>
			
			<div class="card" style="width: 20rem; float: right; margin-top: -782px; margin-right: -15px;">
			    <div class="card-body">
			        <h3 class="card-title">Datos de Contacto</h3>
			        <div style="margin-left: 20px;">
				        <p class="card-text">
				        	<span>C/ Anabel Segura, 11</span><br>
				        	<span>28108 Alcobendas</span><br>
				        	<span>Madrid, España</span><br>
				        	<span>Tel.Hotel</span><br>
				        	<span>Email Hotel</span><br>		        	
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
			<%-- <c:forEach var="h" item="${ }"> --%>
				<div class="my-5">
				  <div class="row">
				    <div class="col-lg-5">
				      <div class="view overlay rounded z-depth-2 mb-lg-0 mb-4">
				        <img class="img-fluid" src="img/hotel/habitacion1.jpg" alt="Sample image" style="max-width: 500px; box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.31);">
				      </div>
				    </div>
				    <div class="col-lg-7" style="padding-top: 11px; padding-left: 75px;">
				      <h3 class="font-weight-bold mb-3">Título Habitación</h3>
						<p>
							Nam libero tempore, cum soluta nobis est eligendi optio
							cumque nihil impedit quo minus id quod maxime placeat facere
							possimus, omnis voluptas assumenda est, omnis dolor repellendus et
							aut officiis debitis.
						</p>
						
						<span style="color: green;"><strong>Precio</strong></span><br><br>
						
						<p><strong>Servicios</strong></p>
							<ul class="list-inline">
							  <li class="list-inline-item">Fumador</li>
							  <li class="list-inline-item">TV</li>
							  <li class="list-inline-item">Tipo Cama</li>
							  <li class="list-inline-item">Personas</li>
							  <li class="list-inline-item">Aire</li>
							  <li class="list-inline-item">Secador</li>
							</ul>
						
						
	
						<a class="btn btn-warning btn-md">Reservar</a>
				    </div>
				  </div>
				  <hr class="my-5">
				</div>
			<%-- </c:forEach> --%>
		</div>
		
		<script>
			$('.carousel').carousel({
				  interval: 5000
				})
		</script>
		
		<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
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
	 	<div class="container" style="max-width: 1280px;max-height: 853px;margin-top: 200px;">
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
		
		<script>
			$('.carousel').carousel({
				  interval: 5000
				})
		</script>
	</body>
</html>
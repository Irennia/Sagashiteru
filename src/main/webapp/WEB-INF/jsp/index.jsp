<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
	
	<body>
		<nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
        <div class="container">
	      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <a class="navbar-brand mx-auto" href="/sagashiteru">Sagashi<span>teru</span></a>
	      <div class="collapse navbar-collapse" id="navbarCollapse1">
	        <ul class="navbar-nav ml-auto">
	        
	         <li class="nav-item"> <a class="nav-link" href="/sagashiteru" href="/index">Inicio<span class="sr-only">(current)</span></a> </li>
	         <li class="nav-item"> <a class="nav-link" href="/contacto">Nosotros</a> </li>
	         <li class="nav-item"> <a style="text-decoration: none;" href="/registrohotel"><button class="btn btn-outline-warning" style="border-button: none; margin-top: 5px; margin-left: 25px; margin-right: 15px;">¡Anunciate Aquí!</button></a>
	         <li class="nav-item"> <a href="#" style="text-decoration: none;"><button class="btn btn-light"style="margin-top: 5px; margin-right: -150px; color: #022557;">Login</button></a>
	        </ul>
	      </div>
	    </div>
	    </nav> 
	    
	    <div class="container">
		        <div id="custom-search-input">
	              <div class="input-group col-md-12">
	                  <input type="text" class="  search-query form-control" placeholder="Search" />
	                  <span class="input-group-btn">
	                      <button class="btn btn-danger" type="button">
	                          <span class=" glyphicon glyphicon-search"></span>
	                      </button>
	                  </span>
	              </div>
	          </div>
			</div>
		 </div>
	
		<!-- Swiper Silder
		    ================================================== --> 
		<!-- Slider main container -->
		<div class="swiper-container main-slider" id="myCarousel">
		  <div class="swiper-wrapper">
		    <div class="swiper-slide slider-bg-position" style="background:url(img/slider4.jpg)" data-hash="slide1">
		      <h2>tú web de hoteles</h2>
		    </div>
		    <div class="swiper-slide slider-bg-position" style="background:url(img/slider3.jpg)" data-hash="slide2">
		      <h2>Happiness is nothing more than good health and a bad memory</h2>
		    </div>
		  </div>
		  <!-- Add Pagination -->
		  <div class="swiper-pagination"></div>
		  <!-- Add Navigation -->
		  <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
		  <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div>
		</div>
		
		<!-- About 
		    ================================================== -->
		<section class="about-sec parallax-section" style="margin-top: 50px; magin-bottom: 50px;" id="about">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-3" style="margin-right: 50px;">
		        <h2>Quienes Somos</h2>
		      </div>
		      <div class="col-md-4">
		        <p>Sagashiteru, cuya misión es <strong>Buscar alojamiento en tu destino
					ideal</strong>, apuesta por la tecnología digital para que viajar sea más
					fácil. En Sagashiteru conectamos a los viajeros con ofertas de
					alojamientos increíbles. La web de Sagashiteru esta disponible en
					Español, y ofrece diversas opciones de alojamiento, en varios destinos
					de diferentes países y territorios en todo el mundo.
		        </p>
		      </div>
		      <div class="col-md-4">
		        <p>Sagashiteru se fundó en Madrid en 2018 como parte de un
					proyecto, es una pequeña start-up española con vistas a convertirse a
					una de las mayores empresas e-commerce de viajes de todo el mundo.
					Sagashiteru forma parte de Sagashiteru SA., y cuenta con 3
					trabajadores en 1 oficina</p>
		        <p><a href="/contacto" class="btn btn-transparent-white btn-capsul">Saber Más</a></p>
		      </div>
		    </div>
		  </div>
		</section>
		 
  	<%@ include file="plantillas/footer.jsp"%> 
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
	
	<body>
	<c:choose>
		<c:when test = "${not empty dni}">
			<header>
				<nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
				   <div class="container">
					  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					  <a class="navbar-brand mx-auto" href="/sagashiteru" style="color: white;">Sagashi<span style="color: #d59c01;">teru</span></a>
					  <div class="collapse navbar-collapse" id="navbarCollapse1">
					    <ul class="navbar-nav ml-auto">
					    
					     <li class="nav-item"> <a class="nav-link" href="/sagashiteru" style="color: white;">Inicio<span class="sr-only">(current)</span></a> </li>
					     <li class="nav-item"> <a class="nav-link" href="/contacto" style="color: white;">Nosotros</a> </li>
					     <li class="nav-item"> 
					     	<ul class="nav navbar-nav">
						        <li class="dropdown" style="margin-top: 8px; margin-left: 30px; line-height: 2;">
						          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #022557;">Cliente</a>
						          <ul class="dropdown-menu" style="padding: 20px;">
						            <li><a href="#" style="color: #022557; text-decoration: none;">Perfil</a></li>
						            <li class="divider"></li>
						            <li><a href="#" style="color: #022557; text-decoration: none;">Mis Reservas</a></li>
						            <li class="divider" style="margin-top: 10px;"></li>
						            <li><a href="/cerrarsesion"><button class="btn btn-danger" style="height: 40px;">Cerrar Sesión</button></a></li>
						          </ul>
						        </li>
						      </ul>
					    </ul>
					  </div>
					</div>
				</nav>
			</header>
 		</c:when>
 		<c:when test = "${not empty cif}">
			<header>
				<nav
					class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
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
										<li class="dropdown" style="margin-top: 8px; margin-left: 30px; line-height: 2;">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #022557;">Hotel</a>
											<ul class="dropdown-menu" style="padding: 20px;">
												<li><a href="#" style="color: #022557; text-decoration: none;">Perfil</a></li>
												<li class="divider"></li>
												<li><a href="/gestionhotel" style="color: #022557; text-decoration: none;">Gestión</a></li>
												<li class="divider" style="margin-top: 10px;"></li>
												<li><a href="/cerrarsesion"><button class="btn btn-danger" style="height: 40px;">Cerrar Sesión</button></a></li>
											</ul></li>
									</ul>
							</ul>
						</div>
					</div>
				</nav>
			</header>
 		</c:when>
 		<c:otherwise>
           		
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
	         <li class="nav-item"><a style="text-decoration: none;" href="/loginCliente"><button class="btn btn-warning" style="margin-top: 5px; margin-right: -150px; color: #022557;">Login</button></a></li>
			</ul>
		  </div>
		</div>				
	    </nav> 
		
		</c:otherwise>
	</c:choose>
	
	
	<!-- FIN DEL HEADER -->
	
		<!-- Swiper Silder
		    ================================================== --> 
		<!-- Slider main container -->
		<div class="swiper-container main-slider" id="myCarousel">
		<div class="container buscador">
	        <div id="custom-search-input">	        
              <div class="input-group col-md-12">
                  <form action="/filtroBusqueda" method="post">
	                  <input type="text" name="localizacion" class="search-query form-control" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;¿Dónde Vas?" style="width: 1100px;"/>
		              <button type="submit" class="btn btn-warning" style="margin-left: 1100px; margin-top: -66px;">Buscar</button> 
	              </form>
              </div>
          </div>
		</div>
		  <div class="swiper-wrapper">
		    <div class="swiper-slide slider-bg-position" style="background:url(img/slider4.jpg)" data-hash="slide1">
		      <h2>tú web de hoteles</h2>
		    </div>
		    <!-- <div class="swiper-slide slider-bg-position" style="background:url(img/slider3.jpg)" data-hash="slide2">
		      <h2></h2>
		    </div> -->
		  </div>
		 <!-- 
		  <div class="swiper-pagination"></div>
		  Add Navigation
		  <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
		  <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div> -->
		</div>
		
		<!-- About 
		    ================================================== -->
		<section class="about-sec parallax-section" style="margin-top: 50px; magin-bottom: 50px;" id="about">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-3" style="margin-right: 30px;">
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







<!-- 			LOGIN


<ul class="nav navbar-nav navbar-right">
    
     <li class="dropdown">
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
		<ul id="login-dp" class="dropdown-menu">
			<li>
				 <div class="row">
						<div class="col-md-12">
							Login via
							<div class="social-buttons">
								<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
								<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
							</div>
		                             or
							 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
									<div class="form-group">
										 <label class="sr-only" for="exampleInputEmail2">Email address</label>
										 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
									</div>
									<div class="form-group">
										 <label class="sr-only" for="exampleInputPassword2">Password</label>
										 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
		                                          <div class="help-block text-right"><a href="">Forget the password ?</a></div>
									</div>
									<div class="form-group">
										 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
									</div>
									<div class="checkbox">
										 <label>
										 <input type="checkbox"> keep me logged-in
										 </label>
									</div>
							 </form>
						</div>
						<div class="bottom text-center">
							New here ? <a href="#"><b>Join Us</b></a>
						</div>
				 </div>
			</li>
		</ul>
   </li>
 </ul>


 -->
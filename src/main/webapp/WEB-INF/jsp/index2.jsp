<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sagashiteru</title>
		<link rel="shortcut icon" href="img/favicon.png"/>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<link href="css/index2.css" rel='stylesheet' type='text/css'/>
		<link href="css/footer.css" rel='stylesheet' type='text/css'/>
		<script src="js/index2.js"></script>
		
	</head>
	<body>
		<nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
        <div class="container">
	      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <a class="navbar-brand mx-auto" href="#">Sagashi<span>teru</span></a>
	      <div class="collapse navbar-collapse" id="navbarCollapse1">
	        <ul class="navbar-nav ml-auto">
	        
	         <li class="nav-item"> <a class="nav-link" href="#myCarousel">Inicio<span class="sr-only">(current)</span></a> </li>
	         <li class="nav-item"> <a class="nav-link" href="#about">Nosotros</a> </li>
	         <li class="nav-item"> <a  class="btn btn" type="button" style="margin-top: 8px; margin-left: 25px;margin-right: 15px; color: #176ba3 " href="#">¡Anunciate Aquí!</a>
	         <li class="nav-item"> <a  class="btn btn" type="button" style="margin-top: 8px; color: #176ba3; margin-right: -150px;" href="#">LOGIN</a>
	        </ul>
	      </div>
	    </div>
	    </nav>
	
		<!-- Swiper Silder
		    ================================================== --> 
		<!-- Slider main container -->
		<div class="swiper-container main-slider" id="myCarousel">
		  <div class="swiper-wrapper">
		    <div class="swiper-slide slider-bg-position" style="background:url('http://grafreez.com/wp-content/temp_demos/burnout/img/1.jpg')" data-hash="slide1">
		      <h2>It is health that is real wealth and not pieces of gold and silver</h2>
		    </div>
		    <div class="swiper-slide slider-bg-position" style="background:url('http://grafreez.com/wp-content/temp_demos/burnout/img/3.jpg')" data-hash="slide2">
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
		<section class="about-sec parallax-section" style="margin-top: 50px;"id="about">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-3">
		        <h2><small>Who We Are</small>About<br>
		          Our Blog</h2>
		      </div>
		      <div class="col-md-4">
		        <p>To enjoy good health, to bring true happiness to one's family, to bring peace to all, one must first discipline and control one's own mind. If a man can control his mind he can find the way to Enlightenment, and all wisdom and virtue will naturally come to him.</p>
		        <p>Saving our planet, lifting people out of poverty, advancing economic growth... these are one and the same fight. We must connect the dots between climate change, water scarcity, energy shortages, global health, food security and women's empowerment. Solutions to one problem must be solutions for all.</p>
		      </div>
		      <div class="col-md-4">
		        <p>Our greatest happiness does not depend on the condition of life in which chance has placed us, but is always the result of a good conscience, good health, occupation, and freedom in all just pursuits.</p>
		        <p>Being in control of your life and having realistic expectations about your day-to-day challenges are the keys to stress management, which is perhaps the most important ingredient to living a happy, healthy and rewarding life.</p>
		        <p><a href="#" class="btn btn-transparent-white btn-capsul">Explore More</a></p>
		      </div>
		    </div>
		  </div>
		</section>
		 
  	<%@ include file="plantillas/footer.jsp"%> 
	</body>
</html>
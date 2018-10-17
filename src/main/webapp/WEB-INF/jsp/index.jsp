<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sagashiteru</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link href="css/index.css" rel='stylesheet' type='text/css'/>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
		<link rel="shortcut icon" href="img/favicon.png"/>
		<script>
		
			var slideIndex = 1;
			showSlides(slideIndex);
	
			// Next/previous controls
			function plusSlides(n) {
			  showSlides(slideIndex += n);
			}
	
			// Thumbnail image controls
			function currentSlide(n) {
			  showSlides(slideIndex = n);
			}
	
			 function showSlides(n) {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  if (n > slides.length) {slideIndex = 1} 
			  if (n < 1) {slideIndex = slides.length}
			  for (i = 0; i < slides.length; i++) {
			      slides[i].style.display = "none"; 
			  }
			  slides[slideIndex-1].style.display = "block"; 
			}
			
			var slideIndex = 0;
			showSlides();

			function showSlides() {
			    var i;
			    var slides = document.getElementsByClassName("mySlides");
			    for (i = 0; i < slides.length; i++) {
			        slides[i].style.display = "none"; 
			    }
			    slideIndex++;
			    if (slideIndex > slides.length) {slideIndex = 1} 
			    slides[slideIndex-1].style.display = "block"; 
			    setTimeout(showSlides, 5000); // Change image every 2 seconds
			} 
		
		</script>
	</head>
	<body>
			
			<!-- Slideshow container -->
			<div class="slideshow-container">
					
			  <!-- Full-width images with number and caption text -->
			  <div class="mySlides fade">
			    <img src="img/slider1.jpg" style="width:100%; max-height: 500px;">
			  </div>
			
			  <div class="mySlides fade">
			    <img src="img/slider1.jpg" style="width:100%; max-height: 500px;">
			  </div>
			
			  <div class="mySlides fade">
			    <img src="img/slider1.jpg" style="width:100%; max-height: 500px;">
			  </div>
			
			  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			  <a class="next" onclick="plusSlides(1)">&#10095;</a>
			</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="plantillas/head.jsp"%>
<body>
		<%@ include file="plantillas/header.jsp"%>
		
		 <c:if test = "${empty filtroBusqueda}">
			<h4 style="text-align: center; margin-top: 350px;">No existen hoteles</h4><br><br>
			<div style="margin-left: 842px; margin-bottom: 385px;">
				<h5>¿Quiéres Anunciarte?</h5><br>
				<a href="/registrohotel"><button class="btn btn-outline-warning" style="margin-left: 35px;">¡Anunciate Aquí!</button></a>
			</div>
		 </c:if>
		 
		 <c:if test = "${not empty filtroBusqueda}">
		 
			<div class="carousel-inner" style="margin-top:200px; text-align: center; margin-bottom: 380px;">
				<div class="item carousel-item active" style="max-width: 80%; float: left; margin-left: 130px;">
					<div class="row">
					<c:forEach var="o" items="${filtroBusqueda}">
					<div class="col-md-3 column productbox" style="background-color:#ededf2; margin: 5px; padding:40px; width: 300px;" style="text-align:center;">
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
		</c:if>
		
		<%@ include file="plantillas/footer.jsp" %>
</body>
</html>
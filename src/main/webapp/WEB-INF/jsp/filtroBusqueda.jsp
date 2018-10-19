<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="plantillas/head.jsp"%>
<body>
		<%@ include file="plantillas/header.jsp"%>
		
		<c:if test = "${empty filtroBusqueda}">
			<h4 style="text-align: center; margin-top: 100px;">No existen hoteles</h4><br>
		 </c:if>
		 
		 <c:if test = "${not empty filtroBusqueda}">
		 
		<div class="carousel-inner" style="margin-top:200px; margin-left: 200px;">
			<div class="item carousel-item active">
				<div class="row">
				<c:forEach var="o" items="${filtroBusqueda}">
				<div class="col-md-3 column productbox" style="background-color:#ededf2; margin: 5px; padding:40px; padding-bottom: 60px;" style="text-align:center;">
					<div class="col-lm-2">
						<div class="thumb-wrapper">
							<div class="img-box">
								<img src="" class="img-responsive img-fluid" alt="">
							</div>
							<div class="thumb-content">
								<h4 style="text-align:center;">${o.nombre }</h4>
								<p  style="text-align:center;"> <span>${o.descripcion }</span></p>
							</div>	
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
	<body>
		<c:choose>
			<c:when test = "${not empty dni}">
				<%@ include file="plantillas/headerCliente.jsp"%> 
	 		</c:when>
	 		<c:otherwise>
           		<%@ include file="plantillas/header.jsp"%> 
         	</c:otherwise>
	 	</c:choose>
	 	
	 	<div class="card card-image" style="background-color: #022557">
		  <div class="text-white text-center py-5 px-4 my-5">
		    <div style="padding-top: 40px;">
		      <h2 class="card-title h1-responsive pt-3 mb-5 font-bold"><strong>Mis Reservas</strong></h2>
		      <a href="/perfilcliente" class="btn btn-outline-warning btn-md">Volver al Perfil</a>
		    </div>
		  </div>
		</div>
	 	<%-- <c:forEach var="r" items=""> --%>
	 	<div class="container" style="max-width: 70%; margin-top: 100px; box-shadow: 0px 5px 15px 0px rgba(0,0,0,0.31); padding: 0px;">
			<div class="jumbotron text-center hoverable p-4">
			  <div class="row">
			    <div class="col-md-4 offset-md-1 mx-3 my-3">
			      <div class="view overlay">
			        <img src="img/hotel/habitacion2.jpg" class="img-fluid" alt="Sample image for first version of blog listing">
			      </div>
			    </div>
			    <div class="col-md-7 text-md-left ml-3 mt-3">
			      <h4 class="h4 mb-4" style="margin-top: 37px;"><strong>Nombre Hotel</strong></h4>
			
			      <p class="font-weight-normal"><strong>Fecha Reserva -</strong> DD/MM/AAAA</p><br>
			      <span style="color: green;"><strong>Precio Total</strong></span>
			        <div style="float: right; margin-top: -67px; margin-right: 46px;">
				      <p class="font-weight-normal"><strong>Fecha Entrada</strong> DD/MM/AAAA</p>
				      <p class="font-weight-normal"><strong>Fecha Salida</strong> DD/MM/AAAA</p>
				    </div>
			    </div>
			  </div>
			</div>
		</div>
		<%-- </c:forEach> --%>
		
		<div style="margin-bottom: 200px;"></div>
		
		<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
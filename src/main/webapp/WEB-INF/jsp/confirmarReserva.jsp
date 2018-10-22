<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<%@ include file="plantillas/head.jsp"%> 
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style>
	
		.modal {
		  text-align: center;
		}
		
		@media screen and (min-width: 768px) { 
		  .modal:before {
		    display: inline-block;
		    vertical-align: middle;
		    content: " ";
		    height: 100%;
		  }
		}
		
		.modal-dialog {
		  display: inline-block;
		  text-align: left;
		  vertical-align: middle;
		}
	
	</style>
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
	 	
	 	<div class="container" style="margin-top: 200px; width: 29%;">
		
			<form action="/confirmarreserva" class="text-center border border-light p-5">
			    <p class="h4 mb-4">Confirma la Reserva</p>
			    <input type="text" class="form-control mb-4" placeholder="hotel">
			    <input type="text" class="form-control mb-4" placeholder="habitacion">
			    <input type="text" class="form-control mb-4" placeholder="fechaentrada">
			    <input type="text" class="form-control mb-4" placeholder="fechasalida">
				<span style="color: green;" style="text-align: left;"><strong>precio&nbsp;€</strong></span><br>	
			    <br>
			    
			    <%-- <c:if test="${empty }"> --%>
			    <button class="btn btn-warning btn-block" type="submit">Confirmar</button>
				
				<%-- </c:if> --%>
				
				<%-- <c:if test="${not empty  }">
			    <button class="btn btn-warning btn-block" type="submit">Confirmar</button>
				</c:if> --%>
			</form>
			
		</div>
		
	</body>
</html>
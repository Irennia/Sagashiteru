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

	
</body>
</html>
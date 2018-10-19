<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<meta charset="ISO-8859-1">
		<link href = "css/registrohotel.css" rel= "stylesheet" type="text/css"/>
		<link href = "css/footer.css" rel= "stylesheet" type="text/css"/>
		<title>Registra tu Hotel</title>
	</head>
	<body>
	<%@ include file="plantillas/header.jsp" %>
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<div class="container register" style="margin-top: 120px; margin-bottom: 201px;">
         <div class="row">
             <div class="col-md-3 register-left">
                 <img src="img/hellohotel.svg" alt=""/>
                 <h3>Bienvenido a Sagashiteru</h3>
                 <p>Estas a un paso de entrar en nuestra familia.</p>
                 <p>Gracias por acompañarnos y confiar en nosotros.</p>
             </div>
             <div class="col-md-9 register-right">
                 <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                     <li class="nav-item">
                         <a class="nav-link active" id="home-tab" data-toggle="tab" href="#login" role="tab" aria-controls="home" aria-selected="true">Log In</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" id="profile-tab" data-toggle="tab" href="#registro" role="tab" aria-controls="profile" aria-selected="false">Registro</a>
                     </li>
                 </ul>
                 <div class="tab-content" id="myTabContent">
                     <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="home-tab">
                         <h3 class="register-heading">Hola de nuevo!</h3>
                         
                         <form class="row register-form" action="/login" method="post">
                         <div class="col-md-6">
                         <p>¿Nos echabas de menos?</p>
                         <p>Nosotros a ti si</p>
                         </div>
                         
                             <div class="col-md-6">
                                 <div class="form-group">
                                     <input type="text" name ="dni" class="form-control" placeholder="DNI *"  ></input>
                                 </div>
                                 <div class="form-group">
                                     <input type="password" name ="password" class="form-control" placeholder="Password *"  ></input>
                                 </div>
                                <input type="submit" class="btnRegister"  value="Log In"/>
                             </div>
                           </form>
                        
                     </div>
                     <div class="tab-pane fade show" id="registro" role="tabpanel" aria-labelledby="profile-tab">
                         <h3  class="register-heading">Nuevo en Sagashiteru? Registrate aquí</h3>
                         <form class="row register-form" action="/registro" method="post">
                         
                            <div class="col-md-6">
                                 <div class="form-group">
                                     <input type="text"name ="dni" class="form-control" placeholder="DNI *" ></input>
                                 </div>
                                 <div class="form-group">
                                     <input type="email"name ="email" class="form-control" placeholder="Email *" ></input>
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="form-group">
                                     <input type="password" name ="password" class="form-control" placeholder="Password *"  ></input>
                                 </div>
                                 <div class="form-group">
                                    <input type="password" name ="verificacion" class="form-control" placeholder="Password *"  ></input>
                                 </div>
                                 <input type="submit" class="btnRegister"  value="Registrate"/>
                             </div>
                         
                         </form>
                     </div>
                 </div>
             </div>
         </div>
    </div>
	<%@ include file="plantillas/footer.jsp" %>
	</body>
</html>
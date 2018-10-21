<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="plantillas/head.jsp"%>
<style>

input[type=submit] {
    padding:5px 15px; 
    background:#022557; 
    border:0 none;
    cursor:pointer;
    color:white;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    margin-top: 20px;
}

input[type=submit]:hover {
    padding:5px 15px; 
    background:#d59c01; 
    border:0 none;
    cursor:pointer;
    color:#022557;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    margin-top: 20px;
}


</style>

<body>
	<%@ include file="plantillas/headerCliente.jsp"%>


	<div class="container"
		style="margin-top: 150px; display: flex; flex-direction: column; justify-content: space-between;">
		<div>
			<h4>Tus datos actuales</h4>
		</div>
		<div class="container"
			style="display: flex; flex-direction: row; justify-content: space-around;">

			<div>DNI:</div>

			<div>E-mail:</div>
		</div>
		<div class="divider"
				style="width: 1x; margin-top: 3em;  border-style: outset; border-radius: 10px; border-color: orange;"></div>
		<div
			style="display: flex; margin: 10px; padding: 20px; flex-direction: row; justify-content: space-around; ">
			<div class="form-group" style="width: 400px; margin-top: 20px;">
				<h5>Cambia tu Email</h5>
				<br>
				<form class="row register-form" action="#" method="post">
					<input type="text" class="form-control"
						placeholder="Escribe tu mail antiguo" value="" /> <input
						type="text" class="form-control"
						placeholder="Escribe tu nuevo mail" value=""
						style="margin-top: 30px;" /> <input style="margin-top: 50px;"
						type="submit" class="" value="Cambiar" />
				</form>
				<hr
					style="display: block; margin-top: 0.5em; margin-bottom: 0.5em; margin-left: auto; margin-right: auto; border-style: outset; border-width: 2px; border-color: orange; margin-top: 30px; border-radius: 10px">
				<div class="divider"
					style="width: 2px; margin: 0px 6px; background-color: #022557; margin-top: 30px;"></div>
				<h5>Cambia tu Password</h5>
				<br>
				<form class="row register-form" action="#" method="post">
					<input type="password" class="form-control"
						placeholder="Escribe tu password antigua" value="" id="mypass" />
					<br> <input type="checkbox" id="mypass"
						onclick="mypassFunction()" style="margin-top: 15px;"><br>
					<label for="mypass" style="margin-top: 10px">Mostrar
						password</label><br> <input type="password" class="form-control"
						placeholder="Escribe tu nueva password" value="" id="mynewpass"
						style="margin-top: 30px;" /><br> <input type="checkbox"
						id="mynewpass" onclick="mynewpassFunction()"
						style="margin-top: 15px;"> <label for="mynewpass"
						style="margin-top: 10px">Mostrar password nueva</label><br> <input
						type="password" class="form-control"
						placeholder="Confirma tu nueva password" value="" /> <input
						style="margin-top: 50px;" type="submit" class="" value="Cambiar" />
				</form>

			</div>
			<div class="divider"
				style="width: 3px; margin: 0px 0; border-style: outset; border-radius: 10px; border-color: #022557;"></div>
			<div class="form-group" style="width: 400px; margin-top: 20px;">
				<h5>Datos adicionales</h5>
				<br>
				<form class="row register-form" action="#" method="post">
					<label>Nombre:</label> <input type="text" class="form-control"
						placeholder="Danos un nombre" value="" id="nombrecliente" /> <label>Apellidos:</label>
					<input type="text" class="form-control" placeholder="Y tu apellido"
						value="" id="apellidocliente" /><br> <label
						style="margin-top: 20px;">Telefono:</label> <input type="tel"
						class="form-control" placeholder="Quizas tengamos que contactarte"
						value="" id="telcliente" /> <label style="margin-top: 20px;">Numero
						de tarjeta:</label> <input type="tel" class="form-control"
						placeholder="Importante para realizar reservas" value=""
						id="tarjetacliente" /> <input style="margin-top: 50px;"
						type="submit" class="" value="Cambiar" />
				</form>
			</div>

		</div>

	</div>



<div style="margin-bottom: 80px;"></div>

	<%@ include file="plantillas/footer.jsp"%>

	<script>
		function mypassFunction() {
			var x = document.getElementById("mypass");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}

		function mynewpassFunction() {
			var x = document.getElementById("mynewpass");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>
</body>
</html>
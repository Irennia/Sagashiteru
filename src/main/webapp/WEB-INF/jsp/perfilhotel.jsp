<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="plantillas/head.jsp"%>

<body>
	<%@ include file="plantillas/headerHotel.jsp"%>


	<div class="container"
		style="margin-top: 200px; display: flex; flex-direction: column; justify-content: space-between;">
		<div>
			<h4>Tus datos actuales</h4>
		</div>
		<div class="container"
			style="display: flex; flex-direction: row; justify-content: space-around;">

			<div>CIF:</div>

			<div>E-mail:</div>
		</div>
		<div class="divider"
			style="width: 2px; margin: 0px 6px; background-color: #022557;"></div>
		<div
			style="display: flex; margin: 10px; padding: 20px; flex-direction: row; justify-content: space-around; border-top: 1px solid black;">
			<div class="form-group" style="width: 400px; ">
				<h5>Cambia tu Email</h5>
				<br> 
				<form class="row register-form" action="#" method="post">
				<input type="text" class="form-control"
					placeholder="Escribe tu mail antiguo" value="" /> <input
					type="text" class="form-control"
					placeholder="Escribe tu nuevo mail" value="" />
					<br><br>
					<input type="submit" class="" value="Cambiar" />
				</form>
			</div>
			<div class="divider"
				style="width: 3px; margin: 0px 0; background-color: #022557;"></div>
			<div class="form-group" style="width: 400px;">
				<h5>Cambia tu Password</h5>
				<br>
				<form class="row register-form" action="#" method="post">
				 <input type="password" class="form-control"
					placeholder="Escribe tu password antigua" value="" /> <input
					type="password" class="form-control"
					placeholder="Escribe tu nueva password" value="" /> <input
					type="password" class="form-control"
					placeholder="Confirma tu nueva password" value="" />
					<br><br>
					<input type="submit" class="" value="Cambiar" />
				</form>
			</div>

		</div>

	</div>





	<%@ include file="plantillas/footer.jsp"%>
</body>
</html>
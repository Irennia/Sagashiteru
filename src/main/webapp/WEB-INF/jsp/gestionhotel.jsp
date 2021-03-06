<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="UTF-8">

<link href="css/footer.css" rel='stylesheet' type='text/css' />
<link href="css/gestionhotel.css" rel='stylesheet' type='text/css' />
<title>Sagashiteru</title>
<link rel="shortcut icon" href="img/favicon1.png" />

<style>
.nav nav-tabs nav-justified-head {
	width: 400px;
	background-color: #022557;
}

.nav-item-head a {
	display: block;
	color: #d59c01;
	padding: 8px 16px;
	text-decoration: none;
	background-color: #022557;
}

.nav-item-head>a:hover {
	background-color: #d59c01;
	color: #022557;
}

.nav-link.active {
	background-color: #d59c01 !important;
	color: #022557 !important;
}

input[type=submit] {
	padding: 5px 15px;
	background: #022557;
	border: 0 none;
	cursor: pointer;
	color: white;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}

a:not([href]):not([tabindex]) {
    color: white !important;
}

a:not([href]):not([tabindex]):hover {
    color: #022557 !important;
    text-decoration: none;
}


input[type=submit]:hover {
	padding: 5px 15px;
	background: #d59c01;
	border: 0 none;
	cursor: pointer;
	color: #022557;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}

fieldset {
	display: block;
	margin-left: 2px;
	margin-right: 2px;
	padding-top: 1em;
	padding-bottom: 1em;
	padding-left: 2em;
	padding-right: 2em;
	border: 3px groove(internal value);
	border-radius: 10px;
	border-color: transparent;
	margin-top: 20px;
}

fieldset:hover {
	display: block;
	margin-left: 2px;
	margin-right: 2px;
	padding-top: 1em;
	padding-bottom: 1em;
	padding-left: 2em;
	padding-right: 2em;
	border: 2px groove;
	margin-top: 20px;
	border-color: #022557;
}

.boton {
	padding: 5px 15px;
	background: #022557;
	border: 0 none;
	cursor: pointer;
	color: white;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}

.boton:hover {
	padding: 5px 15px;
	background: #d59c01;
	border: 0 none;
	cursor: pointer;
	color: #022557;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}

.botonrojo {
	padding: 5px 15px;
	background: red;
	border: 0 none;
	cursor: pointer;
	color: white;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}

.botonrojo:hover {
	padding: 5px 15px;
	background: #FBEFF2;
	border: 0 none;
	cursor: pointer;
	color: red;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin-top: 20px;
}
</style>

</head>
<body>
	<%@ include file="plantillas/headerHotel.jsp"%>

	<div style="margin-top: 80px;"></div>


	<div class="container register" style="margin-bottom: 597px;">
		<div class="col-md-9 register-right">
			<ul class="nav nav-tabs nav-justified-head" id="myTab" role="tablist">

				<li class="nav-item-head"><a class="nav-link" id="hotel-tab"
					data-toggle="tab" href="#hotel" role="tab" aria-controls="home"
					aria-selected="false"> Información general hotel </a></li>


				<li class="nav-item-head"><a class="nav-link" id="habita-tab"
					data-toggle="tab" href="#habitaciones" role="tab"
					aria-controls="home" aria-selected="false"> Habitaciones y
						precios </a></li>

			</ul>



			<div class="tab-content" id="myTabContent">

				<div class="tab-pane fade show active" id="#inicio" role="tabpanel">
					<div style="margin-top: 40px;"></div>
					<h3>Bienvenido a la gestion de tu hotel</h3>
					Aqui podras modificar los datos de tu hotel, añadir y gestionar tus
					habitaciones y ver las reservas efetuadas en tu hotel
				</div>

				<div class="tab-pane fade show" id="hotel" role="tabpanel"
					aria-labelledby="home-tab">
					<div style="margin-top: 40px;"></div>
					<h3 class="register-heading">Tu hotel</h3>

					<form class="row register-form" action="/AñadirHotel" method="post">
						<div class="col-md-6">

							<p>Informacion general de tu hotel</p>
							<fieldset>

								<legend>¿Como se llama tu hotel?</legend>
								<div class="form-group">
									<input type="text" name="nombre" class="form-control"
										placeholder="Nombre" value=""> </input><small>Este es
										el nombre que veran los clientes al buscar alojamiento</small>
								</div>
								<div class="form-group">
									<label>Estrellas</label> <select class='col-md-12 form-control'
										id="estrellas" name="estrellas">
										<option value="0" selected="selected">No aplicable</option>
										<option value="1">1&nbsp;&#x272F;</option>
										<option value="2">2&nbsp;&#x272F;&#x272F;</option>
										<option value="3">3&nbsp;&#x272F;&#x272F;&#x272F;</option>
										<option value="4">4&nbsp;&#x272F;&#x272F;&#x272F;&#x272F;</option>
										<option value="5">5&nbsp;&#x272F;&#x272F;&#x272F;&#x272F;&#x272F;</option>
									</select>
								</div>
							</fieldset>
							<fieldset>

								<legend>¿Cuales son los datos de contacto de tu hotel?</legend>
								<div class="form-group">
									<label>Nombre de contacto</label> <input type="text"
										class="form-control" name="contacto" placeholder="" value=""></input>
								</div>
								<div class="form-group">
									<label>Telefono</label> <input type="tel" class="form-control"
										name="telefono" placeholder="" value=""></input>
								</div>
							</fieldset>

							<fieldset>

								<legend>¿Donde se encuentra tu hotel?</legend>
								<div class="form-group">
									<label>Calle</label> <input type="text" class="form-control"
										name="calle" placeholder="" value=""></input>
								</div>
								<div class="form-group">
									<label>País/región</label> <select class='form-control'
										name="pais" id="">
										<option selected=selected>-- Seleccionar país/región
											--</option>
										<option value="Abjasia">Abjasia</option>
										<option value="Afganistán">Afganistán</option>
										<option value="Albania">Albania</option>
										<option value="Alemania">Alemania</option>
										<option value="Andorra">Andorra</option>
										<option value="Angola">Angola</option>
										<option value="Anguil">Anguila</option>
										<option value="Antigua y Barbuda">Antigua y Barbuda</option>
										<option value="Antártida">Antártida</option>
										<option value="Arabia Saudí">Arabia Saudí</option>
										<option value="Argelia">Argelia</option>
										<option value="Argentina">Argentina</option>
										<option value="Armenia">Armenia</option>
										<option value="Aruba">Aruba</option>
										<option value="Australia">Australia</option>
										<option value="Austria">Austria</option>
										<option value="Azerbaiyán">Azerbaiyán</option>
										<option value="Bahamas">Bahamas</option>
										<option value="Bahréin">Bahréin</option>
										<option value="Bangladesh">Bangladesh</option>
										<option value="Barbados">Barbados</option>
										<option value="Belice">Belice</option>
										<option value="Benín">Benín</option>
										<option value="Bermudas">Bermudas</option>
										<option value="Bielorrusia">Bielorrusia</option>
										<option value="Bolivia">Bolivia</option>
										<option value="Bonaire, Saint Eustatius y Saba">Bonaire,
											Saint Eustatius y Saba</option>
										<option value="Bosnia y Herzegovina">Bosnia y
											Herzegovina</option>
										<option value="Botsuana">Botsuana</option>
										<option value="Brasil">Brasil</option>
										<option value="Brunéi Darussalam">Brunéi Darussalam</option>
										<option value="Bulgaria">Bulgaria</option>
										<option value="Burkina Faso">Burkina Faso</option>
										<option value="Burundi">Burundi</option>
										<option value="Bután">Bután</option>
										<option value="Bélgica">Bélgica</option>
										<option value="Cabo Verde">Cabo Verde</option>
										<option value="Camboya">Camboya</option>
										<option value="Camerún">Camerún</option>
										<option value="Canadá">Canadá</option>
										<option value="Chad">Chad</option>
										<option value="Chile">Chile</option>
										<option value="China">China</option>
										<option value="Chipre">Chipre</option>
										<option value="Ciudad del Vaticano">Ciudad del
											Vaticano</option>
										<option value="Colombia">Colombia</option>
										<option value="Comores">Comores</option>
										<option value="Congo">Congo</option>
										<option value="Corea del Sur">Corea del Sur</option>
										<option value="Costa Rica">Costa Rica</option>
										<option value="Costa de Marfil">Costa de Marfil</option>
										<option value="Crimea">Crimea</option>
										<option value="Croacia">Croacia</option>
										<option value="Cuba">Cuba</option>
										<option value="Curaçao">Curaçao</option>
										<option value="Dinamarca">Dinamarca</option>
										<option value="Dominica">Dominica</option>
										<option value="Ecuador">Ecuador</option>
										<option value="Egipto">Egipto</option>
										<option value="El Salvador">El Salvador</option>
										<option value="Emiratos Árabes Unidos">Emiratos
											Árabes Unidos</option>
										<option value="Eritrea">Eritrea</option>
										<option value="Eslovaquiask">Eslovaquia</option>
										<option value="Eslovenia">Eslovenia</option>
										<option value="España">España</option>
										<option value="Estados Unidos">Estados Unidos</option>
										<option value="Estonia">Estonia</option>
										<option value="Etiopía">Etiopía</option>
										<option value="Filipinas">Filipinas</option>
										<option value="Finlandia">Finlandia</option>
										<option value="Fiyi">Fiyi</option>
										<option value="Francia">Francia</option>
										<option value="Gabón">Gabón</option>
										<option value="Gambia">Gambia</option>
										<option value="Georgia">Georgia</option>
										<option value="Ghana">Ghana</option>
										<option value="Gibraltar">Gibraltar</option>
										<option value="Granada">Granada</option>
										<option value="Grecia">Grecia</option>
										<option value="Groenlandia">Groenlandia</option>
										<option value="Guadalupe">Guadalupe</option>
										<option value="Guam">Guam</option>
										<option value="Guatemala">Guatemala</option>
										<option value="Guayana Francesa">Guayana Francesa</option>
										<option value="Guernsey">Guernsey</option>
										<option value="Guinea">Guinea</option>
										<option value="Guinea Ecuatorial">Guinea Ecuatorial</option>
										<option value="Guinea-Bisáu">Guinea-Bisáu</option>
										<option value="Guyana">Guyana</option>
										<option value="Haití">Haití</option>
										<option value="Honduras">Honduras</option>
										<option value="Hong Kong">Hong Kong</option>
										<option value="Hungría">Hungría</option>
										<option value="India">India</option>
										<option value="Indonesia">Indonesia</option>
										<option value="Irak">Irak</option>
										<option value="Irlanda">Irlanda</option>
										<option value="Isla Mauricio">Isla Mauricio</option>
										<option value="Isla de Man">Isla de Man</option>
										<option value="Isla de Navidad">Isla de Navidad</option>
										<option value="Islandia">Islandia</option>
										<option value="Islas Caimán">Islas Caimán</option>
										<option value="Islas Cocos">Islas Cocos</option>
										<option value="Islas Cook">Islas Cook</option>
										<option value="Islas Feroe">Islas Feroe</option>
										<option
											value="Islas Georgias del Sur y Sandwich
											del Sur">Islas
											Georgias del Sur y Sandwich del Sur</option>
										<option value="Islas Heard y McDonald">Islas Heard y
											McDonald</option>
										<option value="Islas Malvinas">Islas Malvinas</option>
										<option value="Islas Marianas del Norte">Islas
											Marianas del Norte</option>
										<option value="Islas Marshall">Islas Marshall</option>
										<option value="Islas Menores de los EEUU">Islas
											Menores de los EEUU</option>
										<option value="Islas Norfolk">Islas Norfolk</option>
										<option value="Islas Salomón">Islas Salomón</option>
										<option value="Islas Turks y Caicos">Islas Turks y
											Caicos</option>
										<option value="Islas Vírgenes (EEUU)">Islas Vírgenes
											(EEUU)</option>
										<option value="Islas Vírgenes Británicas">Islas
											Vírgenes Británicas</option>
										<option value="Israel">Israel</option>
										<option value="Italia">Italia</option>
										<option value="Jamaica">Jamaica</option>
										<option value="Japón">Japón</option>
										<option value="Jersey">Jersey</option>
										<option value="Jordania">Jordania</option>
										<option value="Kazajstán">Kazajstán</option>
										<option value="Kenia">Kenia</option>
										<option value="Kirguizistán">Kirguizistán</option>
										<option value="Kiribati">Kiribati</option>
										<option value="Kosovo">Kosovo</option>
										<option value="Kuwait">Kuwait</option>
										<option value="Laos">Laos</option>
										<option value="Lesoto">Lesoto</option>
										<option value="Letonia">Letonia</option>
										<option value="Liberia">Liberia</option>
										<option value="Libia">Libia</option>
										<option value="Liechtenstein">Liechtenstein</option>
										<option value="Lituania">Lituania</option>
										<option value="Luxemburgo">Luxemburgo</option>
										<option value="Líbano">Líbano</option>
										<option value="Macao">Macao</option>
										<option value="Macedonia">Macedonia</option>
										<option value="Madagascar">Madagascar</option>
										<option value="Malasia">Malasia</option>
										<option value="Malawi">Malawi</option>
										<option value="Maldivas">Maldivas</option>
										<option value="Mali">Mali</option>
										<option value="Malta">Malta</option>
										<option value="Marruecos">Marruecos</option>
										<option value="Martinica">Martinica</option>
										<option value="Mauritania">Mauritania</option>
										<option value="Mayotte">Mayotte</option>
										<option value="Micronesia">Micronesia</option>
										<option value="Moldavia">Moldavia</option>
										<option value="Mongolia">Mongolia</option>
										<option value="Montenegro">Montenegro</option>
										<option value="Montserrat">Montserrat</option>
										<option value="Mozambique">Mozambique</option>
										<option value="Myanmar">Myanmar</option>
										<option value="México">México</option>
										<option value="Mónaco">Mónaco</option>
										<option value="Namibia">Namibia</option>
										<option value="Nauru">Nauru</option>
										<option value="Nepal">Nepal</option>
										<option value="Nicaragua">Nicaragua</option>
										<option value="Nigeria">Nigeria</option>
										<option value="Niue">Niue</option>
										<option value="Noruega">Noruega</option>
										<option value="Nueva Caledonia">Nueva Caledonia</option>
										<option value="Nueva Zelanda">Nueva Zelanda</option>
										<option value="Níger">Níger</option>
										<option value="Omán">Omán</option>
										<option value="Pakistán">Pakistán</option>
										<option value="Palau">Palau</option>
										<option value="Panamá">Panamá</option>
										<option value="Papúa Nueva Guinea">Papúa Nueva Guinea</option>
										<option value="Paraguay">Paraguay</option>
										<option value="Países Bajos">Países Bajos</option>
										<option value="Perú">Perú</option>
										<option value="Pitcairn">Pitcairn</option>
										<option value="Polinesia Francesa">Polinesia Francesa</option>
										<option value="Poloniapl">Polonia</option>
										<option value="Portugal">Portugal</option>
										<option value="Puerto Rico">Puerto Rico</option>
										<option value="Qatar">Qatar</option>
										<option value="Reino Unido">Reino Unido</option>
										<option value="República Centroafricana">República
											Centroafricana</option>
										<option value="República Checa">República Checa</option>
										<option value="República Democrática del Congo">República
											Democrática del Congo</option>
										<option value="República Dominicana">República
											Dominicana</option>
										<option value="Reunión">Reunión</option>
										<option value="Ruanda">Ruanda</option>
										<option value="Rumanía">Rumanía</option>
										<option value="Rusia">Rusia</option>
										<option value="Saint Martin">Saint Martin</option>
										<option value="Samoa">Samoa</option>
										<option value="Samoa Americana">Samoa Americana</option>
										<option value="San Bartolomé">San Bartolomé</option>
										<option value="San Cristóbal y Nieves">San Cristóbal
											y Nieves</option>
										<option value="mSan Marino">San Marino</option>
										<option value="San Pedro y Miquelón">San Pedro y
											Miquelón</option>
										<option value="San Vicente y las Granadinas">San
											Vicente y las Granadinas</option>
										<option value="Santa Helena">Santa Helena</option>
										<option value="Santa Lucía">Santa Lucía</option>
										<option value="Santo Tomé y Príncipe">Santo Tomé y
											Príncipe</option>
										<option value="Senegal">Senegal</option>
										<option value="Serbia">Serbia</option>
										<option value="Seychelles">Seychelles</option>
										<option value="Sierra Leona">Sierra Leona</option>
										<option value="Singapur">Singapur</option>
										<option value="Sint Maarten">Sint Maarten</option>
										<option value="Somalia">Somalia</option>
										<option value="Sri Lanka">Sri Lanka</option>
										<option value="Suazilandia">Suazilandia</option>
										<option value="Sudáfrica">Sudáfrica</option>
										<option value="Sudán del Sur">Sudán del Sur</option>
										<option value="Suecia">Suecia</option>
										<option value="Suiza">Suiza</option>
										<option value="Surinam">Surinam</option>
										<option value="Svalbard y Jan Mayen">Svalbard y Jan
											Mayen</option>
										<option value="Tadjikistán">Tadjikistán</option>
										<option value="Tailandia">Tailandia</option>
										<option value="Taiwán">Taiwán</option>
										<option value="Tanzania">Tanzania</option>
										<option
											value="Territorio Británico del Océano
											Índico">Territorio
											Británico del Océano Índico</option>
										<option value="Territorio Palestino">Territorio
											Palestino</option>
										<option value="Territorios Franceses del Sur">Territorios
											Franceses del Sur</option>
										<option value="Timor Oriental">Timor Oriental</option>
										<option value="Togo">Togo</option>
										<option value="Tokelau">Tokelau</option>
										<option value="Tonga">Tonga</option>
										<option value="Trinidad y Tobago">Trinidad y Tobago</option>
										<option value="Turkmenistán">Turkmenistán</option>
										<option value="Turquía">Turquía</option>
										<option value="Tuvalu">Tuvalu</option>
										<option value="Túnez">Túnez</option>
										<option value="Ucrania">Ucrania</option>
										<option value="Uganda">Uganda</option>
										<option value="Uruguay">Uruguay</option>
										<option value="Uzbekistán">Uzbekistán</option>
										<option value="Vanuatu">Vanuatu</option>
										<option value="Venezuela">Venezuela</option>
										<option value="Vietnam">Vietnam</option>
										<option value="Wallis y Futuna">Wallis y Futuna</option>
										<option value="Yemen">Yemen</option>
										<option value="Yibuti">Yibuti</option>
										<option value="Zambia">Zambia</option>
										<option value="Zimbabue">Zimbabue</option>
									</select>
								</div>
								<div class="form-group">
									<label>Ciudad</label> <input type="text" class="form-control"
										name="localizacion" placeholder="" value=""></input>
								</div>

								<div class="form-group">
									<label>Codigo postal</label> <input type="text"
										class="form-control" name="codigo" placeholder="" value=""></input>
								</div>

							</fieldset>
							<fieldset>

								<legend>Información adicional</legend>
								<div class="form-group">
									<label>Descripcion</label>
									<textarea class="form-control" name="descripcion"
										placeholder="" value="">Escribe una breve descripcion de tu hotel</textarea>

								</div>
								<div class="row">
									<div class="form-group col-sm-4">
										<label>Servicio de Habitaciones</label>
									</div>
									<div class="form-group col-sm-4">
										<div class="radio-block" id="servhabitaciones">
											<div class="radio">
												<label> <input type="radio" name="servhabitaciones"
													value="true"></input> <span>Sí</span>
												</label>
											</div>
										</div>
									</div>

									<div class="form-group col-sm-4">
										<div class="radio">
											<label> <input type="radio" name="servhabitaciones"
												value="false" checked></input> <span>No</span>
											</label>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-sm-4">
										<label>Wifi</label>
									</div>
									<div class="form-group col-sm-4">
										<div class="radio-block" id="wifi">
											<div class="radio">
												<label> <input type="radio" name="wifi" value="true"></input>
													<span>Sí</span>
												</label>
											</div>
										</div>
									</div>

									<div class="form-group col-sm-4">
										<div class="radio">
											<label> <input type="radio" name="wifi" value="false"
												checked></input> <span>No</span>
											</label>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-sm-4">
										<label>Admite animales</label>
									</div>
									<div class="form-group col-sm-4">
										<div class="radio-block" id="animales">
											<div class="radio">
												<label> <input type="radio" name="animales"
													value="true"></input> <span>Sí</span>
												</label>
											</div>
										</div>
									</div>

									<div class="form-group col-sm-4">
										<div class="radio">
											<label> <input type="radio" name="animales"
												value="false" checked></input> <span>No</span>
											</label>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group col-sm-4">
										<label>Piscina</label>
									</div>
									<div class="form-group col-sm-4">
										<div class="radio-block" id="piscina">
											<div class="radio">
												<label> <input type="radio" name="piscina"
													value="true"></input> <span>Sí</span>
												</label>
											</div>
										</div>
									</div>

									<div class="form-group col-sm-4">
										<div class="radio">
											<label> <input type="radio" name="piscina"
												value="false" checked></input> <span>No</span>
											</label>
										</div>
									</div>
								</div>



							</fieldset>

							<input type="submit" class="" value="Insertar" />
						</div>
					</form>




				</div>

				<div class="tab-pane fade show " id="habitaciones" role="tabpanel"
					aria-labelledby="home-tab">
					<div style="margin-top: 40px;"></div>
					<h3 class="register-heading">Tus habitaciones</h3>
					<div style="margin-top: 20px;"></div>
					<ul class="nav nav-tabs nav-justified" id="myTabHabi"
						role="tablist">

						<li class="nav-item-head"><a class="nav-link"
							id="addhabi-tab" data-toggle="tab" href="#addhabi" role="tab"
							aria-controls="addhabi" aria-selected="false"> Añadir
								habitacion </a></li>


						<li class="nav-item-head"><a class="nav-link"
							id="reshabi-tab" data-toggle="tab" href="/listarHabitaciones"
							data-target="#reshabi" role="tab" aria-controls="home"
							aria-selected="false"> Resumen habitaciones </a></li>

						<li class="nav-item-head"><a class="nav-link"
							id="reserva-tab" data-toggle="tab" href="#reservas" role="tab"
							aria-controls="home" aria-selected="false"> Reservas </a></li>

					</ul>



					<div class="tab-content" id="myTabHabiContent">
						<div class="tab-pane fade show " id="addhabi" role="tabpanel"
							aria-labelledby="addhabi-tab">
							<h4 class="register-heading">Añade los datos de tu
								habitacion</h4>
							<form class="row register-form" action="AñadirHabitacion"
								method="post">
								<div class="col-md-6">
									<p>Informacion general de la habitacion</p>
									<fieldset>
										<legend>Camas</legend>
										<div class="form-group">
											<label>Tipo de cama</label> <select
												class='col-md-12 form-control' name="camas">
												<option value=" 1 cama individual">1 Cama
													individual&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm de ancho</option>
												<option value="2 camas individuales">2 Camas
													individuales&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm de ancho</option>
												<option value="1 cama doble">1 Cama doble
													doble&nbsp;&nbsp;/&nbsp;&nbsp;131-150 cm de ancho</option>
												<option value="1 cama doble y 1 cama individual">1
													Cama doble&nbsp;&nbsp;/&nbsp;&nbsp;131-150 cm de ancho y 1
													Cama individual&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm de ancho
												</option>
												<option value="1 Cama doble grande">1 Cama doble
													grande&nbsp;&nbsp;/&nbsp;&nbsp;151-180 cm de ancho</option>
												<option value="2 Camas dobles grandes">2 Camas
													dobles grandes&nbsp;&nbsp;/&nbsp;&nbsp;151-180 cm de ancho</option>
											</select>
										</div>
										<div class="form-group">
											<label>¿Cuantos clientes pueden dormir en esta
												habitacion?</label> <select class='col-md-12 form-control'
												name="personas" id="personas">
												<option value="1">1&nbsp;&#x263B;</option>
												<option value="2">2&nbsp;&#x263B;&#x263B;</option>
												<option value="3">3&nbsp;&#x263B;&#x263B;&#x263B;</option>
												<option value="4">4&nbsp;&#x263B;&#x263B;&#x263B;&#x263B;</option>
											</select>
										</div>
									</fieldset>

									<fieldset>

										<legend>Información de la habitacion</legend>
										<div class="form-group">
											<label>Descripcion</label>
											<textarea class="form-control" name="descripcion"
												placeholder="Escribe una breve descripcion de la habitacion"></textarea>

										</div>
										<div class="row">
											<div class="form-group col-sm-4">
												<label>Habitacion fumadores</label>
											</div>
											<div class="form-group col-sm-4">
												<div class="radio-block" id="fumador">
													<div class="radio">
														<label> <input type="radio" name="fumador"
															value="true"></input> <span>Sí</span>
														</label>
													</div>
												</div>
											</div>

											<div class="form-group col-sm-4">
												<div class="radio">
													<label> <input type="radio" name="fumador"
														value="false" checked></input> <span>No</span>
													</label>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="form-group col-sm-4">
												<label>TV</label>
											</div>
											<div class="form-group col-sm-4">
												<div class="radio-block" id="tv">
													<div class="radio">
														<label> <input type="radio" name="tv" value="true"></input>
															<span>Sí</span>
														</label>
													</div>
												</div>
											</div>

											<div class="form-group col-sm-4">
												<div class="radio">
													<label> <input type="radio" name="tv" value="false"
														checked></input> <span>No</span>
													</label>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="form-group col-sm-4">
												<label>Aire acondicionado</label>
											</div>
											<div class="form-group col-sm-4">
												<div class="radio-block" id="aire">
													<div class="radio">
														<label> <input type="radio" name="aire"
															value="true"></input> <span>Sí</span>
														</label>
													</div>
												</div>
											</div>

											<div class="form-group col-sm-4">
												<div class="radio">
													<label> <input type="radio" name="aire"
														value="false" checked></input> <span>No</span>
													</label>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="form-group col-sm-4">
												<label>Secador de pelo</label>
											</div>
											<div class="form-group col-sm-4">
												<div class="radio-block" id="secador">
													<div class="radio">
														<label> <input type="radio" name="secador"
															value="true"></input> <span>Sí</span>
														</label>
													</div>
												</div>
											</div>

											<div class="form-group col-sm-4">
												<div class="radio">
													<label> <input type="radio" name="secador"
														value="false" checked></input> <span>No</span>
													</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset>

										<legend>Precio base por noche</legend>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">€/noche</span>
											</div>
											<input type='tel' name="precio" class="form&#X2D;control"
												id="precio" value="" placeholder=""></input>
										</div>

									</fieldset>
									<input type="submit" class="" value="Añadir" />
								</div>
							</form>

						</div>

						<div class="tab-pane fade show " id="reshabi" role="tabpanel"
							aria-labelledby="home-tab">
							<h4 class="register-heading">Gestiona tus habitaciones</h4>






							<c:forEach var="habit" items="${habitaciones}">

								<tr>
									<div
										style="display: flex; margin: 10px; padding: 20px; flex-direction: row; justify-content: flex-end;">
										<div style="margin-top: 25px; flex-grow: 8">
											<td>${habit.descripcion}</td>
										</div>
										<td><a style="margin-right: 45px;" class="boton"
											role="button" data-toggle="modal"
											data-target="#${habit.id_habitacion}">Modificar</a></td>
										<td><a class="botonrojo" role="button"
											href="/borrarhabi?id_habi=">Eliminar</a></td>
									</div>
									<div style="margin-bottom: 20px;"></div>
								</tr>


								<div class="modal fade" id="${habit.id_habitacion}"
									tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header text-center">
												<h4 class="modal-title w-100 font-weight-bold">Modifica
													tu habitacion</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body mx-3">
												<form action="/pruebahi" method="post">
													<input type="hidden" value="${habit.id_habitacion}"
														name="idhabi"></input>
													<p>Informacion general de la habitacion</p>
													<fieldset>
														<legend>Camas</legend>
														<div class="form-group">
															<label>Tipo de cama</label> <select
																class='col-md-12 form-control' name="camas">
																<option value=" 1 cama individual">1 Cama
																	individual&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm de ancho</option>
																<option value="2 camas individuales">2 Camas
																	individuales&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm de ancho</option>
																<option value="1 cama doble">1 Cama doble
																	doble&nbsp;&nbsp;/&nbsp;&nbsp;131-150 cm de ancho</option>
																<option value="1 cama doble y 1 cama individual">1
																	Cama doble&nbsp;&nbsp;/&nbsp;&nbsp;131-150 cm de ancho
																	y 1 Cama individual&nbsp;&nbsp;/&nbsp;&nbsp;90-130 cm
																	de ancho</option>
																<option value="1 Cama doble grande">1 Cama
																	doble grande&nbsp;&nbsp;/&nbsp;&nbsp;151-180 cm de
																	ancho</option>
																<option value="2 Camas dobles grandes">2 Camas
																	dobles grandes&nbsp;&nbsp;/&nbsp;&nbsp;151-180 cm de
																	ancho</option>
															</select>
														</div>
														<div class="form-group">
															<label>¿Cuantos clientes pueden dormir en esta
																habitacion?</label> <select class='col-md-12 form-control'
																name="personas" id="personas">
																<option value="1">1&nbsp;&#x263B;</option>
																<option value="2">2&nbsp;&#x263B;&#x263B;</option>
																<option value="3">3&nbsp;&#x263B;&#x263B;&#x263B;</option>
																<option value="4">4&nbsp;&#x263B;&#x263B;&#x263B;&#x263B;</option>
															</select>
														</div>
													</fieldset>

													<fieldset>

														<legend>Información de la habitacion</legend>
														<div class="form-group">
															<label>Descripcion</label>
															<textarea class="form-control" name="descripcion"
																placeholder="Escribe una breve descripcion de la habitacion"></textarea>

														</div>
														<div class="row">
															<div class="form-group col-sm-4">
																<label>Habitacion fumadores</label>
															</div>
															<div class="form-group col-sm-4">
																<div class="radio-block" id="fumador">
																	<div class="radio">
																		<label> <input type="radio" name="fumador"
																			value="true"></input> <span>Sí</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group col-sm-4">
																<div class="radio">
																	<label> <input type="radio" name="fumador"
																		value="false" checked></input> <span>No</span>
																	</label>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="form-group col-sm-4">
																<label>TV</label>
															</div>
															<div class="form-group col-sm-4">
																<div class="radio-block" id="tv">
																	<div class="radio">
																		<label> <input type="radio" name="tv"
																			value="true"></input> <span>Sí</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group col-sm-4">
																<div class="radio">
																	<label> <input type="radio" name="tv"
																		value="false" checked></input> <span>No</span>
																	</label>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="form-group col-sm-4">
																<label>Aire acondicionado</label>
															</div>
															<div class="form-group col-sm-4">
																<div class="radio-block" id="aire">
																	<div class="radio">
																		<label> <input type="radio" name="aire"
																			value="true"></input> <span>Sí</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group col-sm-4">
																<div class="radio">
																	<label> <input type="radio" name="aire"
																		value="false" checked></input> <span>No</span>
																	</label>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="form-group col-sm-4">
																<label>Secador de pelo</label>
															</div>
															<div class="form-group col-sm-4">
																<div class="radio-block" id="secador">
																	<div class="radio">
																		<label> <input type="radio" name="secador"
																			value="true"></input> <span>Sí</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group col-sm-4">
																<div class="radio">
																	<label> <input type="radio" name="secador"
																		value="false" checked></input> <span>No</span>
																	</label>
																</div>
															</div>
														</div>
													</fieldset>

													<fieldset>

														<legend>Precio base por noche</legend>
														<div class="input-group mb-3">
															<div class="input-group-prepend">
																<span class="input-group-text" id="basic-addon1">€/noche</span>
															</div>
															<input type='tel' name="precio" class="form&#X2D;control"
																id="precio" value="" placeholder=""></input>
														</div>

													</fieldset>

													<div class="modal-footer d-flex justify-content-center">
														<input style="margin-top: 20px" type="submit" class=""
															value="Cambiar" />
													</div>
												</form>

											</div>
										</div>
									</div>
								</div>


							</c:forEach>

						</div>

						<div class="tab-pane fade show " id="reservas" role="tabpanel"
							aria-labelledby="home-tab">
							<h4 class="register-heading">Tus habitaciones reservadas</h4>

							<div class="col-md-6" style="max-width: 100%">
								<p>Habitaciones reservadas en tu hotel</p>


								<c:forEach var="hotel" items="">

									<tr>
									<tr>
										<td>descripcion</td>
										<td>dni</td>
										<td>fecha reserva</td>
										<td>fecha entrada</td>
										<td>fecha salida</td>
										<td>ganancia total</td>
									</tr>


								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div style="margin-bottom: 80px;"></div>
	<%@ include file="plantillas/footer.jsp"%>



</body>
</html>
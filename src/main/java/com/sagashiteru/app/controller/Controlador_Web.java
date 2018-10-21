package com.sagashiteru.app.controller;

import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sagashiteru.app.iservice.ICalendarioService;
import com.sagashiteru.app.iservice.IClienteService;
import com.sagashiteru.app.iservice.IHabitacionService;
import com.sagashiteru.app.iservice.IHotelService;
import com.sagashiteru.app.iservice.IReservaService;
import com.sagashiteru.app.model.Cliente;
import com.sagashiteru.app.model.Habitacion;
import com.sagashiteru.app.model.Hotel;

import javassist.bytecode.stackmap.BasicBlock.Catch;

@Controller
public class Controlador_Web {

	@Autowired
	public ICalendarioService calendarioService;
	
	@Autowired
	public IHotelService hotelservice;
	
	@Autowired
	public IClienteService clienteService;
	
	@Autowired
	public IReservaService reservaService;
	
	@Autowired
	public IHabitacionService habitacionService;

	
	
	@RequestMapping("/registro")
	public String registro(HttpServletRequest req) {
		try {
		HttpSession session = req.getSession(true);
		
		String mensaje = "";
		String dni = req.getParameter("dni");
		
		String password = req.getParameter("password");
		
		
		System.out.println(" password  : " + password);
	
		String email = req.getParameter("email"); 
		
		String verificacion = req.getParameter("verificacion");
		
		
		
		
		
		System.out.println(verificacion);
		Cliente cliente = new Cliente();
		
		cliente.setDni(dni);
		cliente.setMail(email);
		cliente.setPassword(password);
		
		
		
		if(password.equals(verificacion)) {
		if(clienteService.findByDni(cliente.getDni())==null) {
			System.out.println(password + " " + verificacion);


			clienteService.add(cliente);
			mensaje="Usuario registrado correctamente";
			
			req.setAttribute("mensaje", mensaje);
			return   "loginCliente";
			
		}
		}
		req.setAttribute("mensaje", mensaje);
		mensaje = "Usuario existente";
		return "loginCliente";
		}catch (Exception e) {
			String mensaje = "upps un error ha ocurrido";
			req.setAttribute("mensaje", mensaje);
			return "loginCliente";
		}
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest req) {
	try {
		HttpSession session = req.getSession(true);
		
		String dni = req.getParameter("dni");
	String password = req.getParameter("password");
	Cliente c = clienteService.findByDni(dni);
	if(c!=null) {
		if(c.getPassword().equals(password)){
			session.setAttribute("dni", c.getDni());
			String mensaje = "Bienvenido , " + dni;
			req.setAttribute("mensaje", mensaje);
			
			return "principal";
			
		}else {
			String mensaje = "contraseña incorrecta";
			req.setAttribute("mensaje", mensaje);
			return "loginCliente";
		}
	}else {
		String mensaje = "Usuario incorrecto";
		req.setAttribute("mensaje", mensaje);
				return "loginCliente";
		
	}}catch(Exception e) {
		e.getMessage();
		String mensaje = "upps un error ha ocurrido";
		req.setAttribute("mensaje", mensaje);
		return "principal";
		
	}
	
	
	
	}
	
	@RequestMapping("/registroHotel")
	public String loginHotel(HttpServletRequest req) {
		
		try {
			HttpSession session = req.getSession(true);
			
			String mensaje = "";
			String cif = req.getParameter("cif");
			
			String password = req.getParameter("password");
			
			
			System.out.println(" password  : " + password);
			
			
			
			String email = req.getParameter("email"); 
			
			
			
			
			
			String verificacion = req.getParameter("verificacion");
			
			
			
			
			
			System.out.println(verificacion);
			Hotel hotel = new Hotel();
			
			hotel.setCif(cif);
			hotel.setEmail(email);
			hotel.setPassword(password);
			
			
			
			if(password.equals(verificacion)) {
			if(clienteService.findByDni(hotel.getCif())==null) {
				System.out.println(password + " " + verificacion);


				hotelservice.Add(hotel);
				mensaje="Hotel registrado correctamente";
				System.out.println(mensaje);
				req.setAttribute("mensaje", mensaje);
				return   "registrohotel";
				
			}
			}
			req.setAttribute("mensaje", mensaje);
			mensaje = "Hotel existente";
			return "registrohotel";
			}catch (Exception e) {
				String mensaje = "upps un error ha ocurrido";
				req.setAttribute("mensaje", mensaje);
				return "registrohotel";
			}
}
	
	@RequestMapping("/loginHotel")
	public String loginhotel(HttpServletRequest req) {
	try {
		HttpSession session = req.getSession(true);
		
		String cif = req.getParameter("cif");
	String password = req.getParameter("password");
	Hotel c = hotelservice.findbycif(cif);
	if(c!=null) {
		if(c.getPassword().equals(password)){
			session.setAttribute("cif", c.getCif());
			String mensaje = "Bienvenido ";
			req.setAttribute("mensaje", mensaje);
			System.out.println("entra login");
			return "principal";
			
		}else {
			String mensaje = "contraseña incorrecta";
			req.setAttribute("mensaje", mensaje);
			return "registrohotel";
		}
	}else {
		String mensaje = "Cif incorrecto";
		req.setAttribute("mensaje", mensaje);
				return "registrohotel";
		
	}}catch(Exception e) {
		e.getMessage();
		String mensaje = "upps un error ha ocurrido";
		req.setAttribute("mensaje", mensaje);
		System.out.println("peta");
		return "principal";
		
	}
	
	
	
	}
	
	@RequestMapping("/filtroshabitacion")
	public String filtroshab(HttpServletRequest req) {
	
		try {
		HttpSession session = req.getSession(true);
		System.out.println();
		
		String[] estrellas = req.getParameterValues("estrellas");
		
		int estrella = 0;

		for (int i = 0; i < estrellas.length; i++) {
			System.out.println(estrellas[i]);
			if(estrellas[i]!=null) {
			 estrella = Integer.parseInt(estrellas[i]);
			 System.out.println("estrella :" + estrella);
			 break;
			}
		}
		
		
		System.out.println(estrellas + "  estrellas" );
		
		Boolean animales = Boolean.parseBoolean(req.getParameter("animales"));
		
		
		System.out.println("animales :" +animales);
		
		Boolean piscinas = Boolean.parseBoolean(req.getParameter("piscina"));
		
		System.out.println("piscinas : " + piscinas);
		
		return "filtroBusqueda";
		
		}catch(NullPointerException e) {
			HttpSession session = req.getSession(true);
			System.out.println("no values");
			return "filtroBusqueda";
		
		}		 
	
	
	
	}
	
	
	
	
	
	
	
	@RequestMapping("/AñadirHotel")
	public String AñadirHotel(HttpServletRequest req) {
	try {
		HttpSession session = req.getSession(true);
		
		String cif = (String) session.getAttribute("cif");
		
		
		Hotel h = hotelservice.findbycif(cif);
		
		String nombre = null;
		int estrellas  = 0;
		String contacto = null;
		int telefono = 0;
		String calle = null;
		String pais = null;
		String localizacion = null;
		String codigo = null;
		String descripcion = null;
		Boolean servhabitaciones = null;
		Boolean wifi = null;
		Boolean animales = null;
		Boolean piscina = null;
		
		
			if(req.getParameter("nombre").isEmpty()){}else {
		 nombre = req.getParameter("nombre");
			}
			System.out.println("entra");
			System.out.println(Integer.parseInt(req.getParameter("estrellas")));
			if(req.getParameter("estrellas").isEmpty()) {}else{
		 estrellas = Integer.parseInt(req.getParameter("estrellas"));
		 	h.setEstrellas(estrellas);
			}
		 
		 if(req.getParameter("contacto").isEmpty()){}else {
		 contacto  = req.getParameter("contacto");
		 }
		 
		 if(req.getParameter("telefono").isEmpty()) {}else {
			 telefono = Integer.parseInt(req.getParameter("telefono"));
			 h.setTelefono(telefono);
		 }
		 
		 
		 
		 if(req.getParameter("calle").isEmpty()){}else {
		 calle = req.getParameter("calle");
		 }
		 
		 if(req.getParameter("pais").isEmpty()){}else {
		 pais = req.getParameter("pais");
		 }
		 
		 if(req.getParameter("localizacion").isEmpty()){}else {
		 localizacion = req.getParameter("localizacion");
		 }
		 
		 if(req.getParameter("codigo").isEmpty()){}else {
		 codigo = req.getParameter("codigo");
		 }
		 
		 if(req.getParameter("descripcion").isEmpty()){}else {
		 descripcion = req.getParameter("descripcion");
		 }
		 
		 if(req.getParameter("servhabitaciones").isEmpty()){}else {
		 servhabitaciones= Boolean.parseBoolean(req.getParameter("servhabitaciones"));
		 }
		 
		 if(req.getParameter("wifi").isEmpty()){}else {
		 wifi= Boolean.parseBoolean(req.getParameter("wifi"));
		 }
		 
		 
		 if(req.getParameter("animales").isEmpty()){}else {
		 animales= Boolean.parseBoolean(req.getParameter("animales"));
		 }
		 
		 if(req.getParameter("piscina").isEmpty()){}else {
		 piscina= Boolean.parseBoolean(req.getParameter("piscina"));
		 }
		 
		 
		 
		
		 
		 if(animales!=null) {
		h.setAnimales(animales);
		}
		if(descripcion!="Escribe una breve descripcion de tu hotel") {
		h.setDescripcion(descripcion);
		}
		if(calle!=null && codigo!=null && pais!=null) {
		h.setDireccion(calle+ ", " + codigo + " " + "("+pais+")"   );
		}
		if(localizacion!=null) {
		h.setLocalizacion(localizacion);
		}
		if(wifi!=null) {
		h.setWifi(wifi);
		}
		if(piscina!=null) {
		h.setPiscina(piscina);
		}
		if(servhabitaciones!=null) {
		h.setServicio_habitacion(servhabitaciones);
		}
		if(telefono!=0) {
		h.setTelefono(telefono);
		}
		if(contacto!=null) {
		h.setContacto(contacto);
		}
		if(estrellas!=0) {
		h.setEstrellas(estrellas);
		}
		if(nombre!=null) {
		h.setNombre(nombre);
		}
		
		hotelservice.update(h);
		
		System.out.println(nombre + estrellas  + contacto+telefono+calle+pais+localizacion+codigo+descripcion+servhabitaciones+wifi);
		
		return "gestionhotel";
	}catch(NullPointerException e) {
	
		HttpSession session = req.getSession(true);
		String mensaje = " por favor rellene los campos de forma correcta ";
		return "gestionhotel";
		
		}
	catch (Exception e) {
		String mensaje = "upps ha ocurrido un error";
		HttpSession session = req.getSession(true);
		return "gestionhotel";
	}
	}
	
	
	@RequestMapping("/AñadirHabitacion")
	public String AñadirHabitacion(HttpServletRequest req) {
		try {
		HttpSession session = req.getSession(true);
		
		System.out.println("entra");
		String cif = (String) session.getAttribute("cif");
		
		
		Hotel h = hotelservice.findbycif(cif);
		
		
		
		String camas = req.getParameter("camas");
		System.out.println(camas);
		int personas = Integer.parseInt(req.getParameter("personas"));
		System.out.println(personas);
		String descripcion = req.getParameter("descripcion");
		System.out.println(descripcion);
		Boolean fumadores = Boolean.parseBoolean(req.getParameter("fumadores"));
		
		Boolean tv = Boolean.parseBoolean(req.getParameter("tv"));
		
		Boolean aire = Boolean.parseBoolean(req.getParameter("aire"));
		
		Boolean secador = Boolean.parseBoolean(req.getParameter("secador"));
		
		int precio = Integer.parseInt(req.getParameter("precio"));
		
		Habitacion hab = new Habitacion();
		hab.setAire(aire);
		
		hab.setDescripcion(descripcion);
		hab.setPersonas(personas);
		hab.setFumador(fumadores);
		hab.setPrecio(precio);
		hab.setTipo_cama(camas);
		hab.setTv(tv);
		
		
		System.out.println(camas+personas+descripcion+fumadores+tv+aire+secador+precio);
		h.getHabitaciones().add(hab);
		
		hotelservice.Add(h);
		
		return "gestionhotel";
		}catch(NullPointerException e ) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println("null");
			return "gestionhotel";
		}catch(Exception j) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println("error");
			return "gestionhotel";
		}
	}
	
	@RequestMapping("/listarHabitaciones")
	public String listarHabitaciones(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		String cif = (String) session.getAttribute("cif");
		
		List<Habitacion> habitaciones = habitacionService.listarHab(cif);
		
		session.setAttribute("habitaciones", habitaciones);
		
		return "gestionhotel";
	}
}


		
	
	
	


	

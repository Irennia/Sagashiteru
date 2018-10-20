package com.sagashiteru.app.controller;

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
	
	
	
	
}

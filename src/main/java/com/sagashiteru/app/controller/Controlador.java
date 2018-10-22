package com.sagashiteru.app.controller;

import java.util.List;

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
import com.sagashiteru.app.model.Hotel;

@Controller
public class Controlador {

	
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
	
	
	/////////////////// INDEX ////////////////////////////
	
	@RequestMapping("/noentras")
	public String index(HttpServletRequest req) {
		System.err.println("entra noentra");
		HttpSession session = req.getSession(true);
		return "principal";
	}
	
	@RequestMapping("/sagashiteru")
	public String index1(HttpServletRequest req) {
		System.err.println("entra sagashiteru");
		HttpSession session = req.getSession(true);
		return index(req);
	}
	
	@RequestMapping("/loginCliente")
	public String loginCliente(HttpServletRequest req) {
		System.err.println("entra login cliente");
		HttpSession session = req.getSession(true);
		return "loginCliente";
	}
	
	@RequestMapping("/registrohotel")
	public String registrohotel(HttpServletRequest req) {
		System.err.println("entra registro hotel");
		HttpSession session = req.getSession(true);
		return "registrohotel";
	}
	
	@RequestMapping("/filtroBusqueda")
	public String filtroBusqueda(HttpServletRequest req) {
		System.err.println("entra filtro busqueda");
		
		try {
		HttpSession session = req.getSession(true);
		
		String localizacion = req.getParameter("localizacion");
		System.out.println(localizacion);
		
		List<Hotel> h;
		
		h = hotelservice.listHotelLocalizacion(localizacion);
		req.setAttribute("filtroBusqueda", h);
		if(h == null) {
			System.out.println("paso 2 " + localizacion);
			h=hotelservice.listHotelNombre(localizacion);
			System.out.println("lista ");
			
			session.setAttribute("filtroBusqueda", h);
			req.setAttribute("filtroBusqueda", h);
		}
		for (Hotel hotel : h) {
			System.out.println(hotel.getCif());
		}
		session.setAttribute("filtroBusqueda", h);
		req.setAttribute("filtroBusqueda", h);	
		return "filtroBusqueda";
		}catch(NullPointerException e) {
			HttpSession session = req.getSession(true);
			return "filtroBusqueda";
		}
	}
	
	@RequestMapping("/cerrarsesion")
	public String cerrarsesion(HttpServletRequest req) {
		System.err.println("entra cerrar sesion");
		HttpSession session = req.getSession(true);
		
		
		session.invalidate();
		
		return index(req);
	}
	
	//////////////////////////////////////////////////////////
	
	//////////////// CLIENTE /////////////////////////////////
	
	@RequestMapping("/perfilcliente")
	public String perfilcliente(HttpServletRequest req) {
		System.out.println("entra perfil cliente");	
		
		return "perfilcliente";
	}
	
	
	@RequestMapping("/misReservas")
	public String misReservas(HttpServletRequest req) {
		System.err.println("entra mis reservas");
		
		return "misReservas";
	}
	
	/////////////////////////////////////////////////////////
	
	//////////////// HOTEL /////////////////////////////////
	

	@RequestMapping("/gestionhotel")
	public String gestionhotel(HttpServletRequest req) {
		System.out.println("entra register");	
		HttpSession session = req.getSession(true);
		
	
		
		
		return "gestionhotel";
	}
	
	@RequestMapping("/perfilhotel")
	public String perfilhotel(HttpServletRequest req) {
		System.out.println("entra register");	
		HttpSession session = req.getSession(true);
		return "perfilhotel";
	}
	
	
	//////////////////////////////////////////////////////////
	
	/////////////// FOOTER ///////////////////////////////////

	@RequestMapping("/politicaprivacidad")
	public String politicaprivacidad(HttpServletRequest req) {
		System.out.println("entra privacidad");	
		HttpSession session = req.getSession(true);
		return "politicaprivacidad";
	}
	
	@RequestMapping("/terminosycondiciones")
	public String terminosycondiciones(HttpServletRequest req) {
		System.out.println("entra terminos");	
		HttpSession session = req.getSession(true);
		return "terminosycondiciones";
	}
	
	@RequestMapping("/contacto")
	public String contacto(HttpServletRequest req) {
		System.out.println("entra contacto");	
		HttpSession session = req.getSession(true);
		return "contacto";
	}
	
	
	//////////////////////////////////////////////////////////
	

	@RequestMapping("/reserva")
	public String reserva(HttpServletRequest req) {
		System.out.println("entra en reserva");	
		
		
		return "confirmarReserva";
	}
	
	@RequestMapping("/confirmarreserva")
	public String confirmarReserva(HttpServletRequest req) {
		System.out.println("entra en confirmar reserva");	
		
		
		return "confirmarReserva";
	}
}

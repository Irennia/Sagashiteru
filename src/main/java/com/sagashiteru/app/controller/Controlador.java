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
		System.err.println("entra");
		return "principal";
	}
	
	@RequestMapping("/sagashiteru")
	public String index1(HttpServletRequest req) {
		System.err.println("entra");
		return index(req);
	}
	
	@RequestMapping("/loginCliente")
	public String loginCliente(HttpServletRequest req) {
		System.err.println("entra");
		return "loginCliente";
	}
	
	@RequestMapping("/registrohotel")
	public String registrohotel(HttpServletRequest req) {
		System.err.println("entra");
		return "registrohotel";
	}
	
	@RequestMapping("/filtroBusqueda")
	public String filtroBusqueda(HttpServletRequest req) {
		System.err.println("entra");
		
		String localizacion = req.getParameter("localizacion");
		System.out.println(localizacion);
		
		List<Hotel> h;
		
		h = hotelservice.listHotelLocalizacion(localizacion);
		
		if(h == null) {
			System.out.println("paso 2 " + localizacion);
			h=hotelservice.listHotelNombre(localizacion);
			System.out.println("lista ");
			
			req.setAttribute("filtroBusqueda", h);
		}
		
		req.setAttribute("filtroBusqueda", h);	
		return "filtroBusqueda";
	}
	
	@RequestMapping("/cerrarsesion")
	public String cerrarsesion(HttpServletRequest req) {
		System.err.println("entra");
		
		HttpSession session = req.getSession(true);
		session.invalidate();
		
		return index(req);
	}
	
	//////////////////////////////////////////////////////////
	
	
	/////////////// FOOTER ///////////////////////////////////

	@RequestMapping("/politicaprivacidad")
	public String politicaprivacidad(HttpServletRequest req) {
		System.out.println("entra register");	
		return "politicaprivacidad";
	}
	
	@RequestMapping("/terminosycondiciones")
	public String terminosycondiciones(HttpServletRequest req) {
		System.out.println("entra register");	
		return "terminosycondiciones";
	}
	
	@RequestMapping("/contacto")
	public String contacto(HttpServletRequest req) {
		System.out.println("entra register");	
		return "contacto";
	}
	
	
	//////////////////////////////////////////////////////////
	
	
	@RequestMapping("/gestionhotel")
	public String gestionhotel(HttpServletRequest req) {
		System.out.println("entra register");	
		return "gestionhotel";
	}
	
	@RequestMapping("/perfilhotel")
	public String perfilhotel(HttpServletRequest req) {
		System.out.println("entra register");	
		return "perfilhotel";
	}
	
	@RequestMapping("/hotelcompleto")
	public String hotelCompleto(HttpServletRequest req) {
		System.out.println("entra register");	
		return "hotelCompleto";
	}
}

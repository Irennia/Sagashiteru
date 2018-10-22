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
import com.sagashiteru.app.model.Habitacion;
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
	
	@RequestMapping("/pruebahi")
	public String pruebahi(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			System.out.println("entra");
			String cif = (String) session.getAttribute("cif");
			System.out.println(cif);
			
				
			int id = Integer.parseInt(req.getParameter("idhabi"));
			
			System.out.println(id);
			
			

			Hotel h = hotelservice.findbycif(cif);
			System.out.println();
			
			System.out.println("hasta aqui hola");

			Habitacion hab = habitacionService.findById(id);
			System.out.println(hab.getDescripcion());

			System.out.println("hasta aqui hola2");
			

			if(req.getParameter("aire").isEmpty()){	
			}else { 
				Boolean aire = Boolean.parseBoolean(req.getParameter("aire"));
				hab.setAire(aire);	
			}
			System.out.println("hasta aqui hola3");
			
			if(req.getParameter("camas").isEmpty()){	
			}else{ 
				String camas = req.getParameter("camas");
				hab.setTipo_cama(camas);	
			}
			System.out.println("hasta aqui hola4");
			if(req.getParameter("descripcion").isEmpty()){	
			}else{ 
				String descripcion = req.getParameter("descripcion");
				hab.setDescripcion(descripcion);	
			}
			System.out.println("hasta aqui hola5");
			if(req.getParameter("personas").isEmpty()){	
			}else{ 
				int personas = Integer.parseInt(req.getParameter("personas"));
				hab.setPersonas(personas);	
			}
			System.out.println("hasta aqui hola6");
			if(req.getParameter("fumador").isEmpty()){	
			}else{ 
				Boolean fumadores = Boolean.parseBoolean(req.getParameter("fumador"));
				hab.setFumador(fumadores);	
			}
			System.out.println("hasta aqui hola7");
			if(req.getParameter("tv").isEmpty()){	
			}else{ 
				Boolean tv = Boolean.parseBoolean(req.getParameter("tv"));
				hab.setTv(tv);	
			}
			System.out.println("hasta aqui hola8");
			if(req.getParameter("secador").isEmpty()){	
			}else{ 
				Boolean secador = Boolean.parseBoolean(req.getParameter("secador"));
				hab.setSecador(secador);	
			}
			System.out.println("hasta aqui hola9");
			if(req.getParameter("precio").isEmpty()){	
			}else{ 
				int precio = Integer.parseInt(req.getParameter("precio"));
				hab.setPrecio(precio);	
			}
			
			
			System.err.println("hasta aqui1");
			
			System.err.println("hasta aqui2");
			habitacionService.add(hab);
			System.err.println("hasta aqui3");
			
			System.out.println(hab.getId_habitacion() + " " + hab.getCif() + " " + hab.getDescripcion() + " " + hab.getTipo_cama()+ " " +hab.getPersonas()+ " " +hab.getPrecio()+ " " +hab.isAire()+ " " +hab.isFumador()+ " " +hab.isSecador()+ " " +hab.isTv());

			return "gestionhotel";
		} catch (NullPointerException e) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println(e);
			return "gestionhotel";
		} catch (Exception j) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println(j);
			return "gestionhotel";
		}
	}
	
	
	//////////////////////////////////////////////////////////
	

	
}

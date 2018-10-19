package com.sagashiteru.app.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sagashiteru.app.iservice.ICalendarioService;
import com.sagashiteru.app.iservice.IClienteService;
import com.sagashiteru.app.iservice.IHabitacionService;
import com.sagashiteru.app.iservice.IHotelService;
import com.sagashiteru.app.iservice.IReservaService;
import com.sagashiteru.app.model.Calendario;
import com.sagashiteru.app.model.Cliente;
import com.sagashiteru.app.model.Habitacion;
import com.sagashiteru.app.model.Hotel;
import com.sagashiteru.app.model.Reserva;

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
	
	
	@RequestMapping("/filtroBusqueda")
	public String filtroBusqueda(HttpServletRequest req) {
		System.err.println("entra");
		
		String nombre = req.getParameter("nombre");
		req.setAttribute("filtroBusqueda", hotelservice.listHotel(nombre));
	
		
		return "filtroBusqueda";
	}
	
	@RequestMapping("/añadirHotel")
	public String añadir(HttpServletRequest req) {
		try {
		Calendario f = new Calendario();
		
		String sDate1="1/11/2018";  
        Date date1;
		
			
			
					date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
					f.setId_reserva(4);
					f.setFecha(date1);
					
				
		Hotel h = new Hotel("pppaa", "dasdsasd", "dasdasd", "fede", "jose", 4444, "pedro", 5, true, false, true, true);
		Habitacion a = new Habitacion();
		a.setAire(true);
		a.setDescripcion("melon");
		a.setCif("pppaa");
		int id_hab = a.getId_habitacion();
		System.out.println("pintame :" +id_hab);
		f.setId_habitacion(id_hab);
		System.out.println("antes de añadir a");
		
		h.getHabitaciones().add(a);
		
		System.out.println("despues de añadir a");
		
		hotelservice.Add(h);
		
		System.out.println("añadido al add");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "test";
		
		
	}
	
	@RequestMapping("/añadirCliente")
	public String añadir1(HttpServletRequest req) {
		
			
			
			
			
		
			
		
		System.out.println("entra");
		Cliente c = new Cliente("1111", "777777", "Jose", "perez", 974440434, "jose@jose.com", 3123123);
		System.out.println(c.getDni());
		System.out.println("añadido");
		Reserva r = new Reserva();
		
		r.setDni("1111");
		
		
		
		
		Calendario e = new Calendario();
		
		
		e.setId_habitacion(33);
		
		
		System.out.println("inserta cliente");
		
		c.getReservas().add(r);
		
		Cliente ce = clienteService.findByDni("111");
		
		System.out.println(ce.getDni());
		
		
				
		
		System.out.println("inserta reserva");
		
		
		
		
			
		
		
		clienteService.add(c);
		
		System.out.println("final");
		
		return "test";
		
	}
	
	
}

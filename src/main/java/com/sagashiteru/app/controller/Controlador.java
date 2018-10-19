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
	
	
	@RequestMapping("/buscador")
	public String buscador(HttpServletRequest req) {
		
		return "filtroBusqueda";
	}
	
	@RequestMapping("/añadirHotel")
	public String añadir(HttpServletRequest req) {
		
		return "test";
		
		
	}
	
	@RequestMapping("/añadirCliente")
	public String añadir1(HttpServletRequest req) {
		try {
			Calendario f = new Calendario();
			
			Hotel h = new Hotel("pppaa", "dasdsasd", "dasdasd", "fede", "jose", 4444, "pedro", 5, true, false, true, true);
			Habitacion a = new Habitacion();
			a.setAire(true);
			a.setDescripcion("melon");
			a.setCif("pppaa");
			int id_hab = a.getId_habitacion();
			System.out.println("pintame :" +id_hab);
			f.setId_habitacion(id_hab);
			System.out.println("antes de añadir a");
			a.getFechas().add(f);
			h.getHabitaciones().add(a);
			
			System.out.println("despues de añadir a");
			
			hotelservice.Add(h);
			
			System.out.println("añadido al add");
			
			
			
		String sDate1="1/11/2018";  
        Date date1;
		
			
				date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
			
		
		System.out.println("entra");
		Cliente c = new Cliente("7777783333", "777777", "Jose", "perez", 974440434, "jose@jose.com", 3123123);
		System.out.println(c.getDni());
		System.out.println("añadido");
		Reserva r = new Reserva();
		
		r.setDni("7777783333");
		
		
		
		
		f.setId_reserva(r.getId_reserva());
		f.setFecha(date1);
		
		
		
		
		System.out.println("inserta cliente");
		
		c.getReservas().add(r);
		System.out.println("intserta f");
		calendarioService.add(f);
		
		System.out.println("inserta reserva");
		
			
		
		
		clienteService.add(c);
		
		System.out.println("final");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "test";
		
	}
	
}

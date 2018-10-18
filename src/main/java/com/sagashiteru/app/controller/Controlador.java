package com.sagashiteru.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.sagashiteru.app.iservice.IHotelService;
import com.sagashiteru.app.model.Habitacion;
import com.sagashiteru.app.model.Hotel;

@Controller
public class Controlador {
	
	@Autowired
	public IHotelService hotelservice;
	
	@RequestMapping("/")
	public String añadir(HttpServletRequest req) {
		
		Hotel h = new Hotel("ooo", "dasdsasd", "dasdasd", "fede", "jose", 4444, "pedro", 5, true, false, true, true);
		Habitacion a = new Habitacion();
		a.setAire(true);
		a.setDescripcion("melon");
		a.setCif("ooo");
		System.out.println("antes de añadir a");
		h.getHabitaciones().add(a);
		System.out.println("despues de añadir a");
		
		hotelservice.Add(h);
		
		System.out.println("añadido al add");
		return "test";
		
		
	}
}

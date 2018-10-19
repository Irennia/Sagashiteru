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
		
		Cliente cliente = new Cliente();
		
		cliente.setDni(dni);
		cliente.setMail(email);
		cliente.setPassword(password);
		
		if(clienteService.findByDni(cliente.getDni())==null) {
			
			clienteService.add(cliente);
			mensaje="Usuario registrado correctamente";
			return   "principal";
		}
		
		
		return "loginCliente";
		}catch (Exception e) {
			return "loginCliente";
		}
	}
	
		
}

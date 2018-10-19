package com.sagashiteru.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControladorIndex {

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
	
	@RequestMapping("/cerrarsesion")
	public String cerrarsesion(HttpServletRequest req) {
		System.err.println("entra");
		
		HttpSession session = req.getSession(true);
		session.invalidate();
		
		return index(req);
	}
	
	@RequestMapping("/pruebaheader")
	public String prueba(HttpServletRequest req) {
		System.err.println("entra");
		
		
		return "prueba";
	}
	
	
	
	
}

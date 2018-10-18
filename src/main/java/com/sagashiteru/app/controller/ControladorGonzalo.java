package com.sagashiteru.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControladorGonzalo {
	
	@RequestMapping("/registrohotel")
	public String registrohotel(HttpServletRequest req) {
		System.err.println("entra");
		return "registrohotel";
	}

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
}

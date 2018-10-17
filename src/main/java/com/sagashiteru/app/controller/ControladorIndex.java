package com.sagashiteru.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControladorIndex {

	@RequestMapping("/index")
	public String listCategorias(HttpServletRequest req) {
		System.err.println("entra");
		return "index2";
	}
}

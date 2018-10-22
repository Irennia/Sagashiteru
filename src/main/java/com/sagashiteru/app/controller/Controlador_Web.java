package com.sagashiteru.app.controller;

import java.security.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;
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
import com.sagashiteru.app.model.Calendario;
import com.sagashiteru.app.model.Cliente;
import com.sagashiteru.app.model.Habitacion;
import com.sagashiteru.app.model.Hotel;
import com.sagashiteru.app.model.Reserva;
import com.sagashiteru.app.service.Hotelservice;

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

			System.out.println(verificacion);
			Cliente cliente = new Cliente();

			cliente.setDni(dni);
			cliente.setMail(email);
			cliente.setPassword(password);

			if (password.equals(verificacion)) {
				if (clienteService.findByDni(cliente.getDni()) == null) {
					System.out.println(password + " " + verificacion);

					clienteService.add(cliente);

					mensaje = "Usuario registrado correctamente";

					req.setAttribute("mensaje1", mensaje);
					return "loginCliente";

				}
			}
			req.setAttribute("mensaje", mensaje);
			mensaje = "Usuario existente";
			return "loginCliente";
		} catch (Exception e) {
			String mensaje = "upps un error ha ocurrido";
			req.setAttribute("mensaje", mensaje);
			return "loginCliente";
		}
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			String dni = req.getParameter("dni");
			String password = req.getParameter("password");
			Cliente c = clienteService.findByDni(dni);
			if (c != null) {
				if (c.getPassword().equals(password)) {
					session.setAttribute("dni", c.getDni());
					session.setAttribute("cliente", c);
					String mensaje = "Bienvenido , " + dni;
					req.setAttribute("mensaje", mensaje);

					return "principal";

				} else {
					String mensaje = "contraseña incorrecta";
					req.setAttribute("mensaje", mensaje);
					return "loginCliente";
				}
			} else {
				String mensaje = "Usuario incorrecto";
				req.setAttribute("mensaje", mensaje);
				return "loginCliente";

			}
		} catch (Exception e) {
			e.getMessage();
			String mensaje = "upps un error ha ocurrido";
			req.setAttribute("mensaje", mensaje);
			return "principal";

		}

	}

	@RequestMapping("/registroHotel")
	public String loginHotel(HttpServletRequest req) {

		try {
			HttpSession session = req.getSession(true);

			String mensaje = "";
			String cif = req.getParameter("cif");

			String password = req.getParameter("password");

			System.out.println(" password  : " + password);

			String email = req.getParameter("email");

			String verificacion = req.getParameter("verificacion");

			System.out.println(verificacion);
			Hotel hotel = new Hotel();

			hotel.setCif(cif);
			hotel.setEmail(email);
			hotel.setPassword(password);

			if (password.equals(verificacion)) {
				if (clienteService.findByDni(hotel.getCif()) == null) {
					System.out.println(password + " " + verificacion);

					hotelservice.Add(hotel);
					mensaje = "Hotel registrado correctamente";
					System.out.println(mensaje);
					req.setAttribute("mensaje", mensaje);
					return "registrohotel";

				}
			}
			req.setAttribute("mensaje", mensaje);
			mensaje = "Hotel existente";
			return "registrohotel";
		} catch (Exception e) {
			String mensaje = "upps un error ha ocurrido";
			req.setAttribute("mensaje", mensaje);
			return "registrohotel";
		}
	}

	@RequestMapping("/loginHotel")
	public String loginhotel(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			String cif = req.getParameter("cif");
			String password = req.getParameter("password");
			Hotel c = hotelservice.findbycif(cif);
			if (c != null) {
				if (c.getPassword().equals(password)) {
					session.setAttribute("cif", c.getCif());
					
					session.setAttribute("hotel", c);
					String mensaje = "Bienvenido ";
					req.setAttribute("mensaje", mensaje);
					System.out.println("entra login");
					return "principal";

				} else {
					String mensaje = "contraseña incorrecta";
					req.setAttribute("mensaje", mensaje);
					return "registrohotel";
				}
			} else {
				String mensaje = "Cif incorrecto";
				req.setAttribute("mensaje", mensaje);
				return "registrohotel";

			}
		} catch (Exception e) {
			e.getMessage();
			String mensaje = "upps un error ha ocurrido";
			req.setAttribute("mensaje", mensaje);
			System.out.println("peta");
			return "principal";

		}

	}

	@RequestMapping("/filtroshabitacion")
	public String filtroshab(HttpServletRequest req) {

		try {
			HttpSession session = req.getSession(true);
			System.out.println();

			String estrella = req.getParameter("estrellas");

			int personas = Integer.parseInt(req.getParameter("personas"));
			
			String cama = req.getParameter("camas");

			String nombre = req.getParameter("nombre");
			
			
			System.out.println(estrella + "  estrellas");

			Boolean animales = Boolean.parseBoolean(req.getParameter("animales"));

			System.out.println("animales :" + animales);

			Boolean piscinas = Boolean.parseBoolean(req.getParameter("piscina"));

			System.out.println("piscinas : " + piscinas);
			List<Hotel> verificada = new ArrayList<>();
			List<Hotel> lista = new ArrayList<>();
			if(hotelservice.listHotelLocalizacion(nombre).isEmpty()) {
				if(hotelservice.listHotelNombre(nombre).isEmpty()){
				return "filtroBusqueda"	;
					
				}else {
					List<Hotel> list = 	hotelservice.listHotelNombre(nombre);
					for (Hotel hotel : list) {
						if(hotel.isAnimales()==animales) {
							if(hotel.isPiscina()==piscinas) {
								lista.add(hotel);
							}
						}
					}
					
				}
			}else {
		List<Hotel> list = 	hotelservice.listHotelLocalizacion(nombre);
		for (Hotel hotel : list) {
			if(hotel.isAnimales()==animales) {
				if(hotel.isPiscina()==piscinas) {
					lista.add(hotel);
					
				}
			}
		}
			
			}
			
		if(lista.isEmpty()) {
			
			return "filtroBusqueda";
		}else {
			for (Hotel hotel : lista) {
			List<Habitacion> habs = 	habitacionService.listarHab(hotel.getCif());
				
				for (Habitacion h : habs) {
					if(h.getPersonas()==personas) {
						verificada.add(hotel);
					}
					
				}
			
			}
			if(verificada.isEmpty()) {
				return "filtroBusqueda";
			}else {
				
				session.setAttribute("filtroBusqueda", verificada);
				return "filtroBusqueda";
			}
			
		}

			

		} catch (NullPointerException e) {
			HttpSession session = req.getSession(true);
			System.out.println("no values");
			return "filtroBusqueda";

		}catch(Exception r) {
			HttpSession session = req.getSession(true);
			return "filtroBusqueda";
		}

	}

	@RequestMapping("/AñadirHotel")
	public String AñadirHotel(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			String cif = (String) session.getAttribute("cif");

			Hotel h = hotelservice.findbycif(cif);
			
			
			
			String nombre = null;
			int estrellas = 0;
			String contacto = null;
			int telefono = 0;
			String calle = null;
			String pais = null;
			String localizacion = null;
			String codigo = null;
			String descripcion = null;
			Boolean servhabitaciones = null;
			Boolean wifi = null;
			Boolean animales = null;
			Boolean piscina = null;

			if (req.getParameter("nombre").isEmpty()) {
			} else {
				nombre = req.getParameter("nombre");
			}
			System.out.println("entra");
			System.out.println(Integer.parseInt(req.getParameter("estrellas")));
			if (req.getParameter("estrellas").isEmpty()) {
			} else {
				estrellas = Integer.parseInt(req.getParameter("estrellas"));
				h.setEstrellas(estrellas);
			}

			if (req.getParameter("contacto").isEmpty()) {
			} else {
				contacto = req.getParameter("contacto");
			}

			if (req.getParameter("telefono").isEmpty()) {
			} else {
				telefono = Integer.parseInt(req.getParameter("telefono"));
				h.setTelefono(telefono);
			}

			if (req.getParameter("calle").isEmpty()) {
			} else {
				calle = req.getParameter("calle");
			}

			if (req.getParameter("pais").isEmpty()) {
			} else {
				pais = req.getParameter("pais");
			}

			if (req.getParameter("localizacion").isEmpty()) {
			} else {
				localizacion = req.getParameter("localizacion");
			}

			if (req.getParameter("codigo").isEmpty()) {
			} else {
				codigo = req.getParameter("codigo");
			}

			if (req.getParameter("descripcion").isEmpty()) {
			} else {
				descripcion = req.getParameter("descripcion");
			}

			if (req.getParameter("servhabitaciones").isEmpty()) {
			} else {
				servhabitaciones = Boolean.parseBoolean(req.getParameter("servhabitaciones"));
			}

			if (req.getParameter("wifi").isEmpty()) {
			} else {
				wifi = Boolean.parseBoolean(req.getParameter("wifi"));
			}

			if (req.getParameter("animales").isEmpty()) {
			} else {
				animales = Boolean.parseBoolean(req.getParameter("animales"));
			}

			if (req.getParameter("piscina").isEmpty()) {
			} else {
				piscina = Boolean.parseBoolean(req.getParameter("piscina"));
			}

			if (animales != null) {
				h.setAnimales(animales);
			}
			if (descripcion != "Escribe una breve descripcion de tu hotel") {
				h.setDescripcion(descripcion);
			}
			if (calle != null && codigo != null && pais != null) {
				h.setDireccion(calle + ", " + codigo + " " + "(" + pais + ")");
			}
			if (localizacion != null) {
				h.setLocalizacion(localizacion);
			}
			if (wifi != null) {
				h.setWifi(wifi);
			}
			if (piscina != null) {
				h.setPiscina(piscina);
			}
			if (servhabitaciones != null) {
				h.setServicio_habitacion(servhabitaciones);
			}
			if (telefono != 0) {
				h.setTelefono(telefono);
			}
			if (contacto != null) {
				h.setContacto(contacto);
			}
			if (estrellas != 0) {
				h.setEstrellas(estrellas);
			}
			if (nombre != null) {
				h.setNombre(nombre);
			}

			hotelservice.update(h);

			session.setAttribute("hotel", h);

			System.out.println(nombre + estrellas + contacto + telefono + calle + pais + localizacion + codigo
					+ descripcion + servhabitaciones + wifi);

			return "gestionhotel";
		} catch (NullPointerException e) {

			HttpSession session = req.getSession(true);
			String mensaje = " por favor rellene los campos de forma correcta ";
			return "gestionhotel";

		} catch (Exception e) {
			String mensaje = "upps ha ocurrido un error";
			HttpSession session = req.getSession(true);
			return "gestionhotel";
		}
	}

	@RequestMapping("/AñadirHabitacion")
	public String AñadirHabitacion(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			System.out.println("entra");
			String cif = (String) session.getAttribute("cif");

			Hotel h = hotelservice.findbycif(cif);

			String camas = req.getParameter("camas");
			System.out.println(camas);
			int personas = Integer.parseInt(req.getParameter("personas"));
			System.out.println(personas);
			String descripcion = req.getParameter("descripcion");
			System.out.println(descripcion);
			Boolean fumadores = Boolean.parseBoolean(req.getParameter("fumadores"));

			Boolean tv = Boolean.parseBoolean(req.getParameter("tv"));

			Boolean aire = Boolean.parseBoolean(req.getParameter("aire"));

			Boolean secador = Boolean.parseBoolean(req.getParameter("secador"));

			int precio = Integer.parseInt(req.getParameter("precio"));

			Habitacion hab = new Habitacion();
			hab.setAire(aire);

			hab.setDescripcion(descripcion);
			hab.setPersonas(personas);
			hab.setFumador(fumadores);
			hab.setPrecio(precio);
			hab.setTipo_cama(camas);
			hab.setTv(tv);
			hab.setSecador(secador);
			System.out.println(camas + personas + descripcion + fumadores + tv + aire + secador + precio);
			h.getHabitaciones().add(hab);

			hotelservice.Add(h);

			return "gestionhotel";
		} catch (NullPointerException e) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println("null");
			return "gestionhotel";
		} catch (Exception j) {
			String mensaje = "upps ha ocurrido un error";
			System.out.println("error");
			return "gestionhotel";
		}
	}

	@RequestMapping("/listarHabitaciones")
	public String listarHabitaciones(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		System.out.println("entra listar");
		String cif = (String) session.getAttribute("cif");

		List<Habitacion> habitaciones = habitacionService.listarHab(cif);

		session.setAttribute("habitaciones", habitaciones);
		
		return "gestionhotel";
	}

	@RequestMapping("/hotelcompleto")
	public String hotelCompleto(HttpServletRequest req) {
		System.out.println("entra hotel completo");
		HttpSession session = req.getSession(true);
		String cif = (String) req.getParameter("cif");
		System.out.println(cif);

		Hotel h;
		h = hotelservice.findbycif(cif);

		List<Habitacion> habitaciones = habitacionService.listarHab(cif);

		if (habitaciones == null) {
			System.out.println("nulo");
		}
		session.setAttribute("habitaciones", habitaciones);

		req.setAttribute("hotel", h);

		return "hotelCompleto";
	}

	@RequestMapping("/datosCliente")
	public String perfilCliente(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			Cliente cliente = (Cliente) session.getAttribute("cliente");

			if (req.getParameter("nombre").isEmpty()) {
			} else {
				String nombre = req.getParameter("nombre");
				System.out.println(nombre);
				cliente.setNombre(nombre);
			}
			if (req.getParameter("apellidos").isEmpty()) {
			} else {
				String apellidos = req.getParameter("apellidos");
				System.out.println(apellidos);
				cliente.setApellidos(apellidos);
			}
			if (req.getParameter("telefono").isEmpty()) {
			} else {
				int telefono = Integer.parseInt(req.getParameter("telefono"));
				System.out.println(telefono);
				cliente.setTelefono(telefono);
			}
			if (req.getParameter("tarjeta").isEmpty()) {
			} else {
				int tarjeta = Integer.parseInt(req.getParameter("tarjeta"));
				System.out.println(tarjeta);
				cliente.setTarjeta(tarjeta);
			}
			System.out.println("añadido cliente");
			clienteService.add(cliente);
			String mensaje = "Se ah añadido correctamente";
			req.setAttribute("mensaje", mensaje);

			session.setAttribute("cliente", cliente);

			return "perfilcliente";
		} catch (Exception e) {

			String mensaje = "Ups ha ocucurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilcliente";
		}

	}

	@RequestMapping("/cambiaEmail")
	public String cambiaEmail(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);

			Cliente cliente = (Cliente) session.getAttribute("cliente");

			String email = req.getParameter("email");
			System.out.println(email);
			
			String verificacion = req.getParameter("verificacion");
			System.out.println(verificacion);
			System.out.println(cliente.getMail());
			if (email.equals(cliente.getMail())) {
				System.out.println("compara");
				
					System.out.println("verifica");
					cliente.setMail(verificacion);

					clienteService.add(cliente);

					session.setAttribute("cliente", cliente);

					String mensaje = "Informacion añadida correctamente";
					req.setAttribute("mensaje", mensaje);

				
			}

			return "perfilcliente";
		} catch (NullPointerException e) {

			HttpSession session = req.getSession(true);
			String mensaje = "Ups ha ocucurrido algun error";
			req.setAttribute("mensaje", mensaje);

			return "perfilcliente";

		} catch (Exception r) {
			HttpSession session = req.getSession(true);
			String mensaje = "Ups ha ocucurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilcliente";
		}

	}

	@RequestMapping("/cambiaPassword")
	public String cambiaPassword(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);
			Cliente cliente = (Cliente) session.getAttribute("cliente");
			System.out.println(cliente.getPassword());
			
			if (req.getParameter("password").isEmpty()) {
				String mensaje = "password vacio";
				req.setAttribute("mensaje", mensaje);
			} else {
				System.out.println("primer paso");
				String password = req.getParameter("password");
				System.out.println(password);
				System.out.println("password base datos : " + cliente.getPassword());
				if (password.equals(cliente.getPassword())) {
					System.out.println("verifica");
						if (req.getParameter("passwordnueva").isEmpty()) {
						} else {
							String passwordnueva = req.getParameter("passwordnueva");
							System.out.println(passwordnueva);
								if(req.getParameter("verificacion").isEmpty()){}else{
									String verificacion = req.getParameter("verificacion");
									System.out.println(verificacion);
									if(verificacion.equals(passwordnueva)) {
										cliente.setPassword(passwordnueva);
										System.out.println("verificacion");
										session.setAttribute("cliente", cliente);
										String mensaje = "password correcto";
										req.setAttribute("mensaje", mensaje);
										clienteService.add(cliente);
									}else {
										String mensaje = "password no coincide";
									req.setAttribute("mensaje", mensaje);
									}
								}
						}
						
					}

				}

		
	
			return "perfilcliente";
		} catch (NullPointerException e) {
			HttpSession session = req.getSession(true);
			String mensaje = "upss a occurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilcliente";
		} catch (Exception t) {
			HttpSession session = req.getSession(true);
			String mensaje = "upss a occurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilcliente";
		}
	}
	
	@RequestMapping("/cambiaPasswordhotel")
	public String cambiaPasswordhotel(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);
			Hotel cliente = (Hotel) session.getAttribute("hotel");
			System.out.println(cliente.getPassword());
			
			if (req.getParameter("password").isEmpty()) {
				String mensaje = "password vacio";
				req.setAttribute("mensaje", mensaje);
			} else {
				System.out.println("primer paso");
				String password = req.getParameter("password");
				System.out.println(password);
				System.out.println("password base datos : " + cliente.getPassword());
				if (password.equals(cliente.getPassword())) {
					System.out.println("verifica");
						if (req.getParameter("passwordnueva").isEmpty()) {
						} else {
							String passwordnueva = req.getParameter("passwordnueva");
							System.out.println(passwordnueva);
								if(req.getParameter("verificacion").isEmpty()){}else{
									String verificacion = req.getParameter("verificacion");
									System.out.println(verificacion);
									if(verificacion.equals(passwordnueva)) {
										cliente.setPassword(passwordnueva);
										System.out.println("verificacion");
										session.setAttribute("hotel", cliente);
										String mensaje = "password correcto";
										req.setAttribute("mensaje", mensaje);
										hotelservice.Add(cliente);
									}else {
										String mensaje = "password no coincide";
									req.setAttribute("mensaje", mensaje);
									}
								}
						}
						
					}

				}

		
	
			return "perfilhotel";
		} catch (NullPointerException e) {
			HttpSession session = req.getSession(true);
			String mensaje = "upss a occurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilhotel";
		} catch (Exception t) {
			HttpSession session = req.getSession(true);
			String mensaje = "upss a occurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilhotel";
		}
	}
	
	@RequestMapping("/cambiaEmailhotel")
	public String cambiaEmailhotel(HttpServletRequest req) {
		try {
			HttpSession session = req.getSession(true);
			
			Hotel hotel = (Hotel) session.getAttribute("hotel");
			System.out.println(" session " +hotel.getEmail());
			
			String email = req.getParameter("email");
			System.out.println(email);
			
			String verificacion = req.getParameter("verificacion");
			System.out.println(verificacion);
			System.out.println(hotel.getEmail());
			
			if (email.equals(hotel.getEmail())) {
				System.out.println("compara");
				
					System.out.println("verifica");
					hotel.setEmail(verificacion);

					hotelservice.Add(hotel);

					session.setAttribute("hotel", hotel);

					String mensaje = "Informacion añadida correctamente";
					req.setAttribute("mensaje", mensaje);

				
			}

			return "perfilhotel";
		} catch (NullPointerException e) {

			HttpSession session = req.getSession(true);
			String mensaje = "Ups ha ocucurrido algun error";
			req.setAttribute("mensaje", mensaje);

			return "perfilhotel";

		} catch (Exception r) {
			HttpSession session = req.getSession(true);
			String mensaje = "Ups ha ocucurrido algun error";
			req.setAttribute("mensaje", mensaje);
			return "perfilhotel";
		}

	}

	
	@RequestMapping("/reservarHabs")
	public String reservarHab(HttpServletRequest req) {
		
		
		
		return null;
		
	}
	
	
	
	
	
	@RequestMapping("/confirmarreserva")
	public String confirmarReserva(HttpServletRequest req) {
		System.out.println("entra en confirmar reserva");	
		
		try{
			HttpSession session = req.getSession(true);
			System.out.println("entra");
		Cliente cliente = (Cliente) session.getAttribute("cliente");
	
		
		
		
		int id_habitacion = (int) session.getAttribute("id_habitacion");
		
		System.out.println(id_habitacion);
		
		Reserva reserva = (Reserva) session.getAttribute("reserva");
		List<Date> fechas = 	(List<Date>) session.getAttribute("fechas");
		
		for (Date date : fechas) {
			
			Calendario c = new Calendario();
			c.setId_reserva(reserva.getId_reserva());
			c.setFecha(date);
			c.setId_habitacion(id_habitacion);
			System.out.println(c.getFecha());
			calendarioService.add(c);
		}
	String mensaje = "Se ha agragdao correcta mente la reserva";
	req.setAttribute("mensaje", mensaje);
		reservaService.add(reserva);
		
	List<Reserva> rs =	reservaService.listbyDni(cliente.getDni());
	for (Reserva r : rs) {
		System.out.println("SOOOORRR " + r.getFecha_reserva());
	}	
	session.setAttribute("rs", rs);
		
		return "misReservas";
	}catch(NullPointerException e) {
		
		
		
		return "principal";
	}catch(Exception r	) {
		return "principal";
		
	}
	}

	@RequestMapping("/reservahabitacion")
	public String reservarhabitacion(HttpServletRequest req) {
		try {
			System.out.println("reserva abitacion");
		HttpSession session = req.getSession(true);
		Cliente cliente =(Cliente) session.getAttribute("cliente");
		System.out.println(cliente.getDni());
		 
		
		
		Calendario calendario = new Calendario();
		System.out.println("antes del hotel");
		
	
		
		Reserva reserva = new Reserva();
		
		Date daten = new Date();
		daten = new java.sql.Timestamp(daten.getTime());
		System.out.println(daten);
		System.out.println(daten);
		
		Date datep;
		Date datef;
		String fechap =req.getParameter("fechap");
		session.setAttribute("fechap", fechap);
		System.out.println(fechap);
		String fechaf = req.getParameter("fechaf");
		session.setAttribute("fechaf", fechaf);
		System.out.println(fechaf);
		int id_habitacion = Integer.parseInt(req.getParameter("id_habitacion"));
		Habitacion habitacion = habitacionService.findById(id_habitacion);
		System.out.println(id_habitacion);
		String dni = cliente.getDni();
		
		
		
		System.out.println("passeo fechas");
		DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
			datep = inputFormat.parse(fechap);
			datef = inputFormat.parse(fechaf);
			
			System.out.println("milisegundos");
			long millis = datep.toInstant().toEpochMilli();
		    long millis2 = datef.toInstant().toEpochMilli();
			
		    long result = millis2-millis;
		    
		    long oneDay = 86400000;
	        
	        long dias = result/oneDay;
	        
	        double precio = habitacion.getPrecio()*dias;
	        
	        session.setAttribute("precio", precio);
	        System.out.println(precio);
	        System.out.println("lista");
	        List<Date> fechas = new ArrayList<>() ;
	        System.out.println("despues lista");
	        
	        
	        fechas.add(datep);
	        fechas.add(datef);
	        for (int i = 0; i < dias; i++) {
	        	
	        	millis = millis+oneDay;
	        	Date d = new Date(millis);
	        	fechas.add(d);
	        	
			}
			
	       for (Date date : fechas) {
			
	    	  if(calendarioService.reserva(datef, id_habitacion)) {
	    		String mensaje = "Fecha ocupada";
	    		req.setAttribute("mensaje", mensaje);
	    		  return "hotelcompleto";
	    	  }
		}
	
		reserva.setDni(dni);
		reserva.setFecha_fin(datef);
		reserva.setFecha_inicio(datep);
		reserva.setFecha_reserva(daten);
		
		System.out.println(reserva.getDni()+ " " + reserva.getFecha_reserva()+ " " + reserva.getFecha_inicio()+ " " + reserva.getFecha_fin());
		
	session.setAttribute("reserva", reserva);
	session.setAttribute("fechas", fechas);
	session.setAttribute("id_habitacion",id_habitacion);
	
	session.setAttribute("habitacion", habitacion);
	Hotel hotel = hotelservice.findbycif(habitacion.getCif());
	session.setAttribute("hotelreserva", hotel);
	
		return "confirmarReserva";
		}catch(ParseException e) {
			return "principal";
		}catch(NullPointerException t) {
			
			return "principal";
		}
}
	
}
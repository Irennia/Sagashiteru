package com.sagashiteru.app.service;

import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagashiteru.app.dao.ICalendarioRepository;
import com.sagashiteru.app.iservice.ICalendarioService;
import com.sagashiteru.app.model.Calendario;

@Service
public class CalendarioService implements ICalendarioService {

	@Autowired
	ICalendarioRepository calendarioRepository;
	
	
	@Override
	public void add(Calendario calendario) {
		calendarioRepository.save(calendario);

	}

	@Override
	public void delete(Calendario calendario) {
		calendarioRepository.delete(calendario);

	}

	@Override
	public void update(Calendario calendario) {
		calendarioRepository.save(calendario);

	}

	@Override
	public boolean reserva(Date fecha, int id_habitacion) {
		
		Calendario c = new Calendario();
	
		Optional o = calendarioRepository.disponiblidad(id_habitacion, fecha);
		if(o.isPresent()) {
			return true;
		}else {
		
		return false;
		}
	}

}

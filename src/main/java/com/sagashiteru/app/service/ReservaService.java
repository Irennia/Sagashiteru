package com.sagashiteru.app.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagashiteru.app.dao.IReservaRepository;
import com.sagashiteru.app.iservice.IReservaService;
import com.sagashiteru.app.model.Reserva;

@Service
public class ReservaService implements IReservaService {

	@Autowired
	IReservaRepository reservaRepository;
	
	@Override
	public void add(Reserva reserva) {
	reservaRepository.save(reserva);

	}

	@Override
	public void delete(Reserva reserva) {
		reservaRepository.delete(reserva);

	}

	@Override
	public void update(Reserva reserva) {
		reservaRepository.save(reserva);

	}

	@Override
	public List<Reserva> ListbyidReserva(int id_reserva) {
		
	Optional o = reservaRepository.findById(id_reserva);
	
	if(o.isPresent()){
		return (List<Reserva>) o.get();
	}else {
		return null;
		
	}
		
	}

	
	@Override
	public Reserva findByIdreserva(int id_reserva) {
		
		return reservaRepository.findById(id_reserva).get();
	}

}

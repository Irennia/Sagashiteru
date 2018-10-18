package com.sagashiteru.app.iservice;

import java.util.Date;
import java.util.List;

import com.sagashiteru.app.model.Reserva;

public interface IReservaService {

		public void add(Reserva reserva);
		
		public void delete(Reserva reserva);
		
		public void update(Reserva reserva);
		
		public Reserva findByIdreserva(int id_reserva);
		
		public List<Reserva> ListbyidReserva(int id_reserva);
		
		
		
		
}

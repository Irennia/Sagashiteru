package com.sagashiteru.app.iservice;

import java.util.Date;
import java.util.List;

import com.sagashiteru.app.model.Calendario;

public interface ICalendarioService {
	
	public void add(Calendario calendario);
	
	public void delete(Calendario calendario);
	
	public void update(Calendario calendario);
	
	public boolean reserva(Date fecha , int id_habitacion);


}

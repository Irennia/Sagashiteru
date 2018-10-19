package com.sagashiteru.app.iservice;

import java.util.List;

import com.sagashiteru.app.model.Habitacion;

public interface IHabitacionService {

	public void add(Habitacion habitacion);
	
	public void delete(Habitacion habitacion);
	
	public void update(Habitacion habitacion);
	
	public Habitacion findById(int id_habitacion);
	
	public List<Habitacion> listarHab(String cif);
	
	public List<Habitacion> listbyprecio(int preciomax , int preciomin);
	
	public List<Habitacion> listbytipocama(String tipo_cama);
	
	public List<Habitacion> listbypersonas(int personas);
	
	public void deletebycifall(String cif);
}

package com.sagashiteru.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagashiteru.app.dao.IHabitacionRepository;
import com.sagashiteru.app.iservice.IHabitacionService;
import com.sagashiteru.app.model.Habitacion;

@Service
public class HabitacionService implements IHabitacionService {

	@Autowired
	public IHabitacionRepository habitacionRepository;

	@Override
	public void add(Habitacion habitacion) {
		habitacionRepository.save(habitacion);
		
	}

	@Override
	public void delete(Habitacion habitacion) {
		habitacionRepository.delete(habitacion);
		
	}

	@Override
	public Habitacion findById(int id_habitacion) {
		
		return habitacionRepository.findById(id_habitacion).get();
	}

	@Override
	public List<Habitacion> listarHab(String cif) {
		
		Optional<List<Habitacion>> list = habitacionRepository.listbycif(cif);
		if(list.isPresent()) {
			return list.get();
		} else {
			return null;
		}
		
	}

	@Override
	public List<Habitacion> listbyprecio(int preciomax, int preciomin) {
		
		return habitacionRepository.listbyprecio(preciomax, preciomin).get();
	}

	@Override
	public List<Habitacion> listbytipocama(String tipo_cama) {


		return habitacionRepository.listbytipoCama(tipo_cama).get();
	}

	@Override
	public List<Habitacion> listbypersonas(int personas) {


		return habitacionRepository.listbyPersonas(personas).get();
	}

	@Override
	public void update(Habitacion habitacion) {
		
		habitacionRepository.save(habitacion);
		
	}

	@Override
	public void deletebycifall(String cif) {
    
			Optional habitaciones  = habitacionRepository.listbycif(cif);
			
			if(habitaciones.isPresent()) 
			{
				List<Habitacion> h = (List<Habitacion>) habitaciones.get();
				for (Habitacion ha : h) {
					habitacionRepository.delete(ha);
				}
			}
		
	}

	
	

}

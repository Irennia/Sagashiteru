package com.sagashiteru.app.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.sagashiteru.app.model.Habitacion;
import com.sagashiteru.app.model.Hotel;

public interface IHabitacionRepository extends CrudRepository<Habitacion, Integer> {

	@Query(value= "SELECT * FROM Habitaciones WHERE nombre= :cif" , nativeQuery=true)
	public  Optional<List<Habitacion>> listbycif(@Param("cif")String cif);
	
	@Query(value= "SELECT * FROM Habitaciones WHERE precio > :preciomin AND precio < :preciomax" , nativeQuery=true)
	public  Optional<List<Habitacion>> listbyprecio(@Param("preciomax")int preciomax , @Param("preciomin")int preciomin);
	
	@Query(value= "SELECT * FROM Habitaciones WHERE personas= :personas" , nativeQuery=true)
	public  Optional<List<Habitacion>> listbyPersonas(@Param("personas")int personas);
	
	@Query(value= "SELECT * FROM Habitaciones WHERE tipo_cama= :tipo_cama" , nativeQuery=true)
	public  Optional<List<Habitacion>> listbytipoCama(@Param("tipo_cama")String tipo_cama);
	
}

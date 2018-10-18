package com.sagashiteru.app.dao;

import java.util.Date;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.sagashiteru.app.model.Calendario;
import com.sagashiteru.app.model.Reserva;

public interface ICalendarioRepository extends CrudRepository<Calendario, Date> {

	@Query(value= "SELECT * FROM Calendario WHERE id_habitacion= :id_habitacion AND fecha= :fecha" , nativeQuery=true)
	public  Optional<Calendario> disponiblidad(@Param("id_habitacion")int id_habitacion , @Param("fecha")Date fecha );
	
}

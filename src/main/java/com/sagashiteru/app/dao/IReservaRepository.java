package com.sagashiteru.app.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import com.sagashiteru.app.model.Reserva;

public interface IReservaRepository extends CrudRepository<Reserva, Integer> {
	
	

	

}

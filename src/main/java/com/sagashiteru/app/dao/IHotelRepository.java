package com.sagashiteru.app.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import com.sagashiteru.app.model.Hotel;

public interface IHotelRepository extends CrudRepository<Hotel, String> {
	
	
	
	@Query(value= "SELECT * FROM Hoteles WHERE nombre LIKE CONCAT('%', :nombre , '%')" , nativeQuery=true)
	public  Optional<List<Hotel>> listbynombre(@Param("nombre")String nombre);
	
	@Query(value= "SELECT * FROM Hoteles WHERE estrellas= :estrellas" , nativeQuery=true)
	public  Optional<List<Hotel>> listbyestrellas(@Param("estrellas")int estrellas);
	
	@Query(value= "SELECT * FROM Hoteles WHERE animales= :animales" , nativeQuery=true)
	public  Optional<List<Hotel>> listbyanimales(@Param("animales")boolean animales);
	
	
	
	
}

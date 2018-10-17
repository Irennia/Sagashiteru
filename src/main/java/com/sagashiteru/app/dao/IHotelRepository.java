package com.sagashiteru.app.dao;

import org.springframework.data.repository.CrudRepository;

import com.sagashiteru.app.model.Hotel;

public interface IHotelRepository extends CrudRepository<Hotel, String> {

}

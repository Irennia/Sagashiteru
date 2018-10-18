package com.sagashiteru.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagashiteru.app.dao.IHotelRepository;
import com.sagashiteru.app.iservice.IHotelService;
import com.sagashiteru.app.model.Hotel;

@Service
public class Hotelservice implements IHotelService {

	@Autowired
	IHotelRepository hotelrepository;
	
	@Override
	public void Add(Hotel hotel) {

		hotelrepository.save(hotel);

	}

}

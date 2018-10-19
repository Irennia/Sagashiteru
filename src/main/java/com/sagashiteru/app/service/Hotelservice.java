package com.sagashiteru.app.service;

import java.util.List;

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

	@Override
	public void delete(String cif) {
		
		hotelrepository.deleteById(cif);		
	}

	@Override
	public Hotel findbycif(String cif) {
		
		return hotelrepository.findById(cif).get();
	}

	

	@Override
	public List<Hotel> listHotel(String localizacion) {
		
		if(hotelrepository.listbynombre(localizacion).isPresent()) {
		
			return hotelrepository.listbynombre(localizacion).get();
		}else {
			return null;
		}
	}

	@Override
	public void update(Hotel hotel) {
	    
		hotelrepository.save(hotel);
	}

	@Override
	public List<Hotel> listHotelbyanimales(boolean animales) {
		
		return hotelrepository.listbyanimales(animales).get();
	}

	@Override
	public List<Hotel> listHotelbyestrellas(int estrellas) {
		
		return hotelrepository.listbyestrellas(estrellas).get();
	}

}
	


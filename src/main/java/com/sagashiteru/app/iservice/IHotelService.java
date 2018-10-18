package com.sagashiteru.app.iservice;

import java.util.List;

import com.sagashiteru.app.model.Hotel;

public interface IHotelService {
	
	public void Add(Hotel hotel);
	
	public void delete(Hotel hotel);
	
	public Hotel findbycif(String cif);
	
	public void update(Hotel hotel);
	
	public List<Hotel> listHotel(String nombre);

	public List<Hotel> listHotelbyanimales(boolean animales);
	
	public List<Hotel> listHotelbyestrellas(int estrellas);
	
	
}

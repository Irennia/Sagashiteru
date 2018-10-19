package com.sagashiteru.app.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="habitaciones")
public class Habitacion implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_habitacion")
	private int id_habitacion;
	
	@Column(name="cif")
	private String cif;
	
	@Column(name="descripcion")
	private String descripcion;
	
	@Column(name="tipo_cama")
	private String tipo_cama;
	
	@Column(name="precio")
	private double precio;
	
	@Column(name="fumador")
	private boolean fumador;
	
	@Column(name="personas")
	private int personas;
	
	@Column(name="secador")
	private boolean secador;
	
	@Column(name="tv")
	private boolean tv;
	
	@Column(name="aire")
	private boolean aire;
	
	@ManyToOne
	@JoinColumn(name="cif",insertable=false, updatable=false)
	private Hotel hotel;
	
	

	

	

	public int getId_habitacion() {
		return id_habitacion;
	}





	public void setId_habitacion(int id_habitacion) {
		this.id_habitacion = id_habitacion;
	}





	public String getCif() {
		return cif;
	}





	public void setCif(String cif) {
		this.cif = cif;
	}





	public String getDescripcion() {
		return descripcion;
	}





	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}





	public String getTipo_cama() {
		return tipo_cama;
	}





	public void setTipo_cama(String tipo_cama) {
		this.tipo_cama = tipo_cama;
	}





	public double getPrecio() {
		return precio;
	}





	public void setPrecio(double precio) {
		this.precio = precio;
	}





	public boolean isFumador() {
		return fumador;
	}





	public void setFumador(boolean fumador) {
		this.fumador = fumador;
	}





	public int getPersonas() {
		return personas;
	}





	public void setPersonas(int personas) {
		this.personas = personas;
	}





	public boolean isSecador() {
		return secador;
	}





	public void setSecador(boolean secador) {
		this.secador = secador;
	}





	public boolean isTv() {
		return tv;
	}





	public void setTv(boolean tv) {
		this.tv = tv;
	}





	public boolean isAire() {
		return aire;
	}





	public void setAire(boolean aire) {
		this.aire = aire;
	}





	public Hotel getHotel() {
		return hotel;
	}





	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}









	public Habitacion(int id_habitacion, String cif, String descripcion, String tipo_cama, double precio,
			boolean fumador, int personas, boolean secador, boolean tv, boolean aire) {
		super();
		this.id_habitacion = id_habitacion;
		this.cif = cif;
		this.descripcion = descripcion;
		this.tipo_cama = tipo_cama;
		this.precio = precio;
		this.fumador = fumador;
		this.personas = personas;
		this.secador = secador;
		this.tv = tv;
		this.aire = aire;
	}





	public Habitacion() {
		super();
	}
	
	
	
}

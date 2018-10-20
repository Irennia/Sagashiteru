package com.sagashiteru.app.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CollectionId;
import org.springframework.boot.autoconfigure.domain.EntityScan;




@Entity
@Table(name="hoteles")
public class Hotel implements Serializable{
	@Id
	@Column(name="cif")
	private String cif;
	
	@Column(name="password")
	private String password;
	
	@Column(name="localizacion")
	private String localizacion;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="direccion")
	private String direccion;
	
	
	@Column(name="descripcion")
	private String descripcion; 
	
	@Column(name="telefono")
	private int telefono;
	
	@Column(name="email")
	private String email;
	
	@Column(name="estrellas")
	private int estrellas;
	
	@Column(name="wifi")
	private boolean wifi;
	
	@Column(name="piscina")
	private boolean piscina;
	
	@Column(name="animales")
	private boolean animales; 
	
	@Column(name="servicio_habitacion")
	private boolean servicio_habitacion;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="cif")
	private Set<Habitacion> habitaciones = new HashSet();

	public String getCif() {
		return cif;
	}

	public void setCif(String cif) {
		this.cif = cif;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocalizacion() {
		return localizacion;
	}

	public void setLocalizacion(String localizacion) {
		this.localizacion = localizacion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getEstrellas() {
		return estrellas;
	}

	public void setEstrellas(int estrellas) {
		this.estrellas = estrellas;
	}

	public boolean isWifi() {
		return wifi;
	}

	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}

	public boolean isPiscina() {
		return piscina;
	}

	public void setPiscina(boolean piscina) {
		this.piscina = piscina;
	}

	
	

	public boolean isAnimales() {
		return animales;
	}

	public void setAnimales(boolean animales) {
		this.animales = animales;
	}



	public Set<Habitacion> getHabitaciones() {
		return habitaciones;
	}

	public void setHabitaciones(Set<Habitacion> habitaciones) {
		this.habitaciones = habitaciones;
	}

	public boolean isServicio_habitacion() {
		return servicio_habitacion;
	}

	public void setServicio_habitacion(boolean servicio_habitacion) {
		this.servicio_habitacion = servicio_habitacion;
	}
	
	

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Hotel() {
		super();
	}

	public Hotel(String cif, String password, String localizacion, String nombre, String direccion, String descripcion,
			int telefono, String email, int estrellas, boolean wifi, boolean piscina, boolean animales,
			boolean servicio_habitacion) {
		super();
		this.cif = cif;
		this.password = password;
		this.localizacion = localizacion;
		this.nombre = nombre;
		this.direccion = direccion;
		this.descripcion = descripcion;
		this.telefono = telefono;
		this.email = email;
		this.estrellas = estrellas;
		this.wifi = wifi;
		this.piscina = piscina;
		this.animales = animales;
		this.servicio_habitacion = servicio_habitacion;
	}

	
	
	
	
	
}

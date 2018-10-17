package com.sagashiteru.app.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.boot.autoconfigure.domain.EntityScan;

@Entity
@Table(name = "hoteles")
public class Hotel implements Serializable {
	@Id
	@Column(name = "cif")
	private String cif;

	@Column(name = "password")
	private String password;

	@Column(name = "localizacion")
	private String localizacion;

	@Column(name = "nombre")
	private String nombre;

	@Column(name = "descripcion")
	private String descripcion;

	@Column(name = "telefono")
	private int telefono;

	@Column(name = "email")
	private String email;

	@Column(name = "estrellas")
	private int estrellas;

	@Column(name = "wifi")
	private boolean wifi;

	@Column(name = "piscina")
	private boolean piscina;

	@Column(name = "servicio_habitancion")
	private boolean servicio_habitacion;

	@Column(name = "animales")
	private boolean animales;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "cif")
	private List<Habitacion> habitaciones;

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

	public boolean isServicio_habitacion() {
		return servicio_habitacion;
	}

	public void setServicio_habitacion(boolean servicio_habitacion) {
		this.servicio_habitacion = servicio_habitacion;
	}

	public boolean isAnimales() {
		return animales;
	}

	public void setAnimales(boolean animales) {
		this.animales = animales;
	}

	public List<Habitacion> getHabitaciones() {
		return habitaciones;
	}

	public void setHabitaciones(List<Habitacion> habitaciones) {
		this.habitaciones = habitaciones;
	}

	public Hotel(String cif, String password, String localizacion, String nombre, String descripcion, int telefono,
			String email, int estrellas, boolean wifi, boolean piscina, boolean servicio_habitacion, boolean animales) {
		super();
		this.cif = cif;
		this.password = password;
		this.localizacion = localizacion;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.telefono = telefono;
		this.email = email;
		this.estrellas = estrellas;
		this.wifi = wifi;
		this.piscina = piscina;
		this.servicio_habitacion = servicio_habitacion;
		this.animales = animales;
	}

	public Hotel() {
		super();
	}

}

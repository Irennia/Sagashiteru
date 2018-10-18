package com.sagashiteru.app.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="reservas")
public class Reserva implements Serializable {

@Id
@Column(name="id_reserva")
private int id_reserva;

@Column(name="cif")
private String cif;

@Column(name="dni")
private String dni;

@Column(name="fecha")
private Date fecha;

@Column(name="fecha_reserva")
private Date fecha_reserva;

@ManyToOne
@JoinColumn(name="dni" ,insertable=false, updatable=false)
private Cliente cliente;	

@ManyToOne
@JoinColumn(name="id_habitacion",insertable=false, updatable=false)
private Reserva reserva;

public int getId_reserva() {
	return id_reserva;
}

public void setId_reserva(int id_reserva) {
	this.id_reserva = id_reserva;
}

public String getCif() {
	return cif;
}

public void setCif(String cif) {
	this.cif = cif;
}

public String getDni() {
	return dni;
}

public void setDni(String dni) {
	this.dni = dni;
}

public Date getFecha() {
	return fecha;
}

public void setFecha(Date fecha) {
	this.fecha = fecha;
}

public Date getFecha_reserva() {
	return fecha_reserva;
}

public void setFecha_reserva(Date fecha_reserva) {
	this.fecha_reserva = fecha_reserva;
}

public Cliente getCliente() {
	return cliente;
}

public void setCliente(Cliente cliente) {
	this.cliente = cliente;
}

public Reserva getReserva() {
	return reserva;
}

public void setReserva(Reserva reserva) {
	this.reserva = reserva;
}

public Reserva(int id_reserva, String cif, String dni, Date fecha, Date fecha_reserva) {
	super();
	this.id_reserva = id_reserva;
	this.cif = cif;
	this.dni = dni;
	this.fecha = fecha;
	this.fecha_reserva = fecha_reserva;
}

public Reserva() {
	super();
}



}

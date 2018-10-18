package com.sagashiteru.app.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CollectionId;

@Entity
@Table(name="calendario")
public class Calendario implements Serializable{
	
	
@Id
@Column(name="fecha")
private Date fecha;

@Column(name="id_habitacion")
private int id_habitacion;

@Column(name="id_reserva")
private int id_reserva;

@ManyToOne
@JoinColumn(name="id_reserva",insertable=false, updatable=false)
private Reserva reserva;

@ManyToOne
@JoinColumn(name="id_habitacion",insertable=false, updatable=false)
private Habitacion habitacion;

public Date getFecha() {
	return fecha;
}

public void setFecha(Date fecha) {
	this.fecha = fecha;
}

public int getId_habitacion() {
	return id_habitacion;
}

public void setId_habitacion(int id_habitacion) {
	this.id_habitacion = id_habitacion;
}

public int getId_reserva() {
	return id_reserva;
}

public void setId_reserva(int id_reserva) {
	this.id_reserva = id_reserva;
}

public Reserva getReserva() {
	return reserva;
}

public void setReserva(Reserva reserva) {
	this.reserva = reserva;
}

public Habitacion getHabitacion() {
	return habitacion;
}

public void setHabitacion(Habitacion habitacion) {
	this.habitacion = habitacion;
}

public Calendario(Date fecha, int id_habitacion, int id_reserva) {
	super();
	this.fecha = fecha;
	this.id_habitacion = id_habitacion;
	this.id_reserva = id_reserva;
}

public Calendario() {
	super();
}




	
	
}

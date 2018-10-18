package com.sagashiteru.app.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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
@Table(name="reservas")
public class Reserva implements Serializable {

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
@Column(name="id_reserva")
private int id_reserva;


@Column(name="dni")
private String dni;

@Column(name="fecha_fin")
private Date fecha_fin;

@Column(name="fecha_inicio")
private Date fecha_inicio;

@Column(name="fecha_reserva")
private Date fecha_reserva;

@ManyToOne
@JoinColumn(name="dni" ,insertable=false, updatable=false)
private Cliente cliente;	

@OneToMany(cascade=CascadeType.ALL)
@JoinColumn(name="id_reserva")
Set<Calendario> fechas = new HashSet();









public Reserva(int id_reserva,  String dni, Date fecha_fin, Date fecha_inicio, Date fecha_reserva) {
	super();
	this.id_reserva = id_reserva;
	
	this.dni = dni;
	this.fecha_fin = fecha_fin;
	this.fecha_inicio = fecha_inicio;
	this.fecha_reserva = fecha_reserva;
}




public int getId_reserva() {
	return id_reserva;
}




public void setId_reserva(int id_reserva) {
	this.id_reserva = id_reserva;
}




public String getDni() {
	return dni;
}




public void setDni(String dni) {
	this.dni = dni;
}




public Date getFecha_fin() {
	return fecha_fin;
}




public void setFecha_fin(Date fecha_fin) {
	this.fecha_fin = fecha_fin;
}




public Date getFecha_inicio() {
	return fecha_inicio;
}




public void setFecha_inicio(Date fecha_inicio) {
	this.fecha_inicio = fecha_inicio;
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




public Set<Calendario> getFechas() {
	return fechas;
}




public void setFechas(Set<Calendario> fechas) {
	this.fechas = fechas;
}




public Reserva() {
	super();
}



}

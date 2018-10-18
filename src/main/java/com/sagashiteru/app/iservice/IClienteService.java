package com.sagashiteru.app.iservice;

import com.sagashiteru.app.model.Cliente;

public interface IClienteService {

	
	public void add(Cliente cliente);
	
	public void delete(Cliente cliente);
	
	public void update(Cliente cliente);
	
	public Cliente findByDni(String dni);
	
	
}

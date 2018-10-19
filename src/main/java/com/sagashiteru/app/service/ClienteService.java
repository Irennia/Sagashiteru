package com.sagashiteru.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagashiteru.app.dao.IClienteRepository;
import com.sagashiteru.app.iservice.IClienteService;
import com.sagashiteru.app.model.Cliente;

@Service
public class ClienteService implements IClienteService {
	
	@Autowired
	IClienteRepository clienteRepository;
	
	@Override
	public void add(Cliente cliente) {
		clienteRepository.save(cliente);
	}

	@Override
	public void delete(Cliente cliente) {

		clienteRepository.delete(cliente);
	}

	@Override
	public void update(Cliente cliente) {
		clienteRepository.save(cliente);
	}

	@Override
	public Cliente findByDni(String dni) {
		
		return clienteRepository.findById(dni).get();
	}

	@Override
	public void deletebyid(String dni) {
		clienteRepository.deleteById(dni);
		
	}

	
}
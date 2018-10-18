package com.sagashiteru.app.dao;

import org.springframework.data.repository.CrudRepository;


import com.sagashiteru.app.model.Cliente;

public interface IClienteRepository extends CrudRepository<Cliente, String> {

	
	
}

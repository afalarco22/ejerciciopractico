package com.example.registroGU.repositories;

import com.example.registroGU.entities.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RepositorioCliente extends JpaRepository<Cliente,Integer> {

}

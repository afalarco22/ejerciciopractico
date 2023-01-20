package com.example.registroGU.servicies;


import com.example.registroGU.entities.Cliente;
import com.example.registroGU.repositories.RepositorioCliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ServicioCliente implements ServicioBase<Cliente> {

    @Autowired
    RepositorioCliente repositorioCliente;

    @Override
    public List<Cliente> buscarTodos() throws Exception {
        try {
            // almacenamos la busqueda en una lista
            List<Cliente> clientes = repositorioCliente.findAll();
            return clientes;
        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Cliente buscarPorId(Integer id) throws Exception {
        try {
            Optional<Cliente> clienteBuscado = repositorioCliente.findById(id);
            return clienteBuscado.get();

        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Cliente registrar(Cliente entidad) throws Exception {
        try {
            entidad= repositorioCliente.save(entidad);
            return entidad;

        }catch(Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Cliente editar(Integer id, Cliente entidad) throws Exception {
        try {
            Optional<Cliente> clienteBuscado = repositorioCliente.findById(id);
            Cliente cliente = clienteBuscado.get();
            cliente = repositorioCliente.save(entidad);
            return cliente;

        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }
}

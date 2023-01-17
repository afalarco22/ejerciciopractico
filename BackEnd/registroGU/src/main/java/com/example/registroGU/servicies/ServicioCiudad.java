package com.example.registroGU.servicies;

import com.example.registroGU.entities.Ciudad;
import com.example.registroGU.repositories.RepositorioCiudad;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioCiudad implements ServicioBase<Ciudad> {

    @Autowired
    RepositorioCiudad repositorioCiudad;
    @Override
    public List<Ciudad> buscarTodos() throws Exception {
        try {
            // almacenamos la busqueda en una lista
            List<Ciudad> ciudades = repositorioCiudad.findAll();
            return ciudades;
        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Ciudad buscarPorId(Integer id) throws Exception {
        return null;
    }

    @Override
    public Ciudad registrar(Ciudad entidad) throws Exception {
        return null;
    }

    @Override
    public Ciudad editar(Integer id, Ciudad entidad) throws Exception {
        return null;
    }
}

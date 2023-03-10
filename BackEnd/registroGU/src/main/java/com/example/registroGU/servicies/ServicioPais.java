package com.example.registroGU.servicies;


import com.example.registroGU.entities.Pais;
import com.example.registroGU.repositories.RepositorioPais;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ServicioPais implements ServicioBase <Pais> {

    @Autowired
    RepositorioPais respositorioPais;
    @Override
    public List<Pais> buscarTodos() throws Exception {
        try {
            // almacenamos la busqueda en una lista
            List<Pais> paises = respositorioPais.findAll();
            return paises;
        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Pais buscarPorId(Integer id) throws Exception {
        try {
            Optional<Pais> paisBuscado = respositorioPais.findById(id);
            if (paisBuscado.isPresent()) {
                return paisBuscado.get();
            } else {
                throw new Exception("No se encontrĂ³ el pais con id: " + id);
            }
        } catch (Exception error) {
            throw new Exception(error.getMessage());
        }
    }

    @Override
    public Pais registrar(Pais entidad) throws Exception {
        return null;
    }

    @Override
    public Pais editar(Integer id, Pais entidad) throws Exception {
        return null;
    }
}

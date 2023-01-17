package com.example.registroGU.servicies;


import com.example.registroGU.entities.Marca;
import com.example.registroGU.repositories.RepositorioMarca;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ServicioMarca implements ServicioBase<Marca>{

    @Autowired
    RepositorioMarca repositorioMarca;
    @Override
    public List<Marca> buscarTodos() throws Exception {
        try {
            // almacenamos la busqueda en una lista
            List<Marca> marcas = repositorioMarca.findAll();
            return marcas;
        }catch (Exception error){
            throw new Exception(error.getMessage());

        }
    }

    @Override
    public Marca buscarPorId(Integer id) throws Exception {
        return null;
    }

    @Override
    public Marca registrar(Marca entidad) throws Exception {
        return null;
    }

    @Override
    public Marca editar(Integer id, Marca entidad) throws Exception {
        return null;
    }
}

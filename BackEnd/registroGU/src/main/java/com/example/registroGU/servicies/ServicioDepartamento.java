package com.example.registroGU.servicies;


import com.example.registroGU.entities.Departamento;
import com.example.registroGU.repositories.RespositorioDepartamento;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioDepartamento implements ServicioBase<Departamento> {
    @Autowired
    RespositorioDepartamento respositorioDepartamento;


    @Override
    public List<Departamento> buscarTodos() throws Exception {

            try {
                // almacenamos la busqueda en una lista
                List<Departamento> departamentos = respositorioDepartamento.findAll();
                return departamentos;
            }catch (Exception error){
                throw new Exception(error.getMessage());

            }
        }


    @Override
    public Departamento buscarPorId(Integer id) throws Exception {
        return null;
    }

    @Override
    public Departamento registrar(Departamento entidad) throws Exception {
        return null;
    }

    @Override
    public Departamento editar(Integer id, Departamento entidad) throws Exception {
        return null;
    }
}

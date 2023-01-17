package com.example.registroGU.controllers;

import com.example.registroGU.servicies.ServicioDepartamento;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/departamento")
@CrossOrigin
public class ControladorDepartamento {

    @Autowired
    ServicioDepartamento servicioDepartamento;

    @GetMapping
    public ResponseEntity<?> buscarDepartamento(){

        try{
            return  ResponseEntity
                    .status(HttpStatus.OK)
                    .body(servicioDepartamento.buscarTodos());

        }catch(Exception error){
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);

        }

    }


}

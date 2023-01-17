package com.example.registroGU.controllers;

import com.example.registroGU.servicies.ServicioMarca;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/marca")
@CrossOrigin
public class ControladorMarca {

    @Autowired
    ServicioMarca servicioMarca;

    @GetMapping
    public ResponseEntity<?> buscarMarca(){

        try{
            return  ResponseEntity
                    .status(HttpStatus.OK)
                    .body(servicioMarca.buscarTodos());

        }catch(Exception error){
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);

        }

    }







}

package com.example.registroGU.controllers;

import com.example.registroGU.entities.Cliente;
import com.example.registroGU.servicies.ServicioCliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/clienteuribe")
@CrossOrigin
public class ControladorCliente {

    @Autowired // llamado a las clases en los paquetes
    ServicioCliente servicioCliente;

    @PostMapping
    public ResponseEntity<?> registrar(@RequestBody Cliente cliente){
        try{
            return  ResponseEntity
                    .status(HttpStatus.OK)
                    .body(servicioCliente.registrar(cliente));

        }catch (Exception error){
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);

        }

    }

    @GetMapping
    public ResponseEntity<?>buscarEmpleados(){

        try{
            return  ResponseEntity
                    .status(HttpStatus.OK)
                    .body(servicioCliente.buscarTodos());

        }catch(Exception error){
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);

        }

    }











}

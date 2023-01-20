package com.example.registroGU.controllers;


import com.example.registroGU.entities.Pais;
import com.example.registroGU.servicies.ServicioPais;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/pais")
@CrossOrigin
public class ControladorPais {

    @Autowired
    ServicioPais servicioPais;

    @GetMapping
    public ResponseEntity<?> buscarPais(){

        try{
            return  ResponseEntity
                    .status(HttpStatus.OK)
                    .body(servicioPais.buscarTodos());

        }catch(Exception error){
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);

        }

    }

    @GetMapping("/{id}")
    public ResponseEntity<?> buscarPorId(@PathVariable Integer id) {
        try {
            Pais pais = servicioPais.buscarPorId(id);
            return ResponseEntity.status(HttpStatus.OK).body(pais);
        } catch (Exception error) {
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body("{mensaje: Revisa la peticion} " + error);
        }
    }


}// fin clase


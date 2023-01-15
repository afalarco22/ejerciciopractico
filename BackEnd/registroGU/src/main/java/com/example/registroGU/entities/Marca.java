package com.example.registroGU.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "marcas")
public class Marca {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "nombre_marca")
    private String nombre_marca;

    @OneToMany(mappedBy = "marca")
    @JsonManagedReference
    private List<Cliente> clientes = new ArrayList<Cliente>();




}

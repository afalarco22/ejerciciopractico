package com.example.registroGU.entities;


import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "paises")

public class Pais {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "pais")
    private String pais;

    @OneToMany(mappedBy = "pais")
    @JsonManagedReference
    private List<Cliente> clientes = new ArrayList<Cliente>();





}

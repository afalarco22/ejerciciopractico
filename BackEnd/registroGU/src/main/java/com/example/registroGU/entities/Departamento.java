package com.example.registroGU.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "departamentos")
public class Departamento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "departamento")
    private String departamento;


    @OneToMany(mappedBy = "departamento")
    @JsonManagedReference
    private List<Cliente> clientes = new ArrayList<Cliente>();



}

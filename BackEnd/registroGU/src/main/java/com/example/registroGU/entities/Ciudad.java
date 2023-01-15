package com.example.registroGU.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "ciudades")
public class Ciudad {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "nombre_ciudad")
    private String nombre_ciudad;

    @OneToMany(mappedBy = "ciudad")
    @JsonManagedReference
    private List<Cliente> clientes = new ArrayList<Cliente>();

}

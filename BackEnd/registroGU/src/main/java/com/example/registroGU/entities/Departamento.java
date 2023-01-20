package com.example.registroGU.entities;

import jakarta.persistence.*;

@Entity
@Table(name="departamentos")
public class Departamento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name="departamento")
    private String departamento;

    @Column(name = "id_pais", nullable = false)
    private Integer id_pais;


    public Integer getId() {
        return id;
    }

    public Integer getId_pais() {
        return id_pais;
    }

    public void setId_pais(Integer id_pais) {
        this.id_pais = id_pais;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
}

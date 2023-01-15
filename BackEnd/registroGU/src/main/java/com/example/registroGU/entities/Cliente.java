package com.example.registroGU.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

@Entity
@Table(name="clientes")

public class Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name="documento")
    private String documento;

    @Column(name = "tipo_documento")
    private String tipo_documento;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "apellido")
    private String apellido;

    @Column(name = "fecha_nacimiento")
    private String fecha_nacimiento;

    @ManyToOne(optional = false)
    @JoinColumn(name = "id_pais", referencedColumnName = "id")
    @JsonBackReference
    private Pais pais;

    @ManyToOne(optional = false)
    @JoinColumn(name = "id_marca", referencedColumnName = "id")
    @JsonBackReference
    private Marca marca;

    @ManyToOne(optional = false)
    @JoinColumn(name = "id_departamento", referencedColumnName = "id")
    @JsonBackReference
    private Departamento departamento;

    @ManyToOne(optional = false)
    @JoinColumn(name = "id_ciudad", referencedColumnName = "id")
    @JsonBackReference
    private Ciudad ciudad;


}

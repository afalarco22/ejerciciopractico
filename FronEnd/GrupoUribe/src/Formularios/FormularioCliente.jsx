import React, { useEffect, useState } from "react";
import axios from "axios"
const urlListarCliente = "http://localhost:8188/clienteuribe";


function FormularioCliente() {

    const [nombre, setNombre] = useState();
    const [apellido, setApellido] = useState();
    const [documento, setDocumento] = useState();
    const [tipo_documento, setTipo_documento] = useState();
    const [direccion, setDireccion] = useState();
    const [fecha_nacimiento, setFecha_nacimiento] = useState();
    const [pais, setPais] = useState();
    const [departamento, setDepartamento] = useState();
    const [ciudad, setCiudad] = useState();
    const [marca, setMarca] = useState();

    //const nombre, apellido, tipo_documento, documento, direccion, fecha_nacimiento, pais, departamento, ciudad, marca

    const createCliente = async (e) => {
        const res = await axios.post(urlListarCliente, {
          "nombre": nombre,
          "apellido": apellido,
          "tipo_documento": tipo_documento,
          "documento": documento,
          "direccion": direccion,
          "fecha_nacimiento": fecha_nacimiento,
          "pais": pais,
          "departamento": departamento,
          "ciudad": ciudad,
          "marca": marca
        }
        );
    
      }

  return (
    <form onSubmit={createCliente(e)} >
      <div className="form-group">
        <label>Nombres del cliente</label>
        <input
          type="text"
          class="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Nombres del cliente"
          name="nombre"
          onChange={(e)=>{setNombre(e.target.value)}}
        />
      </div>
      <div className="form-group">
        <label>Apellidos del cliente</label>
        <input
          type="text"
          class="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Apellidos del cliente"
          name="apellido"
          onChange={(e)=>{setApellido(e.target.value)}}
        />
      </div>
      
      <div className="form-group">
        <label for="exampleFormControlSelect2">Tipo de documento</label>
        <select className="form-control" id="" name="tipo_documento" onChange={(e)=>{setTipo_documento(e.target.value)}}>
            <option value="C.C.">C.C.</option>
            <option value="T.I.">T.I.</option>
            <option value="T.E.">T.E.</option>
            <option value="P.T.">P.T.</option>
            
        </select>
         
      </div>

      <div className="form-group">
        <label>Número documento</label>
        <input
          type="text"
          class="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder=">Número documento"
          name="documento"
          onChange={(e)=>{setDocumento(e.target.value)}}
        />
      </div>

      <div className="form-group">
        <label>Dirección<noscript></noscript></label>
        <input
          type="text"
          class="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Dirección"
          name="direccion"
          onChange={(e)=>{setDireccion(e.target.value)}}
        />
      </div>

      <div className="form-group">
        <label>Fecha de nacimiento<noscript></noscript></label>
        <input
          type="text"
          class="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Fecha de nacimiento"
          name="fecha_nacimiento"
          onChange={(e)=>{setFecha_nacimiento(e.target.value)}}
        />
      </div>

      <div className="form-group">
        <label for="exampleFormControlSelect2">País</label>
        <select className="form-control" id="" name="pais" onChange={(e)=>{setPais(e.target.value)}}>
            <option value="Colombia">Colombia</option>
            <option value="Ecuador">Ecuador</option>  
        </select> 
      </div>

      <div className="form-group">
        <label for="exampleFormControlSelect2">Departamento</label>
        <select className="form-control" id="" name="departamento" onChange={(e)=>{setDepartamento(e.target.value)}}>
            <option value="Colombia">Antioquia</option>
            <option value="Ecuador">Pichincha</option>  
        </select> 
      </div>

      <div className="form-group">
        <label for="exampleFormControlSelect2">Ciudad</label>
        <select className="form-control" id="" name="ciudad" onChange={(e)=>{setCiudad(e.target.value)}}>
            <option value="Colombia">Medellín</option>
            <option value="Ecuador">Quito</option>  
        </select> 
      </div>

      <div className="form-group">
        <label for="exampleFormControlSelect2">Marca</label>
        <select className="form-control" id="" name="marca" onChange={(e)=>{setMarca(e.target.value)}}>
            <option value="Americanino">Americanino</option>
            <option value="American Eagle">American Eagle</option>
            <option value="Chevignon">Chevignon</option>  
            <option value="Esprit">Esprit</option>
            <option value="Naf Naf">Naf Naf</option>
            <option value="Rifle">Rifle</option>
        </select> 
      </div>

      <button type="submit" class="btn btn-primary" >
        Submit
      </button>
    </form>
  );
}

export default FormularioCliente;

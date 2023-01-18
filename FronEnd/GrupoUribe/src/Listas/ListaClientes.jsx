import React from "react";
import axios from "axios"
import { useState, useEffect } from "react";

const urlListarCliente = "http://localhost:8188/clienteuribe";

function ListaClientes() {

    const [cliente, setCliente] = useState([]);

    const getClientes = async () => {
        const res = await axios.get(urlListarCliente);
        setCliente(res.data);
      };

      

      useEffect(() => {
        getClientes();
      }, []);
    
    
  return (
    
      <table className="table">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Nombre</th>
            <th scope="col">Apellidos</th>
            <th scope="col">Dirección</th>
            <th scope="col">Tipo documento</th>
            <th scope="col">Documento</th>
            <th scope="col">País</th>
            <th scope="col">Departamento</th>
            <th scope="col">Ciudad</th>
            <th scope="col">Marca que registra</th>
          </tr>
        </thead>
        <tbody>
          {cliente.map((client)=>(
            <tr key={client.id}>
                <td>{client.id}</td>
                <td>{client.nombre}</td>
                <td>{client.apellido}</td>
                <td>{client.direccion}</td>
                <td>{client.tipo_documento}</td>
                <td>{client.documento}</td>
                <td>{client.pais}</td>
                <td>{client.departamento}</td>
                <td>{client.ciudad}</td>
                <td>{client.marca}</td>
            </tr>

          ))
          
          }
          
        </tbody>
      </table>
    
  );
}

export default ListaClientes;

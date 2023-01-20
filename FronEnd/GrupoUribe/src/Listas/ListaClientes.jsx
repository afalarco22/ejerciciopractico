import React from "react";
import axios from "axios";
import { useState, useEffect } from "react";

const urlListarCliente = "http://localhost:8188/clienteuribe";
const urlListarPais = "http://localhost:8188/pais";
const urlListarDep = "http://localhost:8188/departamento";
const urlListarCiudad = "http://localhost:8188/ciudad";
const urlListarMarca = "http://localhost:8188/marca";

let country;
let department;
let city;
let mark ;

function ListaClientes() {
  const [cliente, setCliente] = useState([]);
  const [paises, setPaises] = useState([]);
  const [departamentos, setDepartamentos] = useState([]);
  const [ciudades, setCiudades] = useState([]);
  const [marcas, setMarcas] = useState([]);
  
  

  const getClientes = async () => {
    const res = await axios.get(urlListarCliente);
    setCliente(res.data);
  };

  const getPaises = async()=>{
    const res1 = await axios.get(urlListarPais);
    setPaises(res1.data);

  }

  const getDepartamentos = async()=>{
    const res2 = await axios.get(urlListarDep);
    setDepartamentos(res2.data);

  }

  const getCiudades = async()=>{
    const res3 = await axios.get(urlListarCiudad);
    setCiudades(res3.data);

  }
  const getMarcas = async()=>{
    const res4 = await axios.get(urlListarMarca);
    setMarcas(res4.data);
    console.log("Marcas lista: "+ res4.data)

  }

  useEffect(() => {
    getClientes();
    getPaises();
    getDepartamentos();
    getCiudades()
    getMarcas()
    
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
        {cliente.map((client) => {
        country = paises.find(p => p.id == client.id_pais);
        department =  departamentos.find(d => d.id == client.id_departamento); 
        city = ciudades.find(c=> c.id == client.id_ciudad)
        mark = marcas.find(m=> m.id == client.id_marca)
          return (
            <tr key={client.id}>
              <td>{client.id}</td>
              <td>{client.nombre}</td>
              <td>{client.apellido}</td>
              <td>{client.direccion}</td>
              <td>{client.tipo_documento}</td>
              <td>{client.documento}</td>
              <td>
                {country && country.pais}
                {!country && 'Sin especificar'}
              </td>
              <td>
                {department && department.departamento}
                {!department && 'Sin especificar'}
              </td>
              <td>
                {city && city.ciudad}
                {!city && 'Sin especificar'}      
              </td>
              <td>
                {mark && mark.marca}
                {!mark && 'Sin especificar'}
              </td>
            </tr>
          );
        })}
      </tbody>
    </table>
  );
}

export default ListaClientes;

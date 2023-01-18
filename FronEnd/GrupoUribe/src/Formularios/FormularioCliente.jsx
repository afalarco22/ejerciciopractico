import React, { useEffect, useState } from "react";
import axios from "axios";
const urlListarCliente = "http://localhost:8188/clienteuribe";
const urlListarMarca = "http://localhost:8188/marca";
const urlListarPais = "http://localhost:8188/pais";
const urlListarDepartamento = "http://localhost:8188/departamento";
const urlListarCiudad = "http://localhost:8188/ciudad";

function FormularioCliente() {
  /** Usamos elos useState para capturar los dado de los inputs */
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

  /*Usamos estos useState para traer los datos de las marcas, países, ciudades de la base de datos */
  const [datosMarca, setDatosMarca] = useState([]);
  const [datosPais, setDatosPais] = useState([]);
  const [datosDepartamento, setDatosDepartamentos] = useState([]);
  const [datosCiudad, setDatosCiudad] = useState([]);

  const getMarcas = async () => {
    try {
      const res = await axios.get(urlListarMarca);
      setDatosMarca(res.data);
      console.table(res.data);
    } catch (error) {
      console.log("No se pudo traer dato " + error)


    }
  };

  const getPaises = async () => {
    try {
      const res = await axios.get(urlListarPais);
      setDatosPais(res.data);
      console.table(res.data);
    } catch (error) {
      console.log("No se pudo traer dato " + error)


    }
  };

  const getDepartamentos = async () => {
    try {
      const res = await axios.get(urlListarDepartamento);
      setDatosDepartamentos(res.data);
      console.table(res.data);
    } catch (error) {
      console.log("No se pudo traer dato " + error)


    }
  };

  const getCiudades = async () => {
    try {
      const res = await axios.get(urlListarCiudad);
      setDatosCiudad(res.data);
      console.table(res.data);
    } catch (error) {
      console.log("No se pudo traer dato " + error)


    }
  };


  useEffect(() => {
    getMarcas();
  }, []);

  useEffect(() => {
    getPaises();
  }, []);

  useEffect(() => {
    getDepartamentos();
  }, []);

  useEffect(() => {
    getCiudades();
  }, []);

  //console.table(datosMarca);

  //const nombre, apellido, tipo_documento, documento, direccion, fecha_nacimiento, pais, departamento, ciudad, marca

  const createCliente = async (e) => {
    axios
      .post(urlListarCliente, {
        nombre: nombre,
        apellido: apellido,
        tipo_documento: tipo_documento,
        documento: documento,
        direccion: direccion,
        fecha_nacimiento: fecha_nacimiento,
        pais: pais,
        departamento: departamento,
        ciudad: ciudad,
        marca: marca,
      })
      .then(function () {
        alert("Se ha creado correctamente el registro");
        setNombre("");
        setApellido("");
        setCiudad("");
        setDepartamento("");
        setPais("");
        setDocumento("");
        setTipo_documento("");
        setDireccion("");
        setMarca("");
        setFecha_nacimiento("");
      });
  };

  return (
    <div className = "contenedor_form">
      <div className="form-group">
        <label>Nombres del cliente</label>
        <input
          type="text"
          className="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Nombres del cliente"
          name="nombre"
          onChange={(e) => {
            setNombre(e.target.value);
          }}
        />
      </div>
      <div className="form-group">
        <label>Apellidos del cliente</label>
        <input
          type="text"
          className="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Apellidos del cliente"
          name="apellido"
          onChange={(e) => {
            setApellido(e.target.value);
          }}
        />
      </div>

      <div className="form-group">
        <label >Tipo de documento</label>
        <select
          className="form-control"
          id=""
          name="tipo_documento"
          onChange={(e) => setTipo_documento(e.target.value)}
        > 
          <option value="">--------</option>
          <option value="C.C.">C.C.</option>
          <option value="T.I.">T.I.</option>
          <option value="T.E.">T.E.</option>
          <option value="P.T.">P.T.</option>
        </select>
      </div>

      <div className="form-group">
        <label> Número documento</label>
        <input
          type="text"
          className="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Número documento"
          name="documento"
          onChange={(e) => setDocumento(e.target.value)}
        />
      </div>

      <div className="form-group">
        <label>
          Dirección<noscript></noscript>
        </label>
        <input
          type="text"
          className="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Dirección"
          name="direccion"
          onChange={(e) => setDireccion(e.target.value)}
        />
      </div>

      <div className="form-group">
        <label>
          Fecha de nacimiento<noscript></noscript>
        </label>
        <input
          type="text"
          className="form-control"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Fecha de nacimiento"
          name="fecha_nacimiento"
          onChange={(e) => setFecha_nacimiento(e.target.value)}
        />
      </div>

      <div className="form-group">
        <label >País</label>
        <select
          className="form-control"
          value={pais}
          onChange={(e) => setPais(e.target.value)}
        >
          <option value="">-----</option>
          {datosPais.map((e) => (
            <option key={e.id} value={e.pais}>
              {e.pais}
            </option>
          ))}
        </select>
      </div>

      <div className="form-group">
        <label >Departamento</label>
        <select
          className="form-control"
          value={departamento}
          onChange={(e) => setDepartamento(e.target.value)}
        >
          <option value="">-----</option>
          {datosDepartamento.map((e) => (
            <option key={e.id} value={e.departamento}>
              {e.departamento}
            </option>
          ))}
        </select>
      </div>

      <div className="form-group">
        <label >Ciudad</label>
        <select
          className="form-control"
          value={ciudad}
          onChange={(e) => setCiudad(e.target.value)}
        >
          <option value="">-----</option>
          {datosCiudad.map((e) => (
            <option key={e.id} value={e.ciudad}>
              {e.ciudad}
            </option>
          ))}
        </select>
      </div>

      <div className="form-group">
        <label >Marca</label>
        
        <select
          className="form-control"
          value={marca}
          onChange={(e) => setMarca(e.target.value)}
        >
          <option value="">-----</option>
          {datosMarca.map((e) => (
            <option key={e.id} value={e.marca}>
              {e.marca}
            </option>
          ))}
        </select>
   

      </div>

      <button type="submit" className="btn btn-light boton" onClick={createCliente}>
        Registrar
      </button>
    </div>
  );
}

export default FormularioCliente;

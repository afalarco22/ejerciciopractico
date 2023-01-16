import { useState } from 'react'
import reactLogo from './assets/react.svg'
import './App.css'
import "bootstrap/dist/css/bootstrap.min.css"
import FormularioCliente from './Formularios/FormularioCliente'
import ListaClientes from './Listas/ListaClientes'


function App() {
  

  return (

    <div id='contenedor'>
      <aside id="formulario">
        <FormularioCliente/>
      </aside>
      <main>
        <ListaClientes/>

      </main>
    
    
    </div>

    
   
  )
}

export default App

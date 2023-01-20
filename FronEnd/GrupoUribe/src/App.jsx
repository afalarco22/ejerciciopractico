import { useState } from 'react'
import reactLogo from './assets/react.svg'
import './App.css'
import "bootstrap/dist/css/bootstrap.min.css"
import FormularioCliente from './Formularios/FormularioCliente'
import ListaClientes from './Listas/ListaClientes'
import Encabezado from './Header/Encabezado'
import Footer from './Footer/Footer'


function App() {
  

  return (

    <>
    <header>
      <Encabezado />
    </header>
    <main>
      <div id='contenedor'>
      
      <FormularioCliente/>
      <ListaClientes/>
      
      </div>
    </main>

    <footer>
      <Footer/>
    </footer>

    
    </>

    

    
   
  )
}

export default App

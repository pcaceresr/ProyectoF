<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Contacto</title>
    </head>

    <body>

          <div  class="container" class="btn-group" role="group" aria-label="Basic mixed styles example">
            <a  href="index.htm" class="btn btn-primary">Inicio</a>
            <a href="nosotros.htm" class="btn btn-warning">¿Quienes somo?</a>
            <a  href="contacto.htm"a class="btn btn-success">Contacto</a>
           </div><br>

        <form  method="post">
            
           
            <div class="container">
                <label for="contactanos">Contáctanos</label><br>
                <label for="contactanos">Déjanos tus datos y nosotros te contactaremos</label>
            </div>

        </form>

        <form th:object="${form}"  method="post" >
            <div class="container">
                <label for="nombre">Nombre</label>
                <input th:field="*{nombre}" id="nombre" placeholder="Escribe tu nombre" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="apellido">Apellido</label>
                <input th:field="*{apellido}" id="codigo" placeholder="Escribe tu apellido" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="existencia">Correo electrónico</label>
                <input th:field="*{correo}" id="correo" placeholder="Ingresa tu correo electrónico" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="telefono">Teléfono</label>
                <input th:field="*{telefono}" id="precio" placeholder="Ingresa tu númerp de telefono" type="number"
                       class="form-control">
            </div ><br>
            <div class="container">
                <button class="btn btn-success" type="submit">Enviar</button>
            </div >
        </form>

    </body>
</html>

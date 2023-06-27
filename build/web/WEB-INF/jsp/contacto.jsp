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

       <div class="card body">
        <div  class="container" class="btn-group" role="group" aria-label="Basic mixed styles example">
            <a  href="index.htm" class="btn btn-primary">Inicio</a>
            <a href="nosotros.htm" class="btn btn-success">¿Quienes somos?</a>
            <a  href="contacto.htm"a class="btn btn-info">Contacto</a>
            <a  href="tienda.htm"a class="btn btn-warning">Tienda</a>
            <a  href="agregar.htm"a class="btn btn-link">Agregar producto</a> 
        </div><br>
        </div>

        <form  method="post">


            <div class="container">
                <h4>CONTÁCTANOS</h4><br>
                <label for="contactanos">Déjanos tus datos y nosotros te contactaremos</label>
            </div>

        </form>

        <form th:object="${form}"  method="post" >
            <div class="container">
                <label for="nombre">NOMBRE</label>
                <input th:field="*{nombre}" id="nombre" placeholder="Ingrese su nombre" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="apellido">APELLIDO</label>
                <input th:field="*{apellido}" id="codigo" placeholder="Ingrese su apellido" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="existencia">CORREO ELECTRÓNICO</label>
                <input th:field="*{correo}" id="correo" placeholder="Ingrese su correo electrónico" type="text"
                       class="form-control">
            </div>
            <div class="container">
                <label for="telefono">TELÉFONO</label>
                <input th:field="*{telefono}" id="precio" placeholder="Ingrese su número de teléfono" type="number"
                       class="form-control">
            </div ><br>
            <div class="container">
                <button class="btn btn-success" type="submit">ENVIAR</button>
            </div >
        </form>

            <div class="container">
                <br>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.2407732360343!2d-70.66444552500879!3d-33.44303309713106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5a946d84fe7%3A0x6b499e826c597fd!2sMoneda%2C%20Santiago%2C%20Regi%C3%B3n%20Metropolitana!5e0!3m2!1ses!2scl!4v1687833314188!5m2!1ses!2scl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div >

            <div class="container">
                <br> <br>
                <label>Dirección: Modeda 131, Dantiago centro</label><br>
                <label>Telefono: +56965423345</label><br>
                <label>Correo: contacto@contacto.cl</label>
            </div>

    </body>
</html>

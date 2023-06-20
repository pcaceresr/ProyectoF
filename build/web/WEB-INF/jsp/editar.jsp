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
                <h4>EDITAR PRODUCTO</h1><br>
                    </div>

                    </form>

                    <form th:object="${form}"  method="POST" >

                        </div>
                        <div class="container">
                            <label for="nombre">NOMBRE</label>
                            <input th:field="*{nombre}"  name="strNombre" id="nombre" value="${lista[0].nombre}" placeholder="Nombre del producto" type="text"
                                   class="form-control">
                        </div>

                        <div class="container">
                            <label for="precio">PRECIO</label>
                            <input th:field="*{precio}"  name="intPrecio" id="correo" value="${lista[0].precio}" placeholder="Precio del producto" type="number"
                                   class="form-control">
                        </div>
                        <div class="container">
                            <label for="descripcion">DESCRIPCIÓN</label>
                            <input th:field="*{descripcion}"  name="strDescripcion" id="precio" value="${lista[0].descripcion}" placeholder="Descripción del producto" type="text"
                                   class="form-control">
                        </div ><br>
                        <div class="container">
                            <button class="btn btn-success" type="submit">GUARDAR</button>
                        </div >
                    </form>

                    </body>
                    </html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Tienda</title>
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

        <div class="container mt-4 ">
            <div>
                <h4>PRODUCTOS DISPONIBLES</h4><br>
                <div class="card body">
                    <table class="table" table-hover>
                        <thead>
                            <tr>
                                <th>CODIGO</th>
                                <th>NOMBRE</th>
                                <th>PRECIO</th>
                                <th>DESCRIPCION</th>
                            </tr>
                        </thead>
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.id_producto}</td>
                                <td>${dato.nombre}</td>
                                <td>${dato.precio}</td>
                                <td>${dato.descripcion}</td>
                                <th>
                                    <a href="editar.htm?id=${dato.id_producto}" class="btn btn-warning">EDITAR</a>
                                    <a href="eliminar.htm?id=${dato.id_producto}" class="btn btn-danger">ELIMINAR</a>
                                </th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                </div>
            </div>
        </div>
    </body>
</html>

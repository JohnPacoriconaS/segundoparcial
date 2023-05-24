<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> pro = (ArrayList<Producto>) request.getAttribute("producto");

%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>

    <center><h2>--------------------------------------------------------------</h2></center>
    <center><h4>SEGUNDO PARCIAL -  TEM742</h4></center>
    <center><h4>Nombre : John Henry Pacoricona Sangalli</h4></center>
    <center><h4>Carnet : 10937689</h4></center>
    <center><h2>--------------------------------------------------------------</h2></center>
    <center><h3></h3></center>


    <center>  <h1>Gestion de Productos</h1>
        <p><a href="Inicio?action=add">Nuevo Producto</a></p>
        <table border="3" style="margin: 0 auto;" >
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach  var="item" items="${producto}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table></center>
</body>
</html>

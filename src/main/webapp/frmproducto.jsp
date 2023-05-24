<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>

    <center><h2>--------------------------------------------------------------</h2></center>
    <center><h4>SEGUNDO PARCIAL -  TEM742</h4></center>
    <center><h4>Nombre : John Henry Pacoricona Sangalli</h4></center>
    <center><h4>Carnet : 10937689</h4></center>
    <center><h2>--------------------------------------------------------------</h2></center>
    <center><h3></h3></center> 
    <center><h1>
            <c:if test="${producto.id == 0}">Nuevo Registro</c:if>
            <c:if test="${producto.id != 0}">Editar Registro</c:if>
            </h1>
            <form action="Inicio" method="post">
                <input type="hidden" name="id" value="${producto.id}">
            <table border="3" style="margin: 0 auto;" >
                <tr>
                    <td>Descripcion:</td>
                    <td><input type="text" name="descripcion" value="${producto.descripcion}"></td>
                </tr>   
                <tr>
                    <td>Cantidad:</td>
                    <td><input type="text" name="cantidad" value="${producto.cantidad}"></td>
                </tr>   
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" value="${producto.precio}"></td>
                </tr>   
                <tr>
                    <td>Categoria:</td>
                    <td><input type="text" name="categoria" value="${producto.categoria}"></td>
                </tr>   
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form></center>
</body>
</html>
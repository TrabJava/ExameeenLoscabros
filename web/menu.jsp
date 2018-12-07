<%-- 
    Document   : menu
    Created on : 03-12-2018, 20:10:23
    Author     : gaymer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-inverse" style="background-color: #333333!important; font-family: monospace" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img src="img/logoautopark.png" style="width: 81px; float:none; margin:  auto; margin-top: 5%;" alt=""/>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="inicio.jsp"><span class="glyphicon glyphicon-home"></span> INICIO</a></li>
                    <li><a href="compra.jsp"><span class="glyphicon glyphicon-usd"></span> PAGAR ESTACIONAMIENTO</a></li>
                    <li><a href="buscarRut.jsp"><span class="glyphicon glyphicon-search"></span> VER COMPRAS</a></li>
                    <li><a href="estacionamientos.jsp"><span class="glyphicon glyphicon-eye-open"></span> VER ESTACIONAMIENTOS</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Bienvenido${user}</a></li>
                    <li><a href="PrcesoSession"><span class="glyphicon glyphicon-chevron-left"></span> SALIR</a></li>
                </ul>
            </div>

        </nav>
    </body>
</html>

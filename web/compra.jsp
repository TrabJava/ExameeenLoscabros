<%-- 
    Document   : compra
    Created on : 04-12-2018, 22:57:20
    Author     : gamer
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="modelo.dto.Estacionamiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagar Estacionamiento</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body  style="background-size: cover; background-image: url(img/fondoreal.jpg)" > 

        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/autopark?zeroDateTimeBehavior=convertToNull"
                           user = "root"  password = ""/>
        <sql:query dataSource = "${snapshot}" var = "admin">
            SELECT * FROM usuario WHERE usuario.tipo_usu=1  ;
        </sql:query>


        <c:choose>
            <c:when test="${user== null}">
                <div class="background"></div>
                <div class="content">
                    <h1>Debes iniciar Sesión primero</h1>
                    <h3><a href="login.jsp">(Iniciar Sesión)</a></h3>
                </div>
            </c:when>
            <c:when test="${user!=null}">
                <jsp:include page="menu.jsp"></jsp:include>
                    <div class="container-fluid" style="max-width: 650px"> 
                        <div class="jumbotron" style="margin-top: 5px">
                            <div align="center">
                                <img src="img\compraempresa.png" style="width: 500px; height: 150px;"/>
                            </div>
                            <form action="ProcesoCompra" method="post">
                                <input type="hidden" name="compraId" value="${compra.getIdCompra()}">

                            <h4> <p style="display: inline;font-style: italic;font-size: 20px;font-family: initial">Seleccione Estacionamiento, Indique la cantidad de dinero que mostró aplicación movil:</p></h4>
                            <table class="table-bordered-1 alert-warning breadcrumb c">
                                <center>
                                    <tr>
                                        <td>
                                            <select name="cboDestino" id="cboDestino" onchange="generarMonto()" required="true"> 
                                                <option value="1">Republic Parking System Chile</option>
                                                <option value="2">Estacionamiento Bluepark Espacio M</option>
                                                <option value="3">Estacionamientos Serrano</option>
                                                <option value="4">Estacionamientos DUOC UC</option>
                                                <option value="5">Estacionamiento Nativo</option>
                                            </select>
                                            <label>                            </label><input type="submit" name="btnAccion" value="AgregarDestino" class="btn btn-brown"/>
                                        </td>
                                    <br>

                                    <td>
                                        <br>

                                    </td>
                                    </tr>
                                </center>
                                <tr>
                                    <td>
                                        <%
                                            if (request.getAttribute("mensajeCantidad") != null) {
                                                out.println(request.getAttribute("mensajeCantidad"));

                                            }
                                        %>
                                    </td>
                                </tr>
                            </table>

                            <table class="table table-hover">
                                <tr>
                                    <td>Nombre destino</td>
                                    <td></td>
                                    <td>Cantidad</td>
                                    <td>Precio Boleta</td>
                                    <td>Id Boleta</td>
                                </tr>

                                <c:forEach var="row" items="${boletas}">
                                    <form action="procesoCompra" method="GET">
                                        <tr>
                                            
                                            <td>${boleta.getEstacionamiento().getDescripcion()}<td/>
                                            <td>${boleta.getCantidad()}</td>
                                            <td>${boleta.getMontoBoleta()}</td>
                                            <td><input name="txtId" type="text" readonly="" value="${row.IdBoleta}"></td>
                                            <td> <button class="btn btn-brown" type="submit" name="btnEliminar" value="${boleta.getIdBoleta()}">Eliminar</Button></td>
                                        <tr/>
                                    </form>
                                </c:forEach>
                            </table>

                            <table  class="table-bordered-5 alert-warning breadcrumb caption ">
                                <tr>
                                    <td>
                                        <label>Opcion de envio de boleta:</label>
                                        <select name="cboPago" id="cboPago" required="true"> 
                                            <option value="1">Transferencia</option>
                                            <option value="2">Pago En Linea</option>
                                            <option value="3">Orden De Compra</option>
                                        </select>
                                    </td>

                                    <td >
                                        <label for="" style="margin-left: 100px">Opciones de Envio Boleta</label>
                                        <select name="cboEnvio" id="cboEnvio" required="true"> 
                                            <option value="1">Correo Electronico</option>
                                            <option value="2">Direccion Particular</option>
                                        </select>
                                    </td>
                                </tr>
                                <h3> <p style="display: inline;font-style: italic;font-size: 20px;font-family: initial">Total A Pagar: ${MontoTotal}</p> </h3>
                            </table>
                            <input type="submit" name="btnAccion" value="Pagar" class="btn btn-brown"/>
                        </form>
                    </div>
                </div>
                ${mensaje}
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>

    </body>
</html>

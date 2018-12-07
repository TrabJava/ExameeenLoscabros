<%-- 
    Document   : compra
    Created on : 04-12-2018, 22:57:20
    Author     : gamer
--%>

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
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid" style="max-width: 650px"> 
                <div class="jumbotron" style="margin-top: 5px">
<div align="center">
                        <img src="img\compraempresa.png" style="width: 500px; height: 150px;"/>
                         </div>
                    <form action="" method="post">
                        <input type="hidden" name="compraId" value="${compra.getIdCompra()}">

                    <table class="table-bordered-5 alert-warning breadcrumb caption "  >
                        <tr>
                            <td>
                                <label for="">RUT Empresa: </label>
                            </td>
                            <td>
                                <input type="number" name="txtRut" value="${cliente.getRut()}" required="true" maxlength="15" >
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Nombre Empresa: </label>
                            </td>
                            <td>
                                <input type="text" name="txtNombres" value="${cliente.getNombres()}" required="true" maxlength="50">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Direccion: </label>
                            </td>
                            <td>
                                <input type="text" name="txtDireccion" value="${cliente.getDireccion()}" required="true" maxlength="50">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Comprado Por: </label>
                            </td>
                            <td>
                                <input type="text" name="txtCompradoPor" value="${cliente.getComprador()}" required="true" maxlength="50">
                            </td>
                        </tr>
                    </table>
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
                                        <option value="4">Estacionamiento Nativo</option>
                                    </select>
                                    <label>                            </label><input type="submit" name="btnAgregarDestino" value="agregar" class="btn btn-brown"/>
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

                        <c:forEach var="ticket" items="${tickets}">
                            <tr>
                                <td>${ticket.getDestino().getNombreDestino()}<td/>
                                <td>${ticket.getCantidad()}</td>
                                <td>${ticket.getMontoTicket()}</td>
                                <td>${ticket.getIdTicket()}</td>
                                <td> <button class="btn btn-brown" type="submit" name="btnEliminar" value="${ticket.getIdTicket()}">Eliminar</Button></td>

                            <tr/>
                        </c:forEach>
                    </table>

                    <table  class="table-bordered-5 alert-warning breadcrumb caption ">
                        <tr>
                            <td>
                                <label for="">Opciones de pago</label>
                                <br>
                                <input type="radio" name="rbOpcionPago" value="1" >
                                <label for="">Transferencia</label>
                                <br>
                                <input type="radio" name="rbOpcionPago" value="2" >
                                <label for="">Pago En Linea</label>
                                <br>
                                <input type="radio" name="rbOpcionPago" value="3" >
                                <label for="">Orden De Compra</label>
                            </td>

                            <td >
                                <label for="" style="margin-left: 100px">Opciones de Envio Boleta</label>
                                <br>
                                <input type="radio" name="rbOpcionRetiro" value="1" style="margin-left: 100px" >
                                <label for="" >Correo Electronico</label>
                                <br>
                                <input type="radio" name="rbOpcionRetiro" value="2" style="margin-left: 100px" >
                                <label for="" >Direccion Particular</label>
                            </td>
                        </tr>
                        <h3> <p style="display: inline;font-style: italic;font-size: 20px;font-family: initial">Total A Pagar: ${MontoTotal}</p> </h3>
                    </table>
                    <input type="submit" name="btnPagar" value="Pagar" class="btn btn-brown"/>
                </form>
            </div>
        </div>
        ${mensaje}
    </body>
</html>

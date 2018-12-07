<%-- 
    Document   : buscarRut
    Created on : 03-12-2018, 20:18:59
    Author     : gamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Compras</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body  style="background-size: cover; background-image: url(img/fondoreal.jpg)" > 
        <jsp:include page="menu.jsp"></jsp:include>
        <center>
            <div class="container">
  
  <div class="panel panel-default">
<div align="center">
                        <img src="img/buscarcliiente.png" style="width: 500px; height: 150px;"/>
                         </div>
      <div class="panel-heading" style="align-content: center">
     <a class="glyphicon glyphicon-send text-warning" href="estacionamientos.jsp"> Ver Estacionamientos</a> 
                    
                    <form method="POST" action="" >
                        <table  class="table-bordered-5 alert-warning breadcrumb caption">
                            <tbody>
                                <tr>
                                    <td><label>Rut:     </label></td><td><input  type="text" name="txtRut" value="" required="true"/></td>
                                    <td><label>         </label></td>
                                </tr>
                            <br>
                            <br>
                            
                        </table>
                         <div class="form-group text-center">
                            <tr>
                                <td><input class="btn btn-brown"  type="submit" name="btnBuscar" value="Buscar"/></td>
                            </tr>
                            </div>
    
    </div>
      <div class="panel-body">
            <br>
                        <table>
                            <c:forEach var="e" items="${ListaCompra}">
                                <tr>    
                                    <td><c:out value="${boleta.listarPorTicketConcat(e)}" ></c:out></td>
                                    <td><c:out value="${boleta.MontoTotal(e.getIdCompra())}" ></c:out></td>
                                    <td><button class="btn btn-brown" type="submit" name="btnPedir" value="${e.getIdCompra()}" />Pedir</button></td>
                                </tr>
                            </c:forEach>
                        </table> 
      </div>
  </div>
</div>
                   
                         

                    <table>
                        <td>
                            <%
                                if (request.getAttribute("mensajeBuscar") != null) {
                                    out.println(request.getAttribute("mensajeBuscar"));
                                }
                            %>
                        </td>
                    </table>
                    </tbody>
                    </table>
                </form>
            </div>
        </div>
    </center>
</body>
</html>

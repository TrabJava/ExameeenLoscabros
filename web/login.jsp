<%-- 
    Document   : login
    Created on : 04-12-2018, 21:39:20
    Author     : gamer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AutoPark</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
   
    <body  style="background-size: cover; background-image: url(img/fondoreal.jpg)" > 
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div align="center" style="width: 300px; float:none; margin: 0 auto; margin-top: 1%; ">
                        </br>
                        </br>
                        </br>
                        <div align="center">
                        <img src="img\logoautopark.png" style="width: 400px; height: 250px;"/>
                         </div>
                        </br>
                        </br>
                        </br>
                        <h3 style="color: #ffffff">Iniciar Sesion</h3>
                        <form action="ProcesoLogin" method="GET" >
                            <div class="form-group">
                                <input type="text" name="txtUser" value="" placeholder="Usuario" class="form-control" minlength="4" required="" maxlength="25"/>
                            </div>
                            <div class="form-group">
                                <input type="password" name="txtPass" value="" placeholder="Contraseña" required="true" class="form-control" maxlength="25"/>
                            </div>
                            <div class="form-group">
                                <a href="registrarse.jsp">Registrarse</a>
                            </div>
                            <div class="form-group text-center"> 
                                <input type="submit" name="btnEnviar" value="Ingresar" class="btn btn-primary" />
                                <input type="reset" name="btnLimpiar" value="Limpiar" class="btn btn-danger" />
                            </div>
                        </form>
                        ${Error}
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

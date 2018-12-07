<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="background-size: cover; background-image: url(img/fondoreal.jpg)">
        <div class="container">
             <div align="center">
                        <img src="img/registrate.png" style="width: 500px; height: 150px;"/>
                         </div>
            <div class="text-center">
                <div class="text-center">
                </div>
            </div>
            <div class="text-center">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4">
                   
                    <br>
                    <br>
                    <br>
                    <br>
                    <form action="ProcesoUsuario" method="POST">
                        <div class="text-center">
                            <div class="form-group">
                                <label style="color: black">Nombre de usuario: </label>
                                <input type="text" name="txtNombreUsuario" value="" placeholder="Ej: ElnumeroUno" required="true" maxlength="25" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label style="color: white">Nombre: </label>
                                <input type="text" name="txtNombre" value="" placeholder="Ej: Dominique" required="true" maxlength="50" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label style="color: black">Apellido: </label>
                                <input type="text" name="txtApellido" value="" placeholder="Ej: Toretto" required="true" maxlength="50" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label style="color: white">Correo: </label>
                                <input type="text" name="txtCorreo" value="" placeholder="Ej: mestacionosolo@rapidoyfurioso.com" maxlength="50" required="true" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label style="color: black">Telefono: </label>
                                <input type="number" name="txtTelefono" value="" placeholder="Ej: 956231211" required="true" maxlength="11"  class="form-control" />
                            </div>
                            <div class="form-group text-center"> 
                                <input type="submit" name="btnAccion" value="Registrarse" class="btn btn-primary" />
                                <input type="reset" name="btnAccion" value="Limpiar" class="btn btn-danger" />
                            </div>
                        </div>
                    </form>
                    <br>
                    ${msjOkc}
                    ${msjNo}
                
                <div class="col-sm-4">
                </div>
            </div>
        </div>

    </body>
</html>


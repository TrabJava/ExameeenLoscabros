<%-- 
    Document   : estacionamientos
    Created on : 03-12-2018, 20:28:26
    Author     : gamer
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estacionamientos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </head>
    <body  style="background-size: cover; background-image: url(img/fondoreal.jpg)" > 
        <c:choose>
            <c:when test="${user== null} && ${pass== null}">
                <div class="background"></div>
                <div class="content">
                    <h1>Debes iniciar Sesión primero</h1>
                    <h3><a href="login.jsp">(Iniciar Sesión)</a></h3>
                </div>
            </c:when>
        </c:choose>
        <jsp:include page="menu.jsp"></jsp:include>
<div align="center">
                        <img src="img/parking.png" style="width: 500px; height: 150px;"/>
                         </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <iframe class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d106531.81079826228!2d-70.62083602802782!3d-33.446203794372174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbe43b35881544dfe!2sRepublic+Parking+System+Chile!5e0!3m2!1ses!2scl!4v1512980184315" data-holder-rendered="true"></iframe>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <iframe class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37661.251081136325!2d-70.651730275908!3d-33.45410643968015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x226c0340000acab9!2sEstacionamiento+Bluepark+Espacio+M!5e0!3m2!1ses!2scl!4v1512980324974" data-holder-rendered="true"></iframe>
                    </div>
                </div>
                 
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <iframe class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37661.251081136325!2d-70.651730275908!3d-33.45410643968015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9ef6ebd14ee48a54!2sEstacionamientos+Serrano!5e0!3m2!1ses!2scl!4v1512980357496" data-holder-rendered="true"></iframe>
                    </div>
                    
                </div>
                <br>
                <div class="col-md-6">
                    <br>
                    <div class="card mb-4 shadow-sm">
                        <iframe class="card-img-" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d106334.39244878164!2d-70.62081522093547!3d-33.60660788840543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x624243829595e9e1!2sestacionamientos+duoc!5e0!3m2!1ses!2scl!4v1512971948094" data-holder-rendered="true"></iframe>
                    </div>
                </div>
                 <br>
                <div class="col-md-6">
                    <br>
                    <div class="card mb-4 shadow-sm">
                        <iframe class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d38244.95902897514!2d-70.65417808097207!3d-33.49782578530392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x29d9b952c09b8ea2!2sEstacionamiento+Nativo!5e0!3m2!1ses!2scl!4v1512980404300" data-holder-rendered="true"></iframe>
                    </div>
                </div>
                 <br>
            </div>
        </div>
    </body>
</html>
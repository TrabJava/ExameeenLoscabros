<%-- 
    Document   : inicio
    Created on : 05-12-2018, 21:40:28
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
        <title>Pagina Inicio</title>

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
                <c:when test="${user!=null}">
                    <jsp:include page="menu.jsp"/>
        <div class="container">
 <div align="center">
                        <img src="img\bienvenuto.png" style="width: 400px; height: 250px;"/>
                         </div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="img/1.jpeg" alt="AutoPark" style="width:100%;">
      </div>

      <div class="item">
        <img src="img/2.jpeg" alt="AutoPark" style="width:100%;">
      </div>
    
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    
                </c:when>
                <c:otherwise>
            </c:otherwise>
        </c:choose>
        </body>
</html>

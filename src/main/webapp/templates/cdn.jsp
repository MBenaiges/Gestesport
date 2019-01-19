<%-- 
    Document   : cdn
    Created on : 10/11/2018, 10:26:33
    Author     : Cristian, Jordi i Marc
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ca">
    <head>
        <!-- BOOTSTRAP 4 CSS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <!-- BOOTSTRAP 4 JS-->
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <!-- FONTS -->
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <!-- FONTAWESOME -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome-animation/0.2.1/font-awesome-animation.min.css" >
        <!-- TIPSO -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tipso/1.0.8/tipso.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tipso/1.0.8/tipso.min.js" type="text/javascript"></script>
        <!-- END TIPSO -->
        <!-- IZITOAST -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/iziToast.css">
        <script src="<%=request.getContextPath()%>/resources/js/iziToast.js" type="text/javascript"></script>
        <!-- JS PERSONAL-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/principal.js"></script>
        <!-- CSS PERSONAL -->
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/estils.css" media="screen" />
        <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/img/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <sql:setDataSource driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/gestesport?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false" user = "root"  password = "root"></sql:setDataSource>               
    </head>
    <body>
    </body>
</html>

<%-- 
    Document   : panellAdmin
    Created on : 25/11/2018, 10:50:53
    Author     : Cristian, Jordi i Marc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Panell de l'administrador</title>
    </head>
    <body>
    <%@include file="/templates/header.jsp" %>
    <!-- Contingut -->
    
    <div class="visible">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <a href="<%=request.getContextPath()%>">
                        <img src="<%=request.getContextPath()%>/resources/img/logotip_fosc.png" class="img-responsive logotip" />
                    </a>
                    <br/><br/>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <br/><br/>
                    <h3 style="text-align: right;"> Panell de l'administrador</h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>
            <div class="row" style="padding:30px;">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <p style="text-align:center;"><a class="boto_panell" href="<%=request.getContextPath()%>/usuaris" >Administrar usuaris</a></p>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <p style="text-align:center;"><a class="boto_panell" href="<%=request.getContextPath()%>/equips" >Administrar Equips</a></p>
                </div>
            </div>
            <c:choose>
                <c:when test="${not empty botocalendari}">
                    <div class="alert alert-primary" style="width: 60%; margin-left:auto; margin-right:auto;" role="alert">
                        <p style="text-align:center;"><i class="fas fa-info-circle "></i> Prem el següent botó quan estiguin tots els equips entrats i s'hagi de generar el calendari</p>
                        <p style="text-align:center;"><i class="fas fa-arrow-down fa-2x faa-bounce animated"></i></p>
                    </div>
                    <form:form modelAttribute="formJugador" class="form-horizontal" action="panellAdmin">
                        <div class="row" style="padding:30px;">
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <!-- REPASSAR EL DISSENY DEL BOTÓ -->
                                <p style="text-align:center;"><input type="submit" class="boto_panell" value ="Calendari"/></p>
                            </div>
                        </div>
                    </form:form>                    
                </c:when>
                <c:otherwise>
                    <c:choose>
                        <c:when test="${not errorArbitres}">
                                 <table class="table table-striped table-responsive-lg ">
                            <thead class="capsalera">
                              <tr>
                                <th scope="col">Equip Local</th>
                                <th scope="col"></th>
                                <th scope="col">Equip Visitant</th>
                                <th scope="col">Data</th>
                                <th scope="col">Àrbitre</th>
                              </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${partits}" var="partit">
                                    <tr>
                                        <td>${partit.equipA.nom}</td>
                                        <td> - </td>
                                        <td>${partit.equipB.nom}</td>                                    
                                        <td>${partit.dataPartit}</td>
                                        <td>${partit.arbitre.fullname}</td>
                                    </tr>
                                </c:forEach> 
                            </tbody>
                        </table>
                    
                        </c:when>
                        <c:otherwise>
                            Necessites tenir algun àrbitre per a poder generar el calendari
                        </c:otherwise>
                    </c:choose>                   
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>

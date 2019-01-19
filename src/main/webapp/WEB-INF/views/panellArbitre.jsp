<%-- 
    Document   : panellAdmin
    Created on : 25/11/2018, 10:50:53
    Author     : Cristian, Jordi i Marc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Panell de l'àrbitre</title>
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
                    <h3 style="text-align: right;"> Panell de l'àrbitre</h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>
            <div class="row" style="padding:30px;">
               <table class="table table-striped table-responsive-lg ">
                <thead class="capsalera">
                  <tr>                    
                    <th scope="col">Local</th>
                    <th scope="col">Resultat</th>
                    <th scope="col">Visitant</th>
                    <th scope="col">Data</th>                    
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="partit" items="${partits}">   
                    <tr class="fila_partits "  onclick="document.location = '<%=request.getContextPath()%>/partits/partit?idPartit=${partit.idPartit}';">
                        <td>${partit.equipA.nom}</td>
                        <td>-</td>
                        <td>${partit.equipB.nom}</td>
                        <td>${partit.dataPartit}</td>
                </c:forEach> 
                </tbody>
            </table> 
            </div>
            
        </div>
    </div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>
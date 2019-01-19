<%-- 
    Document   : userss
    Created on : 27/10/2018, 11:58:18
    Author     : Cristian, Jordi i Marc
--%>

    <%@include file="/templates/cdn.jsp" %>
    <title>Golejadors</title>
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
                    <h3 style="text-align: right;"> Classificació golejadors </h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>
            <div class="d-lg-none" style="width:90%;margin-left:auto; margin-right:auto;">
                <div class="alert alert-info" role="alert">
                    <p > Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x" ></i> </p>
                </div>
            </div>
            <table class="table table-striped table-responsive-lg ">
                <thead class="capsalera">
                  <tr>
                    <th scope="col">Posició</th>
                    <th scope="col">Foto</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Gols</th>
                    <th scope="col">Equip</th> 
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="jugador" items="${jugadors}" varStatus="vs" >   
                    <sec:authorize access="!hasAnyRole('ROLE_RESP')">
                    <tr class="fila_equips"  onclick="document.location = '<%=request.getContextPath()%>/jugadors/jugador?idJugador=${jugador.idJugador}';">
                    </sec:authorize>
                        <td>${vs.index+1}</td>
                        <td><i class="fas fa-user fa-2x"></i></td>
                        <td>${jugador.nom} ${jugador.cognom}</td>
                        <td>${jugador.gols}</td>
                        <td>${jugador.equip.nom}</td>
                    </tr> 
                    </c:forEach> 
                </tbody>                
            </table>
            <br/>            
        </div>
    </div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
</body>
</html>

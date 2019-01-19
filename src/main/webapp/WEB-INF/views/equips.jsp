<%-- 
    Document   : userss
    Created on : 27/10/2018, 11:58:18
    Author     : Cristian, Jordi i Marc
--%>
<head>
    <%@include file="/templates/cdn.jsp" %>    
    <title>Classificació</title>
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
                    <h3 style="text-align: right;"> Llistat d'equips </h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/><br/>
            <div class="d-lg-none" style="width:90%;margin-left:auto; margin-right:auto;">
                <div class="alert alert-info" role="alert">
                    <p > Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x" ></i> </p>
                </div>
            </div>
            <table class="table table-striped table-responsive-lg">
                <thead class="capsalera">
                    <tr>
                        <th scope="col">Posició</th>
                        <th scope="col">Escut</th>
                        <th scope="col">Nom</th>
                        <th scope="col">Punts</th>
                        <th scope="col">PG</th>
                        <th scope="col">PE</th>
                        <th scope="col">PP</th>
                        <th scope="col">Gols Favor</th>
                        <th scope="col">Gols Contra</th>
                        <th scope="col">T. Grogues</th>
                        <th scope="col">T. Vermelles</th>
                    </tr>
                </thead>
                <tbody>
                
                <c:forEach var="equip" items="${equips}" varStatus="vs">
                    <tr class="fila_equips "  onclick="document.location = '<%=request.getContextPath()%>/equips/equip?idEquip=${equip.idEquip}';">
                        <td>${vs.index+1}</td>
                        <td><i class="fas fa-shield-alt fa-2x"></i></td>
                        <th scope="row"><span class="tipsoEquips tipso_style" data-tipso="${equip.nom}">${equip.nom}<span></th>
                        <td>${equip.punts}</td>
                        <td>${equip.partitsGuanyats}</td>
                        <td>${equip.partitsEmpatats}</td>
                        <td>${equip.partitsPerduts}</td>
                        <td>${equip.golsFavor}</td>
                        <td>${equip.golsContra}</td>
                        <td>${equip.targetesGrogues}</td>
                        <td>${equip.targetesVermelles}</td>  
                    </tr>
                </c:forEach> 
                </tbody>
            <!-- END Modal -->
            </table>
<br>
</div>
</div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
</body>
</html>
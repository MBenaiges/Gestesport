<%-- 
    Document   : panellResponsable
    Created on : 25/11/2018, 15:13:46
    Author     : Cristian, Jordi i Marc
--%>

<head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Panell de responsable d'equip</title>
    </head>
    <body>
    <%@include file="/templates/header.jsp" %>
    <div class="visible">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-3 col-md-5 col-xs-6">
                    <a href="<%=request.getContextPath()%>">
                        <img src="<%=request.getContextPath()%>/resources/img/logotip_fosc.png" class="img-responsive logotip" />
                    </a>
                    <br/><br/>
                </div>
                <div class="col-lg-9 col-md-7 col-xs-6">
                    <br/><br/>
                    <h3 style="text-align: right;"> Benvingut, ${usuari.username}</h3> 
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>
            <c:choose>
                <c:when test="${not empty senseEquip}">
                    <center>
                        <a class="boto_panell missatgeNoEquip" href="<spring:url value= '/equips/addEquip?userID=${usuari.userID}' />" 
                           role="button" aria-haspopup="true" aria-expanded="false">Nou Equip</a>
                    </center>
                </c:when>
                <c:otherwise>
                    
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-xs-12" style="text-align: center;">
                            <h3 style="text-decoration: underline;"><i class="fas fa-shield-alt"></i>Plantilla del ${equip.nom}</h3><br/><br/>
                        </div>
                    </div>
                    <c:choose>
                        <c:when test="${not empty senseJugadors}">
                            <a class="boto_panell missatgeNoJugadors" style="text-align: center;" href="<spring:url value= '/jugadors/addJugador?idEquip=${equip.idEquip}' />" role="button" aria-haspopup="true" aria-expanded="false">Afegir Jugador</a>
                        </c:when>
                        <c:otherwise>
                            <table class="table table-striped table-responsive-lg ">
                                <thead class="capsalera">
                                    <tr>
                                        <th scope="col">Foto</th>
                                        <th scope="col">Nom</th>
                                        <th scope="col">Cognom</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${jugadors}" var="jugador">
                                        <tr>
                                            <td><i class="fas fa-user"></i></td>
                                            <td>${jugador.nom}</td>
                                            <td>${jugador.cognom}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <br/>
                            <br/>
                            <center>
                                <a class="boto2" href="<spring:url value= '/jugadors/addJugador?idEquip=${equip.idEquip}' />" role="button" aria-haspopup="true" aria-expanded="false">Afegir Jugador</a>
                            </center>
                            
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
<script>
$( document ).ready(function() {
    if ($(".missatgeNoEquip").length) {
        iziToast.info({position: "center",icon: 'fa fa-info-circle', title: 'Comencem!', message: "Encara no tens equip?? Registra'l amb el següent botó!!"});
    }
    if ($(".missatgeNoJugadors").length) {
        iziToast.info({position: "center",icon: 'fa fa-info-circle', title: 'Comencem!', message: "Encara no tens jugadors?? Registra'ls per poder competir amb el següent botó!!"});
    }
});    
</script>
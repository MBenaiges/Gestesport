<%-- 
    Document   : userss
    Created on : 27/10/2018, 11:58:18
    Author     : Cristian, Jordi i Marc
--%>
    <head>
        <%@include file="/templates/cdn.jsp" %>
       <title>Detall Equip</title>
    </head>
    <body>
        
    <%@include file="/templates/header.jsp" %>
    <!-- Contingut -->
    <div class="visible">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-3">
                    <a href="<%=request.getContextPath()%>/gestesport">
                        <img src="<%=request.getContextPath()%>/resources/img/logotip_fosc.png" class="img-responsive logotip" />
                    </a>
                </div>
                <div class="col-lg-9">
                    <br/><br/>
                    <h3 style="text-align: right;"> Informació del ${equip.nom} </h3>
                    <br/><br/>
                </div>
            </div><hr/>
            <br/><br/>
            <div class="row">
                <div class="col-lg-3 col-md-4"></div>
                <div class="col-lg-6 col-md-4 col-xs-12">
                    <div class="caixaInfoEquip">
                        <p><i class="fas fa-user-tie "></i> <b>Responsable:</b> ${equip.equipUser.username}</p>
                        <p><i class="fas fa-chart-line" ></i> <b>Punts:</b> ${equip.punts}</p>
                        <p><i class="fas fa-check"></i> <b>Partits Guanyats:</b> ${equip.partitsGuanyats}</p>
                        <p><i class="fas fa-equals"></i> <b>Partits Empatats:</b> ${equip.partitsEmpatats}</p>
                        <p><i class="fas fa-times"></i> <b>Partits Perduts</b> ${equip.partitsPerduts}</p>
                        <p><i class="fas fa-futbol " style="color:#6fca6f;"></i> <b>Gols a favor:</b> ${equip.golsFavor}</p>
                        <p><i class="fas fa-futbol " style="color:red;"></i> <b>Gols a contra:</b> ${equip.golsContra}</p>
                        <p><i class="fab fa-creative-commons-share"  style="color:yellow;"></i> <b>Targetes Grogues:</b> ${equip.targetesGrogues}</p>
                        <p><i class="fab fa-creative-commons-share " style="color:red;"></i> <b>Targetes Vermelles:</b> ${equip.targetesVermelles}</p>
                        <h4 style="text-align:center;margin-top:20px;">Llistat de jugadors</h4>
                        <hr class="hrFitxa"/>                        
                        <div class="row">
                            <c:forEach var="jugador" items="${jugadors}" > 
                                <div class="col-lg-6">
                                    <p><i class="fas fa-user fa-2x"></i>
                                    <a  style="color:#7a9aad;"  href="<spring:url value='/jugadors/jugador?idJugador=${jugador.idJugador}' />">
                                        ${jugador.nom} ${jugador.cognom}</a></p>
                                </div>
                            </c:forEach>
                        </div><hr class="hrFitxa"/>   
                        <div class="row" style="margin-top:50px;">
                            <div class="col-12" style="text-align:center;">
                                <a href="<spring:url value="/equips" />" class="boto2">Tornar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4"></div>
            </div>
        </div>
    </div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>
<script>
     $('#warningClick').click(function () {
      iziToast.warning({position: "bottomLeft",icon: 'fa fa-exclamation', title: 'Acció denegada!', message: "No es pot eliminar un equip que té jugadors. Elimina primer els jugadors d'aquest equip"});
    });
</script>

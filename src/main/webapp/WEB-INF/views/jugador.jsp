<%-- 
    Document   : users
    Created on : 10/11/2018, 10:26:33
    Author     : Cristian, Jordi i Marc
--%>
<head>
    <%@include file="/templates/cdn.jsp" %>
    <title>Detall de Jugador</title>
</head>
<body>
    <%@include file="/templates/header.jsp" %>  
    
    <!-- Contingut -->
    <div class="visible">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <a href="/gestesport"><img src="../resources/img/logotip_fosc.png" class="img-responsive logotip" /></a><br/><br>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <br/><br><h3 style="text-align: right;">Informació de ${jugador.nom}</h3><br/><br/>
                </div>
            </div>
            <hr/>
            <br/><br>
            <section class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4"></div>
                    <div class="col-lg-6 col-md-4 col-xs-12">
                        <div class="caixaInfoEquip">                            
                            <p style="text-align:right;"><i class="fas fa-user-tie fa-10x"></i></p>
                            <p><i class="fas fa-address-card"></i> <b>Cognom:</b> ${jugador.cognom}</p>
                            <p><i class="fas fa-users"></i> <b>Equip: </b>${jugador.equip.nom}</p>
                            <p><i class="fas fa-futbol " style="color:#6fca6f;"></i> <b>Gols:</b> ${jugador.gols}</p>
                            <p><i class="fab fa-creative-commons-share"  style="color:yellow;"></i> <b>Targetes Grogues:</b> ${jugador.targetesGrogues}</p>
                            <p><i class="fab fa-creative-commons-share " style="color:red;"></i> <b>Targetes Vermelles:</b> ${jugador.targetesVermelles}</p>
                            <div class="row" style="margin-top:50px;">
                                <div class="col-12" style="text-align:center;">
                                    <a href="<spring:url value="/jugadors" />" class="boto2">Tornar</a>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4"></div>
                </div>
            </section>
        </div>
    </div>
    <!-- END Contingut --> 
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>
<script>
    $( document ).ready(function() {
        $('#idJugador').attr('readonly', true);
        $('#idEquip').attr('readonly', true);
    });
    
    
</script>
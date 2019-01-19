<%-- 
    Document   : jugador
    Created on : 25/11/2018, 18:15:50
    Author     : Cristian, Jordi i Marc
--%>

<%@include file="/templates/cdn.jsp" %>
<title>Afegir Jugador</title>
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
                    <br/><br><h3 style="text-align: right;">Afegir Jugador</h3><br/><br/>
                </div>
            </div>
            <hr/>
            <br/><br>
            <section class="container">
                <div class="caixaJugador col-lg-6 col-md-8 col-xs-12" >
                    <form:form modelAttribute="jugador" class="form-horizontal" action="addJugador">
                    <fieldset>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-lg-12" for="idJugador">
                                    <b>DNI Jugador: </b>
                                </label>
                                <div class="col-lg-12">
                                    <form:input id="idJugador" path="idJugador" type="text" class="form:input-large" style="width:100%;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-lg-12" for="nom">
                                    <b>Nom:</b>
                                </label>
                                <div class="col-lg-12">
                                    <form:input id="nom" path="nom" type="text" class="form:input-large" style="width:100%;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label class="control-label col-lg-12" for="cognom">
                                    <b>Cognoms:</b>
                                </label>
                                <div class="col-lg-12">
                                    <form:input id="cognom" path="cognom" type="text" class="form:input-large"
                                                style="width:100%;"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <form:hidden id="equip" path="equip.idEquip" />                                    
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12" style="text-align: center; margin-top:70px;">
                                <input type="submit" id="btnAdd" class="boto2" value ="Guardar"/>
                            </div>
                        </div>
                    </fieldset>
                </form:form>
                </div>
                <div class="col-lg-3 col-md-2"></div>
        </section>
        </div>
    </div>
    <!-- END Contingut --> 
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>

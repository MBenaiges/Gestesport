<%-- 
    Document   : users
    Created on : 10/11/2018, 10:26:33
    Author     : Cristian, Jordi i Marc
--%>
<head>
    <%@include file="/templates/cdn.jsp" %>
    <title>Detall del Partit</title>
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
                    <h3 style="text-align: right;">  Acta </h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>            
            <!-- Vista per a l'arbitre -->
            <sec:authorize access="hasRole('ROLE_ARB')">
                <c:choose>
                <c:when test="${not partit.jugat}">
                <section class="container">
                    <div id="content">
                        <div class="contador container">
                            <div class="times row crono-width">                                
                                <div class="minute-time time text-center col-md-6">
                                    <span id="minute">00</span> <i>minuts</i>
                                </div>
                                <div class="second-time time text-center col-md-6">
                                    <span id="second">00</span> <i>segons</i>
                                </div>
                            </div>
                            <div class="row crono-width">
                                <div class="start-btn col-md-6 text-center btn-crono">
                                    <div class="start">Comença el partit!</div>
                                </div>
                                <div class="stop-btn col-md-6 text-center btn-crono">
                                    <div class="stop">Finalitza el partit!</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br/><br/>
                    <table class="table table-striped table-responsive-lg ">
                <thead class="capsalera">
                    <tr style="font-size:40px;">  
                        <th scope="col"><i class="fas fa-shield-alt fa-2x"></i>${partit.equipA.nom}<br/><br/></th>
                        <th scope="col" style="font-size:60px;">${partit.equipA.golsFavor} - ${partit.equipB.golsFavor}</th>

                        <th scope="col">${partit.equipB.nom}<i class="fas fa-shield-alt fa-2x"></i><br/><br/></th>
                    </tr>
                </thead>
            </table><br/><br/>
                    <h3>Informació a guardar</h3>
                    <hr/>
                    <form action="login" method="post">
                        <div class="form-group row">
                            <label for="usuari" class="col-sm-4 col-form-label col-form-label-lg">Tipus incidència:</label>
                            <div class="col-sm-8">
                                <div class="input-group-prepend">
                                    <select name="incidencia" form="incidenciaForm">
                                        <option value="gol">Gol</option>
                                        <option value="targGroga">Targeta Groga</option>
                                        <option value="targVermella">Targeta Vermella</option>
                                    </select>
                                </div>
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="contrasenya" class="col-sm-4 col-form-label-lg col-form-label-lg">Jugador:</label>
                            <div class="col-sm-8">
                                <div class="input-group-prepend">
                                    <select name="incidencia" form="incidenciaForm">
                                        <option value="gol">Gol</option>
                                        <option value="targGroga">Targeta Groga</option>
                                        <option value="targVermella">Targeta Vermella</option>
                                    </select>
                                </div>
                             </div>
                        </div>
                    </form>
                    <div class="contador container">
                        <div class="row crono-width">
                            <div class="guarda-btn col-lg-12 text-center btn-crono">
                                <div class="guarda">Afegeix la incidència!</div>
                            </div>
                        </div>
                    </div>
                </section>
                </c:when>
                </c:choose>
            </sec:authorize>
            <sec:authorize access="!hasRole('ROLE_ARB')">
            <!-- Vista per a la resta d'usuaris -->
            
                    <section class="container">
                    <div class="d-md-none" style="width:90%;margin-left:auto; margin-right:auto;">
                        <div class="alert alert-info" role="alert">
                            <p> Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x"></i> </p>
                        </div>
                    </div>           
                    <table class="table table-striped table-responsive-lg ">
                        <thead class="capsalera">
                            <tr style="font-size:40px;">  
                                <th scope="col"><i class="fas fa-shield-alt fa-2x"></i>${partit.equipA.nom}<br/><br/></th>
                                <th scope="col" style="font-size:60px;">${partit.equipA.golsFavor} - ${partit.equipB.golsFavor}</th>
                                
                                <th scope="col">${partit.equipB.nom}<i class="fas fa-shield-alt fa-2x"></i><br/><br/></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${partit.jugat}">
                                <tr>
                                    <td></td>
                                    <td>Targetes Grogues</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Targetes Vermelles</td>
                                    <td></td>
                                </tr>
                                </c:when>
                            </c:choose>
                        </tbody>
                    </table><br/><br/>
                    <c:choose>
                        <c:when test="${partit.jugat}">
                            <!-- Informació a mostrar si el partit s'ha jugat -->
                            <h3>Incidències del partit</h3>
                            <hr/>
                            <div class="d-md-none" style="width:90%;margin-left:auto; margin-right:auto;">
                                <div class="alert alert-info" role="alert">
                                    <p> Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x"></i> </p>
                                </div>
                            </div>           
                            <table class="table table-striped table-responsive-lg " style="width:100%;">
                                <thead class="capsalera">
                                    <tr>                    
                                        <th scope="col">Incidència</th>
                                        <th scope="col">Jugador</th>
                                        <th scope="col">Equip</th>
                                        <th scope="col">Minut</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Incidència exemple</td>
                                        <td>Nom jugador</td>
                                        <td>Equip jugador</td>
                                        <td>Minut</td>
                                    </tr>                           
                                </tbody>                                                
                            </table>
                            <div class="row" style="margin-top:70px;">
                        </c:when>
                        <c:otherwise>
                            <p style="font-size:18px;">El partit encara s'ha de jugar</p>
                        </c:otherwise>
                    </c:choose>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_ARB')">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
                        <p><a href="<spring:url value="/panellArbitre" />" class="boto2">Tornar</a></p>
                    </div>
                    </section>
                        </sec:authorize>
                    <sec:authorize access="!hasRole('ROLE_ARB')">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
                        <p><a href="<spring:url value="/partits" />" class="boto2">Tornar</a></p>
                    </div>
                    </section>
                    </sec:authorize>
                
        </div>
    </div>
    <!-- END Contingut --> 
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>

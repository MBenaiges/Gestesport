<!--
  Author: Cristian, Jordi i Marc
  Date: 27/10/2018
  Version: 0.1
-->
    <head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Portada</title>
    </head>
<body>
   <%@include file="/templates/header.jsp" %>
    
    <div id="parallax-back">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-xs-12">
                    <div class="nomEmpresa">
                        <h1>GESTESPORT</h1>
                        <ul>
                            <li><i class="fas fa-heart fa-2x" style="color: #7e97a6;"></i> Disfruta de l'esport</li>
                            <li><i class="fas fa-question-circle fa-2x" style="color: #7e97a6;"></i> Informat de la jornada</li>
                            <li><i class="fas fa-tshirt fa-2x" style="color: #7e97a6;"></i> Segueix el teu equip favorit</li>
                            <li><i class="fas fa-cogs fa-2x" style="color: #7e97a6;"></i> Tecnologia i esport units</li>
                        </ul>
                        <hr />
                        <div class="d-none d-sm-block">
                            <a href="#saberMes" class="btn btn-primary btn-lg active saberMes log_in" role="button" aria-pressed="true">Saber més..?</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 d-none d-sm-block"></div>
            </div>
        </div>
    </div>
    <div class="pagina">
        <div class="seccio1" id="saberMes">
            <div class="contingut">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <center style="margin-bottom:50px;">
                            <a href="#oferim" class="element-rodona"> <i class="fas fa-concierge-bell"></i></a>
                            <h3>Què Oferim?</h3>
                        </center>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <center style="margin-bottom:50px;">
                            <a href="#aQui" class="element-rodona"> <i class="fas fa-question-circle"></i></a>
                            <h3>Per a qui <br/> destinat?</h3>
                        </center>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <center style="margin-bottom:50px;">
                            <a href="#perQue" class="element-rodona"> <i class="fas fa-check-circle"></i></a>
                            <h3>Per què <br />gestesport? </h3>
                        </center>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <center>
                            <a href="#negoci" class="element-rodona"> <i class="fas fa-briefcase"></i></a>
                            <h3>Model de <br />negoci</h3>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <div class="seccio2" id="oferim">
            <div class="contingut">
                <div class="row">
                    <div class="col-lg-1 col-md-1 d-none d-sm-block"></div>
                    <div class="col-lg-5 col-md-5  d-none d-sm-block">
                        <ul>
                            <li>Aplicació web</li>
                            <li>Autogestió d'equips</li>
                            <li>Actes de partits</li>
                            <li>Senzill d'utilizar</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-5 col-xs-12">
                        <h2 style="text-align:right;">OFERIM</h2>
                        <img src="<%=request.getContextPath()%>/resources/img/oferim.png" class="img-fluid float-right" width="500" />
                    </div>
                    <div class="col-lg-1 col-md-1 d-none d-sm-block"></div>
                    <div class="d-block d-sm-none col-xs-12">
                        <ul>
                            <li>Aplicació web</li>
                            <li>Autogestió d'equips</li>
                            <li>Actes de partits 2.0</li>
                            <li>Senzill d'utilizar</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="seccio1" id="aQui">
            <div class="contingut">
                <div class="row">
                    <div class="col-lg-1 col-md-1 d-none d-sm-block"></div>
                    <div class="col-lg-5 col-md-5 col-xs-12">
                        <h2>PER A QUI?</h2>
                        <img src="<%=request.getContextPath()%>/resources/img/aQui.jpg" class="img-fluid" width="500" />
                    </div>
                    <div class="col-lg-5 col-md-5  d-sm-block">
                        <ul>
                            <li>Treballem per a petites empreses</li>
                            <li>Ajuntaments que vulguin crear lligues locals</li>
                            <li>Federacions de futbol sala</li>
                            <li>També per a qualsevol que vulgui organitzar una competició</li>
                        </ul>
                    </div>

                    <div class="col-lg-1 col-md-1 d-sm-block"></div>

                </div>
            </div>
        </div>
        <div class="seccio2" id="perQue">
            <div class="contingut">
                <div class="row">
                    <div class="col-lg-1 d-none d-sm-block"></div>
                    <div class="col-lg-5 col-md-5  d-none d-sm-block">
                        <ul>
                            <li>Acta 2.0</li>
                            <li>Actualització d'incidents en directe</li>
                            <li>Estadístiques de la competició</li>
                            <li>Fàcil seguiment per a tothom des de la nostra web</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-5 col-xs-12">
                        <h2 style="text-align:right;">PER QUÈ?</h2>
                        <img src="<%=request.getContextPath()%>/resources/img/perque.jpg" class="img-fluid float-right" width="500" />
                    </div>
                    <div class="col-lg-1 col-md-1 d-none d-sm-block"></div>
                    <div class="d-block d-sm-none col-xs-12">
                        <ul>
                            <li>Acta 2.0</li>
                            <li>Actualització d'incidents en directe</li>
                            <li>Estadístiques de la competició</li>
                            <li>Fàcil seguiment per a tothom des de la nostra web</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="seccio1" id="negoci">
            <div class="contingut">
                <div class="row">
                    <div class="col-lg-1 col-md-1 d-none d-sm-block"></div>
                    <div class="col-lg-5 col-md-5 col-xs-12">
                        <h2>NEGOCI</h2>
                        <img src="<%=request.getContextPath()%>/resources/img/negoci.jpg" class="img-fluid" width="500" />
                    </div>
                    <div class="col-lg-5 col-md-5  d-sm-block">
                        <ul>
                            <li>Podem cobrar per inscripcions d'equips o per jugadors</li>
                            <li>Preus de llicència d'ús</li>
                            <li>Tarifes anuals</li>
                            <li>Possibilitat d'anunciar-se a la nostra web</li>
                        </ul>
                    </div>

                    <div class="col-lg-1 col-md-1 d-sm-block"></div>

                </div>
            </div>
        </div>
        <%@include file="/templates/footer.jsp" %>
    </div>
</body>
</html>
<script>
/* SCROLL TO TOP */
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction();};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
/* END SCROLL TO TOP */
</script>
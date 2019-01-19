<%-- 
    Document   : login
    Created on : 01/11/2018, 13:34:45
    Author     : Cristian, Jordi i Marc
--%>
<head>
    <%@include file="/templates/cdn.jsp" %>    
    <title>Log in</title>
</head>
<body>
    <%@include file="/templates/header.jsp" %>
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
                    <h3 style="text-align: right;"> Calendari</h3>
                    <br/><br/>
                </div>
            </div>
            <hr/>
            <br/>
            <br/>
            <div class="d-lg-none" style="width:90%;margin-left:auto; margin-right:auto;">
                <div class="alert alert-info" role="alert">
                    <p> Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x"></i> </p>
                </div>
            </div>           
            <table class="table table-striped table-responsive-lg ">
                <thead class="capsalera">
                  <tr>                    
                    <th scope="col">Local</th>
                    <th scope="col">Resultat</th>
                    <th scope="col">Visitant</th>
                    <th scope="col">Data</th>
                    <th scope="col">Àrbitre</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="partit" items="${partits}">   
                    <tr class="fila_partits "  onclick="document.location = '<%=request.getContextPath()%>/partits/partit?idPartit=${partit.idPartit}';">
                        <td>${partit.equipA.nom}</td>
                        <td>-</td>
                        <td>${partit.equipB.nom}</td>
                        <td>${partit.dataPartit}</td>
                        <td>${partit.arbitre.fullname}</td>
                </c:forEach> 
                </tbody>
            </table>
        </div>
    </div>
    <%@include file="/templates/footer.jsp" %>
</body>
</html>
<script>                        
    $('.warningClick').click(function () {
        iziToast.warning({position: "center",icon: 'fa fa-exclamation', title: 'Acció denegada!', message: "Aquest partit encara no s'ha jugat"});
    });
</script>
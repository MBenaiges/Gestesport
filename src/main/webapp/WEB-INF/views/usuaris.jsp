<%-- 
    Document   : userss
    Created on : 10/11/2018, 10:26:33
    Author     : Cristian, Jordi i Marc
--%>

<head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Usuaris</title>
    </head>
    <body>
    <%@include file="/templates/header.jsp" %>
    <!-- Contingut -->
    <div class="visible">
        <div class="contingut">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <a href="/gestesport"><img src="resources/img/logotip_fosc.png" class="img-responsive logotip" /></a><br/><br/>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-6">
                    <br/><br/><h3 style="text-align: right;"> Llista d'usuaris </h3><br/><br/>
                </div>
            </div>
            <hr/>
            <br/><br/>
            <div class="d-lg-none" style="width:90%;margin-left:auto; margin-right:auto;">
                <div class="alert alert-info" role="alert">
                    <p > Mou la pantalla a un costat i a l'altre per veure el total de la taula <i class="fas fa-hand-point-up faa-horizontal animated fa-2x" ></i> </p>
                </div>
            </div>
            <table class="table table-striped table-responsive-lg ">
                <thead class="capsalera">
                  <tr>
                    <th scope="col">Foto</th>
                    <th scope="col">Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Rol</th>
                    <th scope="col">Contrasenya</th>
                    <th scope="col">Edita</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${usuaris}" var="users">
                    <tr>
                      <td><i class="fas fa-user fa-2x"></i></td>
                      <td>${users.userID}</td>
                      <td>${users.username}</td>
                      <td>${users.fullname}</td>
                      <td>${users.userRole.roleDesc}</td>
                      <td>${users.password}</td>
                      <td><a href="<spring:url value='/usuaris/usuari?userID=${users.userID}' />" class="boto2 ">Editar usuari</a></td>
                    </tr>
                </c:forEach> 
                </tbody>
            </table>
            <br/>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <center>
                <a href="<spring:url value='/usuaris/addUsuari' />" class="boto2"  role="button" aria-haspopup="true" aria-expanded="false">Nou Usuari</a>                
            </center>
            </sec:authorize>
        </div>
    </div>
    <!-- END Contingut -->
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : header
    Created on : 10/11/2018, 10:26:42
    Author     : Cristian, Jordi i Marc
--%>
<!DOCTYPE html>
<html>
    <body>
    <!-- Header -->
    <a id="scrolltop" title="Go to top"><i class="fas fa-arrow-circle-up fa-3x"></i></a>
    <div class="container-fluid">
        <div class="header">
            <nav class="navbar navbar-expand-md fixed-top navbar-dark" >
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menuPrincipal" aria-controls="menuPrincipal" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="menuPrincipal">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item"><a href="<%=request.getContextPath()%>/equips" class="nav-link">Classificació d'equips</a></li>
                        <li class="nav-item"><a href="<%=request.getContextPath()%>/jugadors" class="nav-link">Classificació golejadors</a></li>
                        <li class="nav-item"><a href="<%=request.getContextPath()%>/partits" class="nav-link">Calendari</a></li>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <li class="nav-item"><a href="<%=request.getContextPath()%>/usuaris" class="nav-link">Llista d'usuaris</a></li>
                            <li class="nav-item"><a href="<%=request.getContextPath()%>/panellAdmin" class="nav-link">Panell Administrador</a></li>  
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_RESP')">
                            <li class="nav-item"><a href="<%=request.getContextPath()%>/panellResponsable" class="nav-link">Panell Responsable</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_ARB')">
                            <li class="nav-item"><a href="<%=request.getContextPath()%>/panellArbitre" class="nav-link">Panell Arbitre</a></li>
                        </sec:authorize>
                    </ul>
                </div>
                <sec:authorize access="isAuthenticated()">
                    <c:url value="/j_spring_security_logout" var="logoutUrl" />
                    <a class="btn btn-primary btn-lg active log_in" href="${logoutUrl}">Sortir <i class="fas fa-running"></i></a>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <a class="btn btn-primary btn-lg active log_in" role="button" aria-pressed="true" href="<%=request.getContextPath()%>/login" >Entrar <i class="fas fa-male"></i></a>
                </sec:authorize>
            </nav>
        </div>
    </div>
    <!-- END Header -->
    </body>
</html>
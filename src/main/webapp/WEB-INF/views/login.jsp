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
            <a href="<%=request.getContextPath()%>">
                <img src="<%=request.getContextPath()%>/resources/img/logotip_fosc.png" class="mx-auto d-block img-responsive logotip" />
            </a>
            <br/>
            <hr/>
            <br/><br/>
            <div class="caixaLogin">
                <form action="login" method="post">
                    <div class="form-group row">
                        <label for="usuari" class="col-sm-4 col-form-label col-form-label-lg">Indentificador d'usuaris</label>
                        <div class="col-sm-8">
                            <div class="input-group-prepend">
                                <input type="text" class=" form-control form-control-lg" id="usuari" name="usuari" placeholder="Escriu aqui el teu identificador...">
                                <div class="input-group-text"><i class="fas fa-user"></i></div>
                            </div>
                         </div>
                    </div>
                    <div class="form-group row">
                        <label for="contrasenya" class="col-sm-4 col-form-label-lg col-form-label-lg">Contrasenya</label>
                        <div class="col-sm-8">
                            <div class="input-group-prepend">
                                <input type="password" class="form-control form-control-lg" name="contrasenya" id="contrasenya" placeholder="Escriu aqui la contrasenya...">
                                <div class="input-group-text"><i class="fas fa-key"></i></div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2 log_in float-right submit" >Entrar</button>
                </form>
            </div>
        </div>
    </div>
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>

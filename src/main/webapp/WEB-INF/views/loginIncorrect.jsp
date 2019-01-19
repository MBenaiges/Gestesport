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
                    <div class="alert alert-danger" role="alert" style="text-align:center;">
                        <p><i class="fas fa-exclamation faa-flash animated"></i> L'usuari o contrasenya no són correctes.
                            <br/>Si us plau, torna-ho a provar, fent click al següent botó</p>
                        <p><i class="fas fa-arrow-down fa-2x animated faa-bounce"></i></p>
                        
                    </div>
                    <p style="text-align:center;"><a href="<%=request.getContextPath()%>/login" class="boto2">Tornar a provar-ho</a></p>
                </form>
            </div>
        </div>
    </div>
    <%@include file="/templates/footer.jsp" %>
    </body>
</html>
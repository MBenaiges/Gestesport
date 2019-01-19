<%-- 
    Document   : users
    Created on : 10/11/2018, 10:26:33
    Author     : Cristian, Jordi i Marc
--%>
<head>
        <%@include file="/templates/cdn.jsp" %>
        <title>Detall d'users</title>
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
                    <br/><br><h3 style="text-align: right;">Informació d'usuaris</h3><br/><br/>
                </div>
            </div>
            <hr/>
            <br/><br>
            <section class="container">
                <div class="caixausers col-lg-6 col-md-8 col-xs-12" >
                    <form:form modelAttribute="usuari" class="form-horizontal" action="addUsuari">
                        <fieldset>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-lg-12" for="userID">
                                        <b>userID: </b>
                                    </label>
                                    <div class="col-lg-12">
                                        <span class="tipsoEditarUsuari tipso_style" data-tipso="No es pot modificar aquesta informació"><form:input  id="userID" path="userID" type="text" class="form:input-large" style="width:100%;background-color:#bbb9b9;"/></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-lg-12" for="username">
                                        <b>Nom d'usuari:</b>
                                    </label>
                                    <div class="col-lg-12">
                                        <form:input id="username" path="username" type="text" class="form:input-large" style="width:100%;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-lg-12" for="fullname">
                                        <b>Nom complert:</b>
                                    </label>
                                    <div class="col-lg-12">
                                        <form:input id="fullname" path="fullname" type="text" class="form:input-large" style="width:100%;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-lg-12" for="roleID">
                                        <b>Rol:</b>
                                    </label>
                                    <div class="col-lg-12">
                                        <form:select id="userRole" path="userRole.roleID">
                                            <form:option value="0" label="--- Selecciona rol ---"/>
                                            <form:options items="${roles}" itemValue="roleID" itemLabel="roleDesc"/>
                                        </form:select>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label class="control-label col-lg-12" for="password" >
                                        <b>Contrasenya:</b>
                                    </label>
                                    <div class="col-lg-12">
                                        <form:input id="password" path="password" type="password" style="width:100%;"/>
                                    </div>
                                </div>
                            </div>                                    
                            <div class="form-group" style="margin-top:70px;">
                                <div class="col-lg-12" style="text-align: center;">
                                    <input type="submit" id="btnAdd" class="boto2" value ="Guardar"/>                                
                                </div                                                                                         
                            </div>     <hr/>                                                                                                                         
                        </fieldset>
                    </form:form>
                    
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
                            <p><a href="<spring:url value="/usuaris" />" class="boto2">Tornar</a></p>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
                            <a href="<spring:url value='/usuaris/deleteUsuari?userID=${usuari.userID}' />" value ="Eliminar" class="boto2" aria-haspopup="true" >Eliminar</a>                  
                        </div>
                    </div>
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
        $('#userID').attr('readonly', true);
    });
    
    
</script>
<%-- 
    Document   : index
    Created on : 1 de abr. de 2021, 05:41:43
    Author     : Angelo Marcio Sousa Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page 1 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <%if(session.getAttribute("session.username") == null) {%>
            <div style="color:red">
                Você precisa estar identificado para ter acesso a este conteúdo.
            </div>
        <%}else{%>
            <h2>PAGE 1</h2>
            <p>Página 1 (hum) do site de demonstração do HttpSession.</p>
            <footer 
            style="position: absolute; 
                   bottom: 0; 
                   width: 100%;
                   font-weight: bold;
                   background-color: #8284F0;">
            Angelo Marcio Sousa Santos // RA: 1290481923001
        </footer>
        <%} %>
        
        
    </body>
</html>

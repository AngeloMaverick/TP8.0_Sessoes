<%-- 
    Document   : index
    Created on : 1 de abr. de 2021, 03:55:47
    Author     : Angelo Marcio Sousa Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("name")!=null){
        application.setAttribute("name", request.getParameter("name"));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application - AttWebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>APPLICATION</h2>
        <%if(application.getAttribute("name")!=null){%>
            <div><%= application.getAttribute("name") %></div>
        <%} %>
        
        <form>
            Name : <input type='text' name='name'/>
            <input type='submit' name='set' value='Enviar'/>
        </form>
    </body>
</html>

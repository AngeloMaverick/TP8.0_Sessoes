<%-- 
    Document   : index
    Created on : 1 de abr. de 2021, 04:55:47
    Author     : Angelo Marcio Sousa Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("name")!=null){
        request.setAttribute("name", request.getParameter("name"));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request - AttWebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>REQUEST</h2>
        <%if(request.getAttribute("name")!=null){%>
            <div><%= request.getAttribute("name") %></div>
        <%} %>
        
        <form>
            Name : <input type='text' name='name'/>
            <input type='submit' name='set' value='Enviar'/>
        </form>
    </body>
</html>

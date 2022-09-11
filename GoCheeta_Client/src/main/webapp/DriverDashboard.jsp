<%-- 
    Document   : DriverDashboard
    Created on : Sep 12, 2022, 1:09:27 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
         <%
           out.print(session.getAttribute("driver_mobile"));
        %>
        
    </body>
</html>

<%@page import="java.sql.Driver"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService driverProxy = service.getNewWebServicePort();
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/GoCheeta_Client/Admin/controller/addDriver.jsp" method="post">
            
            <label for="fname">Your Name</label><br>
            <input type="text" id="d_name" name="d_name" placeholder="Name"><br>

            <label for="lname">Email</label><br>
            <input type="text" id="d_email" name="d_email" placeholder="Email"><br>

            <label for="mobile">Mobile</label><br>
            <input type="text" id="d_mobile" name="d_mobile" placeholder="Mobile"><br>

            <label for="password">Password</label><br>
            <input type="text" id="d_password" name="d_password" placeholder="Password"><br>

            <label for="password">Branch</label><br>
            <input type="text" id="branch" name="branch" placeholder="branch"><br>
            
            <label for="password">Option</label><br>
            <input type="text" id="time_type" name="time_type" placeholder="time_type"><br>
            <br>
            
            <input type="submit" value="Sign Up">
        </form>

        
        
        
    </body>
</html>
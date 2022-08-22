<%-- 
    Document   : AddFeedback
    Created on : Aug 22, 2022, 7:56:36 PM
    Author     : HP
--%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.Feedback"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int order_id = Integer.parseInt(request.getParameter("order_id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    Feedback feedback = customerProxy.getFeedbackbyId(order_id);   
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <form action="/GoCheeta_Client/User/controller/addFeedback.jsp" method="post">

            <label for="fname">Subject</label><br>
            <input type="text" id="subject" name="subject" placeholder="Subject" required><br>

            <label for="lname">Description</label><br>
            <textarea type="text" id="description" name="description" placeholder="description" ></textarea><br>

            <input type="text" id="order_id" name="order_id" placeholder="order_id" ><br>
            <input type="hidden" name="id" value="<% out.print(feedback.getOrderId());%>"<br>

            <br>

            <input type="submit" value="Submit">
        </form>
    </body>
</html>
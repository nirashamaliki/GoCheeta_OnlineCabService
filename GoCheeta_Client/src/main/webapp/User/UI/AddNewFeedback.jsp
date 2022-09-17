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

<html>
    <head>
        <html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">

	<title style="text-align: center;">Add Feedback</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    </head>
    <body>
         <div class="container" style="width: 450px; height:500px;">
            <form action="/GoCheeta_Client/User/controller/addFeedback.jsp" method="post" class="login-email">

           <br><br>
           <div class="input-group">
             <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">FeedBack</p>
           </div>
            <br>  
            <div class="input-group">
               <input type="text" id="subject" name="subject" placeholder="Subject" required><br>
            </div>
            <div class="input-group">
               <textarea type="text" id="description" name="description" placeholder="description" class="input-group"style="width: 100%;
    
    border: 2px solid #e7e7e7;
    padding: 10px 15px;
    font-size: 0.9rem;
    border-radius: 30px;
    background: transparent;
    outline: none;
    transition: .3s;"></textarea><br>
            </div>
            
            <input type="hidden" id="order_id" name="order_id" value="<% out.print(request.getParameter("id")); %>" ><br>
            <br>
           <div class="input-group"> 
            <input type="submit" value="Confirm"class="btn">
           </div>
        </form>
    </body>
</html>
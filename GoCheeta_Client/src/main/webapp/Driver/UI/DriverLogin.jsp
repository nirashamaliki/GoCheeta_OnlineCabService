<%-- 
    Document   : DriverLogin
    Created on : Sep 12, 2022, 10:14:05 PM
    Author     : HP
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">

	<title style="text-align: center;">User Login</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        
        <title>User Login</title>
    </head>
    <body>

        <div class="container" style="width: 450px; height:480px;">
        <form action="/GoCheeta_Client/Driver/Function/loginDriver.jsp" method="post" class="login-email">

          <br><br>
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Sign In</p>
          <br>
          
            <div class="input-group">
            <input type="text" id="email" name="email" placeholder="Email Address" required><br>
            </div>
          
            <div class="input-group">
            <input type="password" id="password" name="password" placeholder="Your Password" required><br>
            </div>
          
            <br> <br>
        <div class="input-group">             
             <input type="submit" value="Sign In" class="btn">
          
        </div>   <br>

        </form>
        </form>
        </div>

        <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>  
    </body>
</html>

<%-- 
    Document   : DriverLogin
    Created on : Sep 12, 2022, 12:14:25 AM
    Author     : HP
--%>

<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
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
        
    <%
    int driver_mobile    = Integer.parseInt(request.getParameter("driver_mobile"));
    String password      = request.getParameter("password");
    
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService customerProxy = service.getDriverWebServicePort();
    
    
    Boolean loginCustomer = customerProxy.loginDriver(driver_mobile,password);
    
     if (loginCustomer == true) {

         if (String.valueOf(driver_mobile).equals("456123") && password.equals("456admin@")) 
         {
            session.setAttribute("email", driver_mobile);
            response.sendRedirect("/GoCheeta_Client/AdminDashboard.jsp");               
          }
           
      
        else
        {
          if (loginCustomer == true)
           {
            session.setAttribute("email",driver_mobile);
            response.sendRedirect("/GoCheeta_Client/DriverDashboard.jsp");    
            }
        }     

     }
    else{

          out.print("<script>alert('Login Unsuccessful.Try Again')</script>");
          //out.print("Login Unsuccessful");
    }

%>
        <div class="container" style="width: 450px; height:500px;">
        <form action="/GoCheeta_Client/Driver/UI/DriverLogin.jsp" method="post" class="login-email">

          <br><br>
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Sign In</p>
          <br>
          
          
            <div class="input-group">
            <input type="text" id="email" name="email" placeholder="Email Address" required><br>
            </div>
          
            <div class="input-group">
            <input type="password" id="password" name="password" placeholder="Your Password" required><br>
            </div>
          
            <br>
        <div class="input-group">             
             <input type="submit" value="Sign In" class="btn">
          
        </div>   <br>
              <p class="login-register-text" style="margin-top:-12px;text-align:center;">Don't have an account? <a href="/GoCheeta_Client/Driver/UI/DriverRegister.jsp">Register</a>.</p>  
             
        </form>
        </form>
        </div>

        
    </body>
</html>

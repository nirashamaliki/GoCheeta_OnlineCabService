<%-- 
    Document   : UserLogin
    Created on : Sep 4, 2022, 2:30:30 PM
    Author     : HP
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService customerProxy = service.getUserWebServicePort();
    
    Boolean loginAdmin = customerProxy.loginAdmin(email,password);
    Boolean loginCustomer = customerProxy.loginCustomer(email,password);
    
     if (loginCustomer == true) {

         if (email.equals ("admin@456")&& password.equals("456admin@")) 
         {
            session.setAttribute("email", email);
            response.sendRedirect("/GoCheeta_Client/AdminDashboard.jsp");               
          }
      
        else
        {
          if (loginCustomer == true)
           {
            session.setAttribute("email",email);
            response.sendRedirect("/GoCheeta_Client/UserDashboard.jsp");    
            }
        }     

     }
    else{

          out.print("<script>alert('Login Unsuccessful.Try Again')</script>");
          //out.print("Login Unsuccessful");
    }
   
 /* if(customerProxy.loginAdmin(email,password))
       {
        session.setAttribute("email", email);
        response.sendRedirect("/GoCheeta_Client/AdminDashboard.jsp");
       } 
    
    else if(customerProxy.loginCustomer(email,password))
    {
        session.setAttribute("email",email);
        response.sendRedirect("/GoCheeta_Client/UserDashboard.jsp");    
    }   
       */


%>
       
        <form action="/GoCheeta_Client/User/UI/UserLogin.jsp" method="post">

            <label for="lname">Email</label><br>
            <input type="text" id="email" name="email" placeholder="Email" required><br>

            <label for="password">Password</label><br>
            <input type="text" id="password" name="password" placeholder="Password" required><br>

            <br>

            <input type="submit" value="Login">
        </form>
        

        
    </body>
</html>

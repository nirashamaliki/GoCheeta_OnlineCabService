<%-- 
    Document   : loginDriver
    Created on : Sep 19, 2022, 10:48:00 PM
    Author     : HP
--%>
<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService customerProxy = service.getUserWebServicePort();
    HttpSession sesion = request.getSession();
    
    
    Boolean loginAdmin = customerProxy.loginAdmin(email,password);
    Boolean loginDriver = customerProxy.loginDriver(email,password);
    
     if (loginDriver == true) {

         if (email.equals ("admin@456")&& password.equals("456admin@")) 
         {
           session.setAttribute("email", email); 
           sesion.setAttribute("msg", "Admin Login Successfully");
           response.sendRedirect("/GoCheeta_Client/AdminDashboard.jsp");  
          }
      
        else
        {
          if (loginDriver == true)
           {
            session.setAttribute("email",email);
            sesion.setAttribute("msg", "Driver Login Successfully");
            response.sendRedirect("/GoCheeta_Client/DriverDashboard.jsp");    
            }
        }     

     }
    else{
            sesion.setAttribute("msg", "Driver Login Unuccessfully.Please try again!!");
            response.sendRedirect("/GoCheeta_Client/Driver/UI/DriverLogin.jsp");    
    }

%>
    
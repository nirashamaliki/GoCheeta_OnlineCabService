<%-- 
    Document   : loginUser
    Created on : Sep 4, 2022, 11:13:50 AM
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
    Boolean loginCustomer = customerProxy.loginCustomer(email,password);
    
     if (loginCustomer == true) {

         if (email.equals ("admin@456")&& password.equals("456admin@")) 
         {
            session.setAttribute("email", email); 
            sesion.setAttribute("msg", "Admin Login Successfully");
            response.sendRedirect("/GoCheeta_Client/AdminDashboard.jsp");  
          }
      
        else
        {
          if (loginCustomer == true)
           {
            session.setAttribute("email", email); 
            sesion.setAttribute("msg", "User Login Successfully");
            response.sendRedirect("/GoCheeta_Client/UserDashboard.jsp");      
            }
        }     

     }
    else{
          sesion.setAttribute("msg", "User Login Unsuccessful.Try Again");
          response.sendRedirect("/GoCheeta_Client/User/UI/UserLogin.jsp");      
    }

%>
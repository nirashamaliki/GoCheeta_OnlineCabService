<%-- 
    Document   : addCustomerHelp
    Created on : Sep 11, 2022, 11:15:00 PM
    Author     : HP
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    
    String mobile  = request.getParameter("mobile");
    String email        = request.getParameter("email");
    String name         = request.getParameter("name");
    String password     = request.getParameter("password");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService driverProxy   = service.getUserWebServicePort();
    HttpSession sesion = request.getSession();   
    
    if(driverProxy.addCustomer(email,name,mobile,password)) {
        
        
        sesion.setAttribute("msg", "Registation Successfully");
        response.sendRedirect("/GoCheeta_Client/User/UI/UserLogin.jsp");
        
        
    }else{
        sesion.setAttribute("msg", "Your Registation Unsuccessfully.PLease Try Again");
        response.sendRedirect("/GoCheeta_Client/Customer/UI/CustomerRegister.jsp");
    }
%>


<%-- 
    Document   : addCategory
    Created on : Aug 20, 2022, 3:42:42 PM
    Author     : HP
--%>


<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String name     = request.getParameter("name");
    int rate_id    = Integer.parseInt(request.getParameter("rate_id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();    
    
    
    if(customerProxy.addCategory(name,rate_id)) {
         
         sesion.setAttribute("msg", "Added Successfully!!");
         response.sendRedirect("/GoCheeta_Client/Category/UI/AddNewCategory.jsp");
    }else{
         sesion.setAttribute("msg", "Added Unuccessfully!!");
         response.sendRedirect("/GoCheeta_Client/Category/UI/AddNewCategory.jsp");
    }

%>
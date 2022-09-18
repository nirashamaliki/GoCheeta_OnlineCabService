<%-- 
    Document   : addFeedback
    Created on : Aug 22, 2022, 9:12:04 PM
    Author     : HP
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    
    int order_id    = Integer.parseInt(request.getParameter("order_id"));
    String subject    = request.getParameter("subject");
    String description   = request.getParameter("description");
 
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();      
  
    if(customerProxy.addFeedback(subject, description, order_id)) {
          
        sesion.setAttribute("msg", "Added Successfully"); 
        response.sendRedirect("/GoCheeta_Client/User/UI/ViewAllBookingDetails.jsp");

        
    }else{
        sesion.setAttribute("msg", "Added Unsuccessfully.Plese try again!!!"); 
        response.sendRedirect("/GoCheeta_Client/User/UI/ViewAllBookingDetails.jsp");
    }

%>
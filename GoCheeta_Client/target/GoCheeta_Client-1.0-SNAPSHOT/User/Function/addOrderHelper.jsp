<%-- 
    Document   : addOrderHelper
    Created on : Sep 14, 2022, 9:54:34 PM
    Author     : HP
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="java.util.List"%>

<%
    
    String msg = "";
    String driver_mobile    = request.getParameter("driver_mobile");
    String mobile           = request.getParameter("mobile");
    String order_email      = request.getParameter("order_email");
    String pick_location    = request.getParameter("pick_location");
    String drop_loction     = request.getParameter("drop_loction");
    String city             = request.getParameter("city");
    String area_branch      = request.getParameter("area_branch");
    String distance         = request.getParameter("distance");
    String price            = request.getParameter("price");
    String time             = request.getParameter("time");
    String v_type           = request.getParameter("v_type");
    String option           = "No Active";
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService userProxy   = service.getUserWebServicePort();
        
    
    if(userProxy.addUserOrder(mobile,order_email,pick_location,drop_loction,city,area_branch,distance,price,time,v_type,driver_mobile,option)) {
        
      
      //  session.getAttribute("msg");
        session.setAttribute("Your Order Added Successfully", msg);
        response.sendRedirect("/GoCheeta_Client/User/UI/SearchVehicalBook.jsp");
        
    }else{
       
        out.print("<script>alert('Your Registation Unsuccessfully.PLease Try Again')</script>"); 
        //response.sendRedirect("/GoCheeta_Client/Driver/UI/DriverRegister.jsp");
    }
%>

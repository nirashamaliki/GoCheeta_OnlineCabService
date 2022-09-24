<%-- 
    Document   : addDriverHelp
    Created on : Sep 5, 2022, 8:12:23 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="java.util.List"%>

<%
    
    int driver_mobile = Integer.parseInt(request.getParameter("driver_mobile"));
    String d_email    = request.getParameter("d_email");
    String d_name     = request.getParameter("d_name");
    String d_password = request.getParameter("d_password");
    String branch     = request.getParameter("branch");
    String time_type  = request.getParameter("time_type");
    
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService driverProxy   = service.getDriverWebServicePort();
    HttpSession sesion = request.getSession();    
    
    if(driverProxy.addDriver(driver_mobile,d_email,d_name, d_password, branch, time_type)) {
        
        sesion.setAttribute("msg", "Registation Successfully");
        sesion.setAttribute("driver_mobile",driver_mobile);
        response.sendRedirect("/GoCheeta_Client/Admin/UI/VehicleRegister.jsp");
 
    }else{
        
        sesion.setAttribute("msg", "Registation Unsuccessfully.Please Try Again");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
    }
%>



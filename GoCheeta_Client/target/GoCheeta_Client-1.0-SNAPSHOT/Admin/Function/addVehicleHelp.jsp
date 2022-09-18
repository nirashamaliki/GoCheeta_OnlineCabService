<%-- 
    Document   : addVehicleHelp
    Created on : Sep 11, 2022, 3:10:33 PM
    Author     : HP
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    
    int driver_mobile = Integer.parseInt(request.getParameter("driver_mobile"));
    String vehicle_no    = request.getParameter("vehicle_no");
    String vehical_Type     = request.getParameter("vehical_Type");
    String vehicle_model = request.getParameter("vehicle_model");

    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy   = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();   
    
    if(vehicleProxy.addVehicle(driver_mobile,vehicle_no,vehical_Type, vehicle_model)) {
    
        sesion.setAttribute("msg", "Added Successfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
        
    }else{
        
        sesion.setAttribute("msg", "Added Unsuccessfully.Please Try Again");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
    }
%>



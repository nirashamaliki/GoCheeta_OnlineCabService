<%-- 
    Document   : deleteVehicle
    Created on : Sep 11, 2022, 10:18:43 PM
    Author     : HP
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String vehicle_no = request.getParameter("id");
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();
    
    if(vehicleProxy.deleteVehicleDriver(vehicle_no)) {
        
        sesion.setAttribute("msg", "Delete Successfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
        
    }else {

        sesion.setAttribute("msg", "Delete Unsuccessfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
    }

%>

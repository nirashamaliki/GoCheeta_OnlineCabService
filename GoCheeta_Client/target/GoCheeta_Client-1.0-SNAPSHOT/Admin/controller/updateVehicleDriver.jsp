<%-- 
    Document   : updateVehicleDriver
    Created on : Sep 11, 2022, 7:53:26 PM
    Author     : HP
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int driver_mobile        = Integer.parseInt(request.getParameter("id"));
    String vehicle_no        = request.getParameter("vehicle_no");
    String vehical_Type      = request.getParameter("vehical_Type");
    String vehicle_model     = request.getParameter("vehicle_model");
    String d_name            = request.getParameter("d_name");
    String d_email           = request.getParameter("d_email");
    String branch           = request.getParameter("branch");
    String time_type           = request.getParameter("time_type");

    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();

    if(vehicleProxy.updateVehicleDriver(vehicle_no, vehical_Type,vehicle_model,driver_mobile,d_name,d_email,branch,time_type)) {
    
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
    } else {
        out.print("false");
    }

%>

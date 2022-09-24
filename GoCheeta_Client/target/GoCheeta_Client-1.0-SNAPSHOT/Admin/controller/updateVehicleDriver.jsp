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
    int driver_mobile        = Integer.parseInt(request.getParameter("driver_mobile"));
    String vehicle_no        = request.getParameter("id");
    String vehical_Type      = request.getParameter("vehical_Type");
    String vehicle_model     = request.getParameter("vehicle_model");
   /* String d_name            = request.getParameter("d_name");
    String d_email           = request.getParameter("d_email");
    String branch            = request.getParameter("branch");
    String time_type         = request.getParameter("time_type");
    String d_password          = request.getParameter("d_password");*/

    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();   
    
    if(vehicleProxy.updateVehicleDriver(driver_mobile,vehicle_no,vehical_Type,vehicle_model)) {
    
        sesion.setAttribute("msg", "Update Successfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
        
    } else {
        sesion.setAttribute("msg", "Update Unuccessfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp");
    }

%>

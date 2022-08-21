<%-- 
    Document   : SearchVehicalBook
    Created on : Aug 20, 2022, 11:44:43 PM
    Author     : HP
--%>

<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Vehicle> vehicles = customerProxy.getAllVehicle();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table  class="table table-bordered" style="width:80%;margin-left:15%;margin-right:2%;margin-left:10%;margin-top:2%">

        <tbody>
            
            <% for(Vehicle vehicle:vehicles){ %>
            <tr> 
                <td style="width:15%;"><% out.print(vehicle.getVehicleModel()); %></td>
                <td style="width:15%;"><% out.print(vehicle.getVehicalType()); %></td>
            </tr>
                <td><% out.print(vehicle.getBranch()); %></td>
                <td><% out.print(vehicle.getDriverMobile()); %></td>
             
                <td style="width:30%;text-align: center">
                   <a href="/GoCheeta_Client/Category/function/editCategory.jsp?id=<% out.print(vehicle.getVehicleNo()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                  
            </tr>
            <% } %>
        </tbody>
    </table> 
       
</html>
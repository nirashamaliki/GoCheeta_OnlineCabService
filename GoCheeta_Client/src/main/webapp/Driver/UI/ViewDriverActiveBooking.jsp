<%-- 
    Document   : ViewDriverActiveBooking
    Created on : Sep 16, 2022, 5:15:48 PM
    Author     : HP
--%>

<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.User"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String vehicle_no = request.getParameter("vehicle_no");
    
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService customerProxy = service.getDriverWebServicePort();
    
    List<User> users= customerProxy.getActiveBookingDetails(vehicle_no);
        
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
      <div class="container">
         <form class="form-inline" method="post" action="/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp">
          <input type="text" name="vehicle_no" class="form-control" placeholder="Search your vehicle number..">
          <button type="submit" name="save" class="btn btn-primary">Search</button>
         </form>
       </div>
        
        
        <table  class="table table-bordered" style="width:80%;margin-left:2%;margin-right:1%;margin-left:10%;margin-top:10%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Order ID</th>
                <th scope="col"style="text-align:center; ">Mobile</th>
                <th scope="col"style="text-align:center; ">Pick Location</th>
                <th scope="col"style="text-align:center; ">Drop Location</th>
                <th scope="col"style="text-align:center; ">Area Branch</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th> 
                <th scope="col"style="text-align:center; ">Date</th>

                <th scope="col"style="width:15%;text-align:center; ">Driver Mobile</th>
                <th scope="col"style="width:15%;text-align:center; ">Option</th>
                <th scope="col"style="width:15%;text-align:center; ">Active/No Active</th>
            </thead>
        <tbody>
            <% for(User user: users){ %>
            <tr> 
                <td style="width:5%;text-align: center"><% out.print(user.getOrderId()); %></td>
                <td><% out.print(user.getMobile()); %></td>
                <td><% out.print(user.getPickLocation()); %></td>
                <td><% out.print(user.getDropLoction()); %></td>
                <td><% out.print(user.getAreaBranch()); %></td>
                <td><% out.print(user.getDistance()); %></td>
                <td><% out.print(user.getPrice()); %></td>
                <td><% out.print(user.getTime()); %></td>
     
                <td><% out.print(user.getDriverMobile()); %></td>
                <td><% out.print(user.getOption()); %></td>      
               <td style="width:30%;text-align: center">
                   <a href="/GoCheeta_Client/Driver/UI/AcceptOrderBooking.jsp?id=<% out.print(user.getOrderId()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                </td>
              
            </tr>
            <% } %>
        </tbody>
    </table> 
        
          <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>     
       
</html>
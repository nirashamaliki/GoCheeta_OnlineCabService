<%-- 
    Document   : ViewAllFeedback
    Created on : Aug 24, 2022, 8:56:35 PM
    Author     : HP
--%>

<%@page import="gocheeta.User"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService viewProxy = service.getNewWebServicePort();
    
    List<User> users = viewProxy.getViewFeedbacks();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Feedback</title>
        
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        
        <table class="table table-bordered" style="width:80%;margin-left:5%;margin-right:2%;margin-left:15%;margin-top:10%">
            <thead>
                <th scope="col"style="text-align:center; ">Feedback ID</th>
                <th scope="col"style="text-align:center; ">Subject</th>
                <th scope="col"style="text-align:center; ">Description</th>
                <th scope="col"style="text-align:center; ">Customer Mobile</th>
                <th scope="col"style="text-align:center; ">Pick Location</th>
                <th scope="col"style="text-align:center; ">Drop Location</th>
                <th scope="col"style="text-align:center; ">Area Branch</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th> 
                <th scope="col"style="text-align:center; ">Time</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>   
                <th scope="col"style="text-align:center; ">Driver Mobile</th>
              

                      
            </thead>
        <tbody>
            <% for(User user : users){ %>
            <tr>
                <td><% out.print(user.getFeedbackId()); %></td>
                <td><% out.print(user.getSubject()); %></td>
                <td><% out.print(user.getDescription()); %></td>
               <td><% out.print(user.getMobile()); %></td>
                <td><% out.print(user.getPickLocation()); %></td>
                <td><% out.print(user.getDropLoction()); %></td>
                <td><% out.print(user.getAreaBranch()); %></td>
                <td><% out.print(user.getDistance()); %></td>
                <td><% out.print(user.getPrice()); %></td>
                <td><% out.print(user.getTime()); %></td>
                <td><% out.print(user.getVType()); %></td>
                <td><% out.print(user.getDriverMobile()); %></td>
                
            
            </tr>
            <% } %>
        </tbody>
    </table>

</body>
</html>
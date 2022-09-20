<%-- 
    Document   : AcceptOrderBooking
    Created on : Sep 18, 2022, 8:32:43 PM
    Author     : HP
--%>

<%@page import="gocheeta.User"%>
<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="java.util.List"%>

<%  
    int order_id = Integer.parseInt(request.getParameter("id"));
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService userProxy = service.getUserWebServicePort();
    
    User user = userProxy.getAcceptbyId(order_id);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">

        <title>GoCheetacab.lk</title>
        <link rel="icon" href="/GoCheeta_Client/User/UI/image/Logo/Logo.png">
        <link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/add.css">
        
	<title style="text-align: center;">Booking Order</title>
	<link rel="icon" href="/GoCheeta_Client/User/UI/image/homepage/icon/logo.png">
    </head>
    <body>     
                        
     <div class="container" style="width:400px; height:100px;">
         
         <form action="/GoCheeta_Client/Driver/Function/editAcceptOrder.jsp" method="post" class="login-email">
             <br>
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Accept Order</p>
        <br>

           <div class="input-group">
        <select id="option" name="option" style="font-size:0.9rem;">
                  <option>No Active</option>
                   <option>Active</option> 
        </select>       
        </div>
        
            <input type="hidden" id="mobile" name="mobile" placeholder="Customer Mobile" value="<% out.print(user.getMobile()); %>" required >
            <input type="hidden" id="order_email" name="order_email" placeholder="Email Address" value="<% out.print(user.getOrderEmail()); %>"required> 
            <input type="hidden" id="pick_location" name="pick_location" placeholder="Pick Location" value="<% out.print(user.getPickLocation()); %>"   required>
             <input type="hidden" id="drop_loction" name="drop_loction" placeholder="Drop Location" value="<% out.print(user.getPickLocation()); %>"  required>
             <input type="hidden" id="area_branch" name="area_branch" placeholder="Area Branch" value="<% out.print(user.getAreaBranch()); %>"  required>
             <input type="hidden" id="city" name="city" placeholder="City" value="<% out.print(user.getCity()); %>"  required>
             <input type="hidden" id="distance" name="distance" placeholder="Total Distance" value="<% out.print(user.getDistance()); %>"  required style="width:300px;padding-left:10px;">
             <input type="hidden" id="price" name="price" placeholder="Total Price" value="<% out.print(user.getPrice()); %>" disabled >
             <input type="hidden" id="time" name="time" placeholder="Choose Date" value="<% out.print(user.getTime()); %>" required>
   
     
           <input type="hidden" id="vehicle_no" name="vehicle_no" placeholder="Vehicle No" value="<% out.print(user.getVehicleNo()); %>" required>            
           <input type="hidden" id="v_type" name="v_type" placeholder="Vehicle Type" required value="<% out.print(user.getVType()); %>" >
           <input type="hidden" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" value="<% out.print(user.getDriverMobile());%>" required>

        <div class="input-group">             
            <input type="hidden" name="order_id" value="<%= request.getParameter("id") %>"><br><br>
             <input type="submit" value="Accept" class="btn" style="width:200px;align-content:center;margin-left:20% ">
        </div> 
         </form> </div>  
       </th>


    </body>
</html>
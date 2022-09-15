<%-- 
    Document   : AddCustomerOrder
    Created on : Sep 14, 2022, 7:41:05 PM
    Author     : HP
--%>

<%@page import="gocheeta.Dropdown"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService branchProxy = service.getDriverWebServicePort();

    List<Branch>branches = branchProxy.getBranchDrop();
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">
	<title style="text-align: center;">Booking Order</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
    </head>
    <body>

     <div class="container" style="width: 500px; height:640px;">
            
      <form action="/GoCheeta_Client/User/Function/addOrderHelper.jsp" method="post" class="login-email">
          
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Booking Order</p>
        <br>
       
	<div class="input-group">
            <input type="text" id="mobile" name="mobile" placeholder="Customer Mobile" required><br>
        </div>
        
	<div class="input-group">
             <input type="email" id="order_email" name="order_email" placeholder="Email Address" required><br>
        </div>

        <div class="input-group">
             <input type="text" id="pick_location" name="pick_location" placeholder="Pick Location" required><br>
        </div>
        
        <div class="input-group">
             <input type="text" id="drop_loction" name="drop_loction" placeholder="Drop Location" required><br>
        </div>
            
	<div class="input-group">          
             <select id="area_branch" name="area_branch" style="font-size:0.9rem;">
                <option>Select Branch</option>
                   <% for(Branch branch: branches){ %>

                   %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                </select>   
        </div>
        
        <div class="input-group">          
             <select id="city" name="city" style="font-size:0.9rem;">
                <option>Select City</option>
                   <% for(Branch branch: branches){ %>

                   %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                </select>   
        </div>        
                
        <div class="input-group">
             <input type="text" id="price" name="price" placeholder="Total Price" required><br>
        </div>
              
        <div class="input-group">
             <input type="text" id="distance" name="distance" placeholder="Total Distance" required><br>
        </div>        
                
        <div class="input-group">
             <input type="date" id="time" name="time" placeholder="Choose Time" required><br>
        </div>         

                
    <input type="text" id="v_type" name="v_type" placeholder="Vehicle Type" required><br>
    <input type="text" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" required><br>

        <div class="input-group">             
             <input type="submit" value="Sign Up" class="btn">
        </div>
             
         </form>
     </div>  
                
    </body>
</html>
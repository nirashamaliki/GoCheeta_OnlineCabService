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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src ="https://code.jquery.com/jquery-3.5.0.js"></script>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/GoCheeta_Client/Css/style.css">
        <title>GoCheetacab.lk</title>
        <link rel="icon" href="/GoCheeta_Client/User/UI/image/Logo/Logo.png">
        <link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/add.css">
        
	<title style="text-align: center;">Booking Order</title>
	<link rel="icon" href="/GoCheeta_Client/User/UI/image/homepage/icon/logo.png">
    </head>
    <body>     
                        
     <div class="container" style="width:580px; height:780px;margin-top:15%">
         
         <form action="/GoCheeta_Client/Driver/Function/editAcceptOrder.jsp" method="post" class="login-email">
          
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Accept Order</p>
        <br>

       <table>
             <tr colspan="2">
              <div class="input-group">
                <input type="text" id="mobile" name="mobile" placeholder="Customer Mobile" value="<% out.print(user.getMobile()); %>" required >
              </div>
             </th>
             
             <tr colspan="2">
               <div class="input-group">
                 <input type="email" id="order_email" name="order_email" placeholder="Email Address" value="<% out.print(user.getOrderEmail()); %>"required> 
               </div> 
             </tr>
  
           <tr colspan="2">
              <div class="input-group">
                <input type="text" id="pick_location" name="pick_location" placeholder="Pick Location" value="<% out.print(user.getPickLocation()); %>"   required><br>
              </div>
            </tr> 
             
             <tr colspan="2">
               <div class="input-group">
                 <input type="text" id="drop_loction" name="drop_loction" placeholder="Drop Location" value="<% out.print(user.getPickLocation()); %>"  required><br>
               </div>   
             </tr>
  
            <tr >
                <td style="">
                    
               <div class="input-group">
                 <input type="text" id="area_branch" name="area_branch" placeholder="Area Branch" value="<% out.print(user.getAreaBranch()); %>"  required><br>
               </div>       
                    
              <div class="input-group">
                 <input type="text" id="city" name="city" placeholder="City" value="<% out.print(user.getCity()); %>"  required><br>
               </div>  
          
            
        <tr>
           
            <td style="width:40%;padding-left:10px;">  
               <div class="input-group"style="width:300px;padding-left:10px;">    
                 <input type="text" id="distance" name="distance" placeholder="Total Distance" value="<% out.print(user.getDistance()); %>"  required style="width:300px;padding-left:10px;"><br>
             </div>   
            </td>

         </tr>
      </table>
                
        <div class="input-group">
             <input type="text" id="price" name="price" placeholder="Total Price" value="<% out.print(user.getPrice()); %>" disabled ><br>
        </div>
       
        <div class="input-group">
             <input type="text" id="time" name="time" placeholder="Choose Date" value="<% out.print(user.getTime()); %>" required><br>
        </div>         

        <select id="option" name="option" style="font-size:0.9rem;">
                  <option>No Option</option>
                   <option>Option</option> 
        </select>       

           <input type="hidden" id="vehicle_no" name="vehicle_no" placeholder="Vehicle No" value="<% out.print(user.getVehicleNo()); %>" required>            
           <input type="hidden" id="v_type" name="v_type" placeholder="Vehicle Type" required value="<% out.print(user.getVType()); %>" >
           <input type="hidden" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" value="<% out.print(user.getDriverMobile());%>" required>

        <div class="input-group">             
            <input type="hidden" name="order_id" value="<%= request.getParameter("id") %>">
             <input type="submit" value="Accept" class="btn">
        </div> 
         </form> </div>  
       </th>


    </body>
</html>
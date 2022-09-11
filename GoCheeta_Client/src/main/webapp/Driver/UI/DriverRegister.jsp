<%-- 
    Document   : DriverRegister
    Created on : Sep 4, 2022, 10:51:14 PM
    Author     : HP
--%>

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

	<title style="text-align: center;">User Register</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        
        <title>JSP Page</title>
    </head>
    <body>

     <div class="container" style="width: 500px; height:640px;">
            
      <form action="/GoCheeta_Client/Driver/Function/addDriverHelp.jsp" method="post" class="login-email">
   
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Register</p>
        <br>
	<div class="input-group">
            <input type="text" id="d_name" name="d_name" placeholder="Driver Name" required><br>
        </div>
        
	<div class="input-group">
             <input type="email" id="d_email" name="d_email" placeholder="Driver Email" required><br>
        </div>

        <div class="input-group">
             <input type="mobile" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" required><br>
        </div>
        
        <div class="input-group">
             <input type="password" id="d_password" name="d_password" placeholder="Password" required><br>
        </div>
            
	<div class="input-group">          
             <select id="branch" name="branch" style="font-size:0.9rem;">
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
                <select id="time_type" name="time_type" style="font-size:0.9rem;"><option>Select Option</option> 
                   <option>Full Time</option> 
                   <option>Part Time</option> 
                </select>   
        </div>       

        <div class="input-group">             
             <input type="submit" value="Sign Up" class="btn">
        </div>
             
         </form>
     </div>  
                
    </body>
</html>
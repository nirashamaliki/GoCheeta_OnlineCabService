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
    
  //  List<User> users= customerProxy.getUsers();
  
    List<Branch>branches = branchProxy.getBranch();
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="/GoCheeta_Client/Driver/Function/addDriverHelp.jsp" method="post">

            <label for="fname">Driver Name</label><br>
            <input type="text" id="d_name" name="d_name" placeholder="Driver Name" required><br>

            <label for="lname">Driver Email</label><br>
            <input type="text" id="d_email" name="d_email" placeholder="Driver Email" required><br>

            <label for="mobile">Driver Mobile</label><br>
            <input type="text" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" required><br>

            <label for="password">Password</label><br>
            <input type="text" id="d_password" name="d_password" placeholder="Password" required><br>

            <label for="password">Branch</label><br>
            
                <select><option id="branch" name="branch">Select</option>
                   <% for(Branch branch: branches){ %>
                
        
                 %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                </select>   
               
               <br>  <br>
       
            
            <label for="password">Option</label><br>
            <input type="text" id="time_type" name="time_type" placeholder="Option" required><br>
            <br>

            <input type="submit" value="Sign Up">
        </form>
        
    </body>
</html>
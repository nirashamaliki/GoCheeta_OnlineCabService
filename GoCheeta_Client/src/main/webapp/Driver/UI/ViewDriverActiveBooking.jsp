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


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="/GoCheeta_Client/Css/style.css">
       <title>GoCheetacab.lk</title>
       <link rel="icon" href="/GoCheeta_Client/image/Logo/Logo.png">
    </head>
    

 <body style="background:#FFF">
     
  <div class="sidebar" style="background:#3a4c76;">
    <div class="logo-details">
        <i><img src="/GoCheeta_Client/image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/DriverDashboard.jsp">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp"class="active" style="margin-top:-10px;background-color:#153c61 ">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Order Details</span>
          </a>
        </li>
       <li>
          <a href="/GoCheeta_Client/index.html">
            <i class='bx bx-home'></i>
            <span class="links_name">Home</span>
          </a>
        </li> 
        
        <li>
        <li class="log_out">
          <a href="/GoCheeta_Client/Driver/UI/DriverLogin.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav style="background:#3a4c76;">
      <div class="sidebar-button"style="color:#ffffff;">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard"style="color:#ffffff;">Order Details</span>
      </div>

    </nav>

      <div >
        <div>
            <br><br><br><br>
        
         <form class="form-inline" method="post" action="/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp"style="margin-left:2%;">
          <input type="text" name="vehicle_no" class="form-control" placeholder="Search your vehicle number.."style="width:400px;padding:10px;">
          <button type="submit" name="save" class="btn btn-primary"style="padding:10px;">Search</button>
         </form>

        
        
        <table  class="table table-bordered" style="width:90%;margin-left:2%;margin-right:2%;margin-top:2%">
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
            
            
            
            
            
      </div>
    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
   let sidebarBtn = document.querySelector(".sidebarBtn");
   sidebarBtn.onclick = function() {
   sidebar.classList.toggle("active");
   if(sidebar.classList.contains("active")){
   sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
 }else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
 
        <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>    
 </body>  
       
</html>
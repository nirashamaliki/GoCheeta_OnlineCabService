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
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/GoCheeta_Client/Css/style.css">
        <title>GoCheetacab.lk</title>
        <link rel="icon" href="/GoCheeta_Client/image/Logo/Logo.png">
        <title>JSP Page</title>
    </head>
    
<body style="background:#FFF">
  <div class="sidebar" style="background:#3a4c76;">
    <div class="logo-details">
        <i><img src="/GoCheeta_Client/image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/AdminDashboard.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Category/UI/ViewAllPrice.jsp">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Category Details</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Admin/UI/ViewAllBookingFullDetails.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Branch Details</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Admin/UI/ViewAllDriver.jsp">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Driver Details</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Admin/UI/ViewAllVehicleDriver.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Vehicle Details</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Admin/UI/ViewAllFeedback.jsp" class="active">
            <i class='bx bx-message' ></i>
            <span class="links_name">Feedback Details</span>
          </a>
        </li>
        
         <li>
          <a href="/GoCheeta_Client/index.html">
            <i class='bx bx-home' ></i>
            <span class="links_name">Home</span>
          </a>
        </li>
        
        <li>
        <li class="log_out">
          <a href="/GoCheeta_Client/User/UI/UserLogin.jsp">
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
        <span class="dashboard"style="color:#ffffff;">Feedback Details</span>
      </div>

   
    </nav>

      <div style="background:#FFF">
        <div>
            <br><br><br><br>
        
        <table class="table table-bordered" style="width:50%;margin-left:1%;margin-right:1%;">
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
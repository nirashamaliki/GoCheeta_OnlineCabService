<%-- 
    Document   : ViewAllDriver
    Created on : Sep 13, 2022, 11:47:16 PM
    Author     : HP
--%>
<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();
    
    List<Vehicle> vehicles = vehicleProxy.getViewAllVehicleDriver();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/GoCheeta_Client/Css/style.css">
        <title>GoCheetacab.lk</title>
        <link rel="icon" href="/GoCheeta_Client/image/Logo/Logo.png">
        <title>JSP Page</title>
        
        <style>
            .tableFixHead {
	    overflow-y: auto;
	    height:500px;
         
            margin-left:40px;
	  }
            .tableFixHead thead th {
	    position: sticky;
            top: 0;
	  }
        </style>
  
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
          <a href="/GoCheeta_Client/Admin/UI/ViewAllDriver.jsp" class="active">
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
          <a href="/GoCheeta_Client/Admin/UI/ViewAllFeedback.jsp">
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
        <span class="dashboard"style="color:#ffffff;">Branch Details</span>
      </div>
    </nav>

      <div style="background:#FFF">
        <div>
            <br><br>
        <a href="/GoCheeta_Client/Driver/UI/DriverRegister.jsp" class="btn btn-info" style="width:80px;height:40px;text-align:center;margin-left:5%;margin-top:5%">Add</a>
       
        <div class="input-group">
        <input type="text" id="myInput" onkeyup='tableSearch()' placeholder="Search Vehicle Name" style="padding:10px;width:40%;margin-left:52%;border-radius:30px;border: 2px solid #e7e7e7;padding: 12px 20px;
               font-size: 1rem;border-radius: 30px;background: transparent;outline: none;transition: .3s;"><img src="/GoCheeta_Client/image/icon/search.png" style="width:35px;height:35px;margin-left:-50px;margin-top:8px;">
        </div>
        <div class="tableFixHead">
        <table  class="table table-bordered" id="myTable" data-filter-control="true" data-show-search-clear-button="true" style="width:90%;margin-right:1%;margin-left:1%;margin-top:2%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Vehicle No</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>
                <th scope="col"style="text-align:center; ">Vehicle Model</th>
                <th scope="col"style="text-align:center; ">Driver Mobile</th>
                <th scope="col"style="text-align:center; ">Driver Name</th>
                <th scope="col"style="text-align:center; ">Driver Email</th>
                <th scope="col"style="text-align:center; ">Branch</th>
                <th scope="col"style="text-align:center; ">Option</th>
         
            </thead>
        <tbody>
            
            <% for(Vehicle vehicle:vehicles){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(vehicle.getVehicleNo()); %></td>
                <td><% out.print(vehicle.getVehicalType()); %></td>
                <td><% out.print(vehicle.getVehicleModel()); %></td>
                <td><% out.print(vehicle.getDriverMobile()); %></td>
                <td><% out.print(vehicle.getDName()); %></td>
                <td><% out.print(vehicle.getDEmail()); %></td>
                <td><% out.print(vehicle.getBranch()); %></td>
                <td><% out.print(vehicle.getTimeType()); %></td> 

            </tr>
            <% } %>
        </tbody>
    </table> 
    </div>
        <script type="application/javascript">
        function tableSearch() {
            let input, filter, table, tr, td, txtValue;

            //Intialising Variables
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");

            for (let i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }

        }
    </script>
        
 </body>
       
</html>
<%-- 
    Document   : SearchVehicalBook
    Created on : Aug 20, 2022, 11:44:43 PM
    Author     : HP
--%>

<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Vehicle> vehicles = customerProxy.getAllVehicle();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
          <head>
    <meta charset="UTF-8">
    
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/GoCheeta_Client/Css/style.css">
    <title>GoCheetacab.lk</title>
    <link rel="icon" href="/GoCheeta_Client/Driver/image/Logo/Logo.png">

  </head>
        
  <title>Search Vehicle booking</title>
    </head>
<body style="background:#FFF">
  <div class="sidebar" style="background:#3a4c76;">
    <div class="logo-details">
        <i><img src="/GoCheeta_Client/Driver/image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/UserDashboard.jsp" \>
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Driver/UI/SearchVehicalBook.jsp"class="active" style="margin-top:-10px;background-color:#153c61 ">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Order Details</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/User/UI/ViewAllBookingDetails.jsp">
            <i class='bx bx-message' ></i>
            <span class="links_name">Feedback</span>
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
          <a href="/GoCheeta_Client/User/UI/UserLogin.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section" style="background:#FFF">
    <nav style="background:#3a4c76;">
      <div class="sidebar-button"style="color:#ffffff;">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard"style="color:#ffffff;">Order Details</span>
      </div></nav>
      <div style="background:#FFF">
      <div>
        <div>
            
        <div style="margin-left:10%;padding-top:10%">
        <form action ="" method="post"> 
            <input type="text" name="VehicalType" placeholder="Vehicle Type" id="myInput" onkeyup='tableSearch()'style="width:500px;padding:10px;height:50px;border-radius:50px;border-color:silver"/>
            <input type ="submit" value="Search"style="width:100px;padding:10px;height:45px;border-radius:10px;text-align:center;color:white;"class="btn btn-primary">
        </form>  
        </div>
            <div><br>
           <table id="myTable" data-filter-control="true" data-show-search-clear-button="true"class="table table-bordered" style="width:80%;margin-left:15%;margin-right:2%;margin-left:10%;margin-top:2%">

        <tbody>
            
            <% for(Vehicle vehicle:vehicles){ %>
            <tr> 
                <td style="width:15%;"><% out.print(vehicle.getVehicleModel()); %></td>
                <td style="width:15%;"><% out.print(vehicle.getVehicalType()); %></td>
                <td><% out.print(vehicle.getBranchName()); %></td>
                <td><% out.print(vehicle.getDriverMobile()); %></td>
                <td><% out.print(vehicle.getVehicleNo()); %></td>
                <td style="width:30%;text-align: center">
                <a href="/GoCheeta_Client/User/UI/AddCustomerOrder.jsp?id=<% out.print(vehicle.getVehicleNo()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Order</a>
                  
            </tr>
            <% } %>
        </tbody>
    </table> 
       </div> 
          <script type="application/javascript">
        function tableSearch() {
            let input, filter, table, tr, td, txtValue;

            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");

            for (let i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1];
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
        
       <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>

        </div>
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

</body>
</html>
        
        
        
       
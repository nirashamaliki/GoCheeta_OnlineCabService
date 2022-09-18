<%-- 
    Document   : ViewAllBookingFullDetails
    Created on : Aug 20, 2022, 9:51:17 PM
    Author     : HP
--%>


<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page import="gocheeta.User"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String order_mobile = request.getParameter("order_mobile");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService customerProxy = service.getUserWebServicePort();
    
    List<User> users= customerProxy.getUserBookingDetails(order_mobile);
        
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
        <link rel="icon" href="GoCheeta_Ckient/Driver/image/Logo/Logo.png">
  
    </head>
    <body>

  <div class="sidebar">
    <div class="logo-details">
        <i><img src="/GoCheeta_Client/Driver/image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/UserDashboard.jsp">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Driver/UI/SearchVehicalBook.jsp">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Order Details</span>
          </a>
        </li>     
        <li>
          <a href="/GoCheeta_Client/User/UI/AddNewFeedback.jsp" class="active">
            <i class='bx bx-message' ></i>
            <span class="links_name">Feedback</span>
          </a>
        </li>
        
        <li>
          <a href="/GoCheeta_Client/index.html">
            <i class='bx bx-list-ul'></i>
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
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>

    </nav>

      <div>
        <div>
            
     <div class="container" style="padding-top:10%;margin-left:10%; ">
         <form class="form-inline" method="post" action="/GoCheeta_Client/User/UI/ViewAllBookingDetails.jsp">
          <input type="text" name="order_mobile" class="form-control" placeholder="Search your mobile number.." style="width:300px;padding:10px;">
          <button type="submit" name="save" class="btn btn-primary">Search</button>
         </form>
      </div>   
        
        <table  class="table table-bordered" style="width:80%;margin-left:2%;margin-right:1%;margin-left:2%;margin-top:2%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Order ID</th>
                <th scope="col"style="text-align:center; ">Mobile</th>
                <th scope="col"style="text-align:center; ">Pick Location</th>
                <th scope="col"style="text-align:center; ">Drop Location</th>
                <th scope="col"style="text-align:center; ">Area Branch</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th> 
                <th scope="col"style="text-align:center; ">Time</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>
                <th scope="col"style="width:15%;text-align:center; ">Active/No Active</th>
                <th scope="col"style="width:15%;text-align:center; ">Option</th>

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
                <td><% out.print(user.getVType()); %></td>
                <td><% out.print(user.getOption()); %></td>      
              
                <td style="width:15%;text-align: center">
                    
                    <a href="./AddNewFeedback.jsp?id=<% out.print(user.getOrderId()); %>" class="btn btn-primary" style="font-size:14px;width:90px;height:40px;text-align:center;margin-right:5px;">FeedBack</a>
 
                </td>
            </tr>
            <% } %>
        </tbody>
    </table> 
        
       <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>
       
        
  
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
        
        
        
          
        
        
        
        
        
        
        
        
        
        
        
        
        
                
   
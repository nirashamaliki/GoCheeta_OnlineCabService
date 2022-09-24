
<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Category> categorys = customerProxy.getPriceRate();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
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
          <a href="/GoCheeta_Client/Category/UI/ViewAllPrice.jsp"class="active">
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
        <span class="dashboard"style="color:#ffffff;">Category Details</span>
      </div>

   
    </nav>

      <div style="background:#FFF">
        <div>
       
        <a href="/GoCheeta_Client/Category/UI/AddNewCategory.jsp" class="btn btn-info" style="width:80px;height:40px;text-align:center;margin-left:10%;margin-top:10%">Add</a>
        <table  class="table table-bordered" style="width:80%;margin-left:15%;margin-right:2%;margin-left:10%;margin-top:2%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Category ID</th>
                <th scope="col"style="text-align:center; ">Category Name</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th>
                <th scope="col"style="text-align:center; ">Action</th>
         
            </thead>
        <tbody>
            
            <% for(Category category:categorys){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(category.getCategoryId()); %></td>
                <td><% out.print(category.getName()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>
             
                <td style="width:30%;text-align: center">
                   <a href="/GoCheeta_Client/Category/function/editCategory.jsp?id=<% out.print(category.getCategoryId()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                   <a href="/GoCheeta_Client/Category/controller/deleteCategory.jsp?id=<% out.print(category.getCategoryId()); %>" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</a>
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

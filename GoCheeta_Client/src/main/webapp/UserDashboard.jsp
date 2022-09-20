<%-- 
    Document   : UserDashboard
    Created on : Sep 4, 2022, 2:29:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/style.css">
    <title>GoCheetacab.lk</title>
    <link rel="icon" href="image/Logo/Logo.png">

  </head>

<body style="background:#FFF">
  <div class="sidebar" style="background:#3a4c76;">
    <div class="logo-details">
        <i><img src="image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/UserDashboard.jsp" class="active" style="margin-top:-10px;background-color:#153c61 ">
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
  <section class="home-section">
    <nav style="background:#3a4c76;">
      <div class="sidebar-button"style="color:#ffffff;">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard"style="color:#ffffff;">Dashboard</span>
      </div>

      <div style="background:#3a4c76;">
        <span class="admin_name">
        <%
           out.print(session.getAttribute("email"));
        %>
        </span>
        <i><img src="image/icon/user.png" alt="alt" style="width:25px;margin-left:20px;"></i>
      </div>
    </nav>

      <div style="background:#FFF">
        <div>
          <img src="image/Logo/Full_Logo.png" alt="alt"style="text-align:center;margin-left:28%;margin-top:10%">
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


<%-- 
    Document   : AddNewCategory
    Created on : Aug 20, 2022, 10:39:10 AM
    Author     : HP
--%>

<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Category> categorys = customerProxy.getPriceView();
%>

<!DOCTYPE html>
<html>
    <head>

 <meta charset="UTF-8">
    
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
        
    </head>
<body >
  <div class="sidebar" style="background:#3a4c76;">
    <div class="logo-details">
        <i><img src="/GoCheeta_Client/image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="/GoCheeta_Client/AdminDashboard.jsp">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/Category/UI/ViewAllPrice.jsp" class="active">
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
        <span class="dashboard"style="color:#ffffff;">Add Category</span>
      </div>

    </nav>

  <div>
  <div>
     <div class="container" style="width:100%; height:500px;">  
      <form action="/GoCheeta_Client/Category/controller/addCategory.jsp" method="post" class="login-email" style="width:100%;">
          <br><br><br><br>
            
          <table style="margin-left:10%;"> 
           <tr style="width:100%;">
              <th style="width:70%;padding-right:10px;">
              
                <div class="input-group">  
                 <input type="text" id="name" name="name"  placeholder="Category Name" required><br>
                </div>
                  <br>
            
                <div class="input-group">     
                 <input type="text" id="distance" name="distance" placeholder="Distance" required><br>
                </div>
                <br>
         
             <div class="input-group">        
               <input type="text" id="price" name="price"placeholder="Price" required><br>
              </div>
              <br>
             
              <div class="input-group">   
                <input type="hidden" id="rate_id" name="rate_id" placeholder="rate_id" required><br>
              </div>  
                            <div class="input-group">
                <input type="submit" value="Add" class="btn">
              </div>  
          
          </th>
          
          <th style="padding-left:20px;margin-top:-70%;width:30%;">
            <table id="table" border="1"style="padding-left:20px;margin-top:-70%;width:30%;">
            <thead>
                <th style="width:60px">Rate ID</th>
                <th style="width:150px">Distance</th>
                <th style="width:150px">Price</th>  
            </thead>
           <tbody>
            <% for(Category category : categorys){ %>
            <tr>
                <td><% out.print(category.getRateId()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>     
            </tr>
            <% } %>
          </tbody>
         </table>
          
          </th>  
        </tr>
 
      </table>
         
  </form>   
     </div>       
   </div>
   </div>   
        
        
  </section>         
 
        <script>
            var table = document.getElementById("table"),rIndex;
            
           for(var i = 0; i < table.rows.length;i++)
           {
                table.rows[i].onclick = function()
              {
                rIndex =this.rowIndex;
                console.log(rIndex);
                
                document.getElementById("rate_id").value=this.cells[0].innerHTML;
                document.getElementById("distance").value=this.cells[1].innerHTML;
              document.getElementById("price").value=this.cells[2].innerHTML;
            }; 
           }
        </script>  
        
          <script>
           <% if(session.getAttribute("msg") != null) { %>
                    alert("<%= session.getAttribute("msg") %>");
            <% session.removeAttribute("msg"); } %>
       </script>
        
    </body>
</html>

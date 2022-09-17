<%-- 
    Document   : AddCustomerOrder
    Created on : Sep 14, 2022, 7:41:05 PM
    Author     : HP
--%>

<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.Dropdown"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
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

<%
    NewWebService_Service service1 = new NewWebService_Service();
    NewWebService customerProxy = service1.getNewWebServicePort();
    
    List<Category> categorys = customerProxy.getPriceRate();
        
%>
<%  
    String vehicle_no = request.getParameter("id");
    
    NewWebService_Service service2 = new NewWebService_Service();
    NewWebService customerProxy1 = service2.getNewWebServicePort();
    
    Vehicle vehicle = customerProxy1.getVehicleUserbyId("vehicle_no");
    
        
%>
<html>
    <head>
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
        
	<title style="text-align: center;">Booking Order</title>
	<link rel="icon" href="/GoCheeta_Client/User/UI/image/homepage/icon/logo.png">
    </head>
    <body>     
  
    <div class="sidebar">
    <div class="logo-details">
        <i><img src="image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">oCheetacab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="#">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="/GoCheeta_Client/User/UI/AddCustomerOrder.jsp" class="active">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Order Details</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">View Details</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-message' ></i>
            <span class="links_name">Feedback</span>
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
        <span class="dashboard">Order Details</span>
      </div>

    </nav>  
        
        <div>
            <div>
                        
    <table style="width:90%; height:780px;margin-left:5%;margin-bottom:2%">  
   
    <th style="width:85%; height:780px;" >
     <div class="container" style="width:85%; height:780px;margin-top:15%">
         <form action="/GoCheeta_Client/User/Function/addOrderHelper.jsp" method="post" class="login-email">
          
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Booking Order</p>
        <br>

       <table>
             <tr colspan="2">
              <div class="input-group">
                <input type="text" id="mobile" name="mobile" placeholder="Customer Mobile" required >
              </div>
             </th>
             
             <tr colspan="2">
               <div class="input-group">
                 <input type="email" id="order_email" name="order_email" placeholder="Email Address" required> 
               </div> 
             </tr>
  
           <tr colspan="2">
              <div class="input-group">
                <input type="text" id="pick_location" name="pick_location" placeholder="Pick Location"  required><br>
              </div>
            </tr> 
             
             <tr colspan="2">
               <div class="input-group">
                 <input type="text" id="drop_loction" name="drop_loction" placeholder="Drop Location" required><br>
               </div>   
             </tr>
  
            <tr >
                <td style="">
                <div class="input-group">          
                  <select id="area_branch" name="area_branch" style="font-size:0.9rem;"style="margin-right:20px;">
                   <option>Select Branch</option>
                   <% for(Branch branch: branches){ %>

                   %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                 </select>   
                 </div>
               </td>

              <td style="width:40%;padding-left:10px;">  
               <div class="input-group"style="width:300px;padding-left:10px;">          
                 <select id="city" name="city" style="font-size:0.9rem;">
                  <option>Select City</option>
                   <% for(Branch branch: branches){ %>

                   %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                 </select>   
                </div>         
             </td> 
         </tr>
            
        <tr>
            <td style="">
              <div class="input-group">
                <input type="text" id="price1" name="price1" placeholder="Price Rate" style="margin-right:1px;"disabled><br>
              </div>     
            </td>
        
            <td style="width:40%;padding-left:10px;">  
               <div class="input-group"style="width:300px;padding-left:10px;">    
                 <input type="text" id="distance" name="distance" placeholder="Total Distance" required style="width:300px;padding-left:10px;"><br>
             </div>   
            </td>
         </tr>
         <tr>
            <td></td>
            <td></td>
         </tr>
      </table>
                
        <div class="input-group">
             <input type="text" id="price" name="price" placeholder="Total Price" disabled ><br>
        </div>
       
        <div class="input-group">
             <input type="date" id="time" name="time" placeholder="Choose Date" required><br>
        </div>         

           <input type="hidden" id="vehicle_no" name="vehicle_no" placeholder="Vehicle No" value="<% out.print(vehicle.getVehicleNo()); %>" required>            
           <input type="hidden" id="v_type" name="v_type" placeholder="Vehicle Type" required value="<% out.print(vehicle.getVehicalType()); %>" >
           <input type="hidden" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" value="<% out.print(vehicle.getDriverMobile());%>" required>

        <div class="input-group">             
             <input type="submit" value="Accept" class="btn">
        </div> 
         </form> </div>  
       </th>
       
    <th style="width:400px;margin-left:-20%;margin-top:-20%" >
         <table id="table" class="table table-bordered" style="width:400px;margin-left:2%;margin-top:-40%;
        background: #FFF;
        box-shadow: 0 0 0px rgba(0,0,0,.3);
        padding: 40px 30px;">
        <thead>
         <th scope="col"style="text-align:center; ">No</th>
         <th scope="col"style="text-align:center;width:200px;">Vehicle TYpe</th>
         <th scope="col"style="text-align:center; ">Distance</th>
         <th scope="col"style="text-align:center; ">Price</th>

        </thead>
     <tbody>
            
            <% for(Category category:categorys){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(category.getCategoryId()); %></td>
                <td><% out.print(category.getName()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>  
    </th>
      
    </table>
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
                
                document.getElementById("price1").value=this.cells[3].innerHTML;
            }; 
           }
        </script>  
        
        
        <script>
	$(document).ready(function(){
    	// Get value on keyup funtion
    	$("#price1, #distance").keyup(function(){

    	var total=0;    	
    	var x = Number($("#price1").val());
    	var y = Number($("#distance").val());
    	var total=x * y;  

    	$('#price').val(total);

    });
});
</script>

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
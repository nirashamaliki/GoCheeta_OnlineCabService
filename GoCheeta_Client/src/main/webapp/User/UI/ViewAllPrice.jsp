


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
        <title>JSP Page</title>
        
        <style>
            .tableFixHead {
	    overflow-y: auto;
	    height:600px;
         
            margin-left:40px;
	  }
            .tableFixHead thead th {
	    position: sticky;
            top: 0;
	  }
        </style>
    </head>
    <body>
    <div class="tableFixHead">
        <table  class="table table-bordered" style="width:90%;margin-left:3%;margin-right:3%;margin-top:12%" id="myTable">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Category ID</th>
                <th scope="col"style="text-align:center; ">Category Name</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th>
          
         
            </thead>
        <tbody>
            
            <% for(Category category:categorys){ %>
            <tr> 
                <td style="width:20%;text-align: center"><% out.print(category.getCategoryId()); %></td>
                <td><% out.print(category.getName()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>
          
            </tr>
            <% } %>
        </tbody>
    </table> 
    </div>   
</html>
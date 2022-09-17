<%-- 
    Document   : SearchDriverOrder
    Created on : Sep 16, 2022, 11:03:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <div class="container">
          <form class="form-inline" method="post" action="/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp">
          <input type="text" name="vehicle_no" class="form-control" placeholder="Search roll no..">
          <button type="submit" name="save" class="btn btn-primary">Search</button>
        </form>
       </div>
    </body>
</html>

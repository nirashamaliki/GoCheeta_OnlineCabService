<%-- 
    Document   : SearchFunction
    Created on : Sep 17, 2022, 7:51:27 AM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<body>

<h1>Search Data</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Email Id</td>
<td>Roll No</td>

</tr>
<%
try{

  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/gocheeta_db?allowPublicKeyRetrieval=true&useSSL=false&user=icbt&password=icbt");
  Statement  st =con.createStatement();

   String driver_mobile=request.getParameter("driver_mobile");

   String sql ="SELECT * FROM booking_details where driver_mobile='"+driver_mobile+"'";
   ResultSet rs = st.executeQuery(sql);
   
   while(rs.next()){
   %>
   <tr>
  
                <td><%=rs.getString("order_mobile") %></td>
                <td><%=rs.getString("pick_location") %></td>

   </tr>
   <%
  }

  } catch (Exception e) {
    e.printStackTrace();
  }
%>
</table>
</body>
</html>


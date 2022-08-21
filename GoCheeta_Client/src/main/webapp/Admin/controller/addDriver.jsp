
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   
    String name     = request.getParameter("name");
    String email    = request.getParameter("email");
    String mobile   = request.getParameter("mobile");
    String d_password = request.getParameter("d_password");
    String branch = request.getParameter("branch");
    String time_type = request.getParameter("time_type");
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
   
    if(customerProxy.addDriver(name,email,mobile,d_password,branch,time_type)) {
        //out.print("Successfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/AddNewDriver.jsp");
        
    }else{
        out.print("false");
    }

%>
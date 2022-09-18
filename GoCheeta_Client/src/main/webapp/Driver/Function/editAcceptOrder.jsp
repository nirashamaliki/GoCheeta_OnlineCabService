<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int order_id  = Integer.parseInt(request.getParameter("order_id"));
    String mobile     = request.getParameter("mobile");
    String order_email     = request.getParameter("order_email");
    String pick_location     = request.getParameter("pick_location");
    String drop_loction     = request.getParameter("drop_loction");
    String city     = request.getParameter("city");
    String area_branch     = request.getParameter("area_branch");
    String distance     = request.getParameter("distance");
    String price     = request.getParameter("price");    
    String time     = request.getParameter("time");     
    String vehicle_no     = request.getParameter("vehicle_no");     
    String v_type     = request.getParameter("v_type"); 
    String driver_mobile     = request.getParameter("driver_mobile");    
    String option     = request.getParameter("option");        
   
    UserWebService_Service service = new UserWebService_Service();
    UserWebService customerProxy = service.getUserWebServicePort();
    HttpSession sesion = request.getSession();
    
    if(customerProxy.updateAccept(order_id,mobile,order_email,pick_location,drop_loction,city,area_branch,distance,price,time,vehicle_no,v_type,driver_mobile,option)) {
    
        sesion.setAttribute("msg", "Your Order Active");
        response.sendRedirect("/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp");
        
    }else{

        sesion.setAttribute("msg","Sorry!!Your Order Active UnSuccessfully");
        response.sendRedirect("/GoCheeta_Client/Driver/UI/ViewDriverActiveBooking.jsp");

    }

%>

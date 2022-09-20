
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    int category_id = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    HttpSession sesion = request.getSession();
     
    if(customerProxy.deleteCategory(category_id)) {
        sesion.setAttribute("msg", "Delete Successfully!!");
        response.sendRedirect("/GoCheeta_Client/Category/UI/ViewAllPrice.jsp");

      
    }else {
        sesion.setAttribute("msg", "Delete Unsuccessfully!!");
        response.sendRedirect("/GoCheeta_Client/Category/UI/ViewAllPrice.jsp");
    }

%>
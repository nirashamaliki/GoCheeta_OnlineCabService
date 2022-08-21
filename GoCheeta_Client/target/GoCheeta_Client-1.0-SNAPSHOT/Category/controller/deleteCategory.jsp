
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    String category_id = (request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
    if(customerProxy.deleteCategory(category_id)) {
        out.print("Delete Successfully");
       response.sendRedirect("/GoCheeta_Client/Category/UI/ViewAllPrice.jsp");
    }else {
        out.print("Delete Unsuccessfully");
    }

%>
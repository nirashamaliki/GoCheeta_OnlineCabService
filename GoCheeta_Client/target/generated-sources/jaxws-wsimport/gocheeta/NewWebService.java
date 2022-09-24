
package gocheeta;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebService(name = "NewWebService", targetNamespace = "http://gocheeta/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface NewWebService {


    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Category>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPriceView", targetNamespace = "http://gocheeta/", className = "gocheeta.GetPriceView")
    @ResponseWrapper(localName = "getPriceViewResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetPriceViewResponse")
    @Action(input = "http://gocheeta/NewWebService/getPriceViewRequest", output = "http://gocheeta/NewWebService/getPriceViewResponse")
    public List<Category> getPriceView();

    /**
     * 
     * @param dPassword
     * @param dName
     * @param timeType
     * @param dEmail
     * @param branch
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "updateDriver", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateDriver")
    @ResponseWrapper(localName = "updateDriverResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateDriverResponse")
    @Action(input = "http://gocheeta/NewWebService/updateDriverRequest", output = "http://gocheeta/NewWebService/updateDriverResponse")
    public boolean updateDriver(
        @WebParam(name = "d_name", targetNamespace = "")
        String dName,
        @WebParam(name = "d_email", targetNamespace = "")
        String dEmail,
        @WebParam(name = "d_password", targetNamespace = "")
        String dPassword,
        @WebParam(name = "branch", targetNamespace = "")
        String branch,
        @WebParam(name = "time_type", targetNamespace = "")
        String timeType);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.User>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getUsers", targetNamespace = "http://gocheeta/", className = "gocheeta.GetUsers")
    @ResponseWrapper(localName = "getUsersResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetUsersResponse")
    @Action(input = "http://gocheeta/NewWebService/getUsersRequest", output = "http://gocheeta/NewWebService/getUsersResponse")
    public List<User> getUsers();

    /**
     * 
     * @param driverEmail
     * @return
     *     returns gocheeta.Driver
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getDriverbyEmail", targetNamespace = "http://gocheeta/", className = "gocheeta.GetDriverbyEmail")
    @ResponseWrapper(localName = "getDriverbyEmailResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetDriverbyEmailResponse")
    @Action(input = "http://gocheeta/NewWebService/getDriverbyEmailRequest", output = "http://gocheeta/NewWebService/getDriverbyEmailResponse")
    public Driver getDriverbyEmail(
        @WebParam(name = "driver_email", targetNamespace = "")
        String driverEmail);

    /**
     * 
     * @param name
     * @param rateId
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addCategory", targetNamespace = "http://gocheeta/", className = "gocheeta.AddCategory")
    @ResponseWrapper(localName = "addCategoryResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.AddCategoryResponse")
    @Action(input = "http://gocheeta/NewWebService/addCategoryRequest", output = "http://gocheeta/NewWebService/addCategoryResponse")
    public boolean addCategory(
        @WebParam(name = "name", targetNamespace = "")
        String name,
        @WebParam(name = "rate_id", targetNamespace = "")
        int rateId);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Vehicle>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getAllVehicle", targetNamespace = "http://gocheeta/", className = "gocheeta.GetAllVehicle")
    @ResponseWrapper(localName = "getAllVehicleResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetAllVehicleResponse")
    @Action(input = "http://gocheeta/NewWebService/getAllVehicleRequest", output = "http://gocheeta/NewWebService/getAllVehicleResponse")
    public List<Vehicle> getAllVehicle();

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.User>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getViewFeedbacks", targetNamespace = "http://gocheeta/", className = "gocheeta.GetViewFeedbacks")
    @ResponseWrapper(localName = "getViewFeedbacksResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetViewFeedbacksResponse")
    @Action(input = "http://gocheeta/NewWebService/getViewFeedbacksRequest", output = "http://gocheeta/NewWebService/getViewFeedbacksResponse")
    public List<User> getViewFeedbacks();

    /**
     * 
     * @param categoryId
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "deleteCategory", targetNamespace = "http://gocheeta/", className = "gocheeta.DeleteCategory")
    @ResponseWrapper(localName = "deleteCategoryResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.DeleteCategoryResponse")
    @Action(input = "http://gocheeta/NewWebService/deleteCategoryRequest", output = "http://gocheeta/NewWebService/deleteCategoryResponse")
    public boolean deleteCategory(
        @WebParam(name = "category_id", targetNamespace = "")
        int categoryId);

    /**
     * 
     * @param categoryId
     * @return
     *     returns gocheeta.Category
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getCategorybyId", targetNamespace = "http://gocheeta/", className = "gocheeta.GetCategorybyId")
    @ResponseWrapper(localName = "getCategorybyIdResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetCategorybyIdResponse")
    @Action(input = "http://gocheeta/NewWebService/getCategorybyIdRequest", output = "http://gocheeta/NewWebService/getCategorybyIdResponse")
    public Category getCategorybyId(
        @WebParam(name = "category_id", targetNamespace = "")
        int categoryId);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Branch>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getBranch", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranch")
    @ResponseWrapper(localName = "getBranchResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranchResponse")
    @Action(input = "http://gocheeta/NewWebService/getBranchRequest", output = "http://gocheeta/NewWebService/getBranchResponse")
    public List<Branch> getBranch();

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Category>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPriceRate", targetNamespace = "http://gocheeta/", className = "gocheeta.GetPriceRate")
    @ResponseWrapper(localName = "getPriceRateResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetPriceRateResponse")
    @Action(input = "http://gocheeta/NewWebService/getPriceRateRequest", output = "http://gocheeta/NewWebService/getPriceRateResponse")
    public List<Category> getPriceRate();

    /**
     * 
     * @param vehicleNo
     * @param driverMobile
     * @param vehicleModel
     * @param vehicalType
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addVehicle", targetNamespace = "http://gocheeta/", className = "gocheeta.AddVehicle")
    @ResponseWrapper(localName = "addVehicleResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.AddVehicleResponse")
    @Action(input = "http://gocheeta/NewWebService/addVehicleRequest", output = "http://gocheeta/NewWebService/addVehicleResponse")
    public boolean addVehicle(
        @WebParam(name = "driver_mobile", targetNamespace = "")
        int driverMobile,
        @WebParam(name = "vehicle_no", targetNamespace = "")
        String vehicleNo,
        @WebParam(name = "vehical_Type", targetNamespace = "")
        String vehicalType,
        @WebParam(name = "vehicle_model", targetNamespace = "")
        String vehicleModel);

    /**
     * 
     * @param distance
     * @param price
     * @param name
     * @param categoryId
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "updateCategory", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateCategory")
    @ResponseWrapper(localName = "updateCategoryResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateCategoryResponse")
    @Action(input = "http://gocheeta/NewWebService/updateCategoryRequest", output = "http://gocheeta/NewWebService/updateCategoryResponse")
    public boolean updateCategory(
        @WebParam(name = "category_id", targetNamespace = "")
        int categoryId,
        @WebParam(name = "name", targetNamespace = "")
        String name,
        @WebParam(name = "distance", targetNamespace = "")
        String distance,
        @WebParam(name = "price", targetNamespace = "")
        String price);

    /**
     * 
     * @param orderId
     * @param subject
     * @param description
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addFeedback", targetNamespace = "http://gocheeta/", className = "gocheeta.AddFeedback")
    @ResponseWrapper(localName = "addFeedbackResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.AddFeedbackResponse")
    @Action(input = "http://gocheeta/NewWebService/addFeedbackRequest", output = "http://gocheeta/NewWebService/addFeedbackResponse")
    public boolean addFeedback(
        @WebParam(name = "subject", targetNamespace = "")
        String subject,
        @WebParam(name = "description", targetNamespace = "")
        String description,
        @WebParam(name = "order_id", targetNamespace = "")
        int orderId);

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://gocheeta/", className = "gocheeta.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.HelloResponse")
    @Action(input = "http://gocheeta/NewWebService/helloRequest", output = "http://gocheeta/NewWebService/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Vehicle>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getViewAllVehicleDriver", targetNamespace = "http://gocheeta/", className = "gocheeta.GetViewAllVehicleDriver")
    @ResponseWrapper(localName = "getViewAllVehicleDriverResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetViewAllVehicleDriverResponse")
    @Action(input = "http://gocheeta/NewWebService/getViewAllVehicleDriverRequest", output = "http://gocheeta/NewWebService/getViewAllVehicleDriverResponse")
    public List<Vehicle> getViewAllVehicleDriver();

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Dropdown>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getVehicleTypeDrop", targetNamespace = "http://gocheeta/", className = "gocheeta.GetVehicleTypeDrop")
    @ResponseWrapper(localName = "getVehicleTypeDropResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetVehicleTypeDropResponse")
    @Action(input = "http://gocheeta/NewWebService/getVehicleTypeDropRequest", output = "http://gocheeta/NewWebService/getVehicleTypeDropResponse")
    public List<Dropdown> getVehicleTypeDrop();

    /**
     * 
     * @param driverMobile
     * @return
     *     returns gocheeta.Vehicle
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getDriverbyMobile", targetNamespace = "http://gocheeta/", className = "gocheeta.GetDriverbyMobile")
    @ResponseWrapper(localName = "getDriverbyMobileResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetDriverbyMobileResponse")
    @Action(input = "http://gocheeta/NewWebService/getDriverbyMobileRequest", output = "http://gocheeta/NewWebService/getDriverbyMobileResponse")
    public Vehicle getDriverbyMobile(
        @WebParam(name = "driver_mobile", targetNamespace = "")
        int driverMobile);

    /**
     * 
     * @param vehicleNo
     * @param driverMobile
     * @param vehicleModel
     * @param vehicalType
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "updateVehicleDriver", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateVehicleDriver")
    @ResponseWrapper(localName = "updateVehicleDriverResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.UpdateVehicleDriverResponse")
    @Action(input = "http://gocheeta/NewWebService/updateVehicleDriverRequest", output = "http://gocheeta/NewWebService/updateVehicleDriverResponse")
    public boolean updateVehicleDriver(
        @WebParam(name = "driver_mobile", targetNamespace = "")
        int driverMobile,
        @WebParam(name = "vehicle_no", targetNamespace = "")
        String vehicleNo,
        @WebParam(name = "vehical_Type", targetNamespace = "")
        String vehicalType,
        @WebParam(name = "vehicle_model", targetNamespace = "")
        String vehicleModel);

    /**
     * 
     * @param vehicleNo
     * @return
     *     returns gocheeta.Vehicle
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getVehicleUserbyId", targetNamespace = "http://gocheeta/", className = "gocheeta.GetVehicleUserbyId")
    @ResponseWrapper(localName = "getVehicleUserbyIdResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetVehicleUserbyIdResponse")
    @Action(input = "http://gocheeta/NewWebService/getVehicleUserbyIdRequest", output = "http://gocheeta/NewWebService/getVehicleUserbyIdResponse")
    public Vehicle getVehicleUserbyId(
        @WebParam(name = "vehicle_no", targetNamespace = "")
        String vehicleNo);

    /**
     * 
     * @param vehicleNo
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "deleteVehicleDriver", targetNamespace = "http://gocheeta/", className = "gocheeta.DeleteVehicleDriver")
    @ResponseWrapper(localName = "deleteVehicleDriverResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.DeleteVehicleDriverResponse")
    @Action(input = "http://gocheeta/NewWebService/deleteVehicleDriverRequest", output = "http://gocheeta/NewWebService/deleteVehicleDriverResponse")
    public boolean deleteVehicleDriver(
        @WebParam(name = "vehicle_no", targetNamespace = "")
        String vehicleNo);

}

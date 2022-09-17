
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
@WebService(name = "DriverWebService", targetNamespace = "http://gocheeta/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface DriverWebService {


    /**
     * 
     * @param dPassword
     * @param driverMobile
     * @param dName
     * @param timeType
     * @param dEmail
     * @param branch
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addDriver", targetNamespace = "http://gocheeta/", className = "gocheeta.AddDriver")
    @ResponseWrapper(localName = "addDriverResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.AddDriverResponse")
    @Action(input = "http://gocheeta/DriverWebService/addDriverRequest", output = "http://gocheeta/DriverWebService/addDriverResponse")
    public boolean addDriver(
        @WebParam(name = "driver_mobile", targetNamespace = "")
        int driverMobile,
        @WebParam(name = "d_email", targetNamespace = "")
        String dEmail,
        @WebParam(name = "d_name", targetNamespace = "")
        String dName,
        @WebParam(name = "d_password", targetNamespace = "")
        String dPassword,
        @WebParam(name = "branch", targetNamespace = "")
        String branch,
        @WebParam(name = "time_type", targetNamespace = "")
        String timeType);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Branch>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getBranchDrop", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranchDrop")
    @ResponseWrapper(localName = "getBranchDropResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranchDropResponse")
    @Action(input = "http://gocheeta/DriverWebService/getBranchDropRequest", output = "http://gocheeta/DriverWebService/getBranchDropResponse")
    public List<Branch> getBranchDrop();

    /**
     * 
     * @param vehicleNo
     * @return
     *     returns java.util.List<gocheeta.User>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getActiveBookingDetails", targetNamespace = "http://gocheeta/", className = "gocheeta.GetActiveBookingDetails")
    @ResponseWrapper(localName = "getActiveBookingDetailsResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetActiveBookingDetailsResponse")
    @Action(input = "http://gocheeta/DriverWebService/getActiveBookingDetailsRequest", output = "http://gocheeta/DriverWebService/getActiveBookingDetailsResponse")
    public List<User> getActiveBookingDetails(
        @WebParam(name = "vehicle_no", targetNamespace = "")
        String vehicleNo);

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
    @Action(input = "http://gocheeta/DriverWebService/helloRequest", output = "http://gocheeta/DriverWebService/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}

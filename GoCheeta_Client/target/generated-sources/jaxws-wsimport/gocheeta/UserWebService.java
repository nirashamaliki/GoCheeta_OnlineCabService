
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
@WebService(name = "UserWebService", targetNamespace = "http://gocheeta/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface UserWebService {


    /**
     * 
     * @param password
     * @param email
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginAdmin", targetNamespace = "http://gocheeta/", className = "gocheeta.LoginAdmin")
    @ResponseWrapper(localName = "loginAdminResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.LoginAdminResponse")
    @Action(input = "http://gocheeta/UserWebService/loginAdminRequest", output = "http://gocheeta/UserWebService/loginAdminResponse")
    public boolean loginAdmin(
        @WebParam(name = "email", targetNamespace = "")
        String email,
        @WebParam(name = "password", targetNamespace = "")
        String password);

    /**
     * 
     * @param password
     * @param email
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginCustomer", targetNamespace = "http://gocheeta/", className = "gocheeta.LoginCustomer")
    @ResponseWrapper(localName = "loginCustomerResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.LoginCustomerResponse")
    @Action(input = "http://gocheeta/UserWebService/loginCustomerRequest", output = "http://gocheeta/UserWebService/loginCustomerResponse")
    public boolean loginCustomer(
        @WebParam(name = "email", targetNamespace = "")
        String email,
        @WebParam(name = "password", targetNamespace = "")
        String password);

    /**
     * 
     * @return
     *     returns java.util.List<gocheeta.Vehicle>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getAllVehicle", targetNamespace = "http://gocheeta/", className = "gocheeta.GetAllVehicle")
    @ResponseWrapper(localName = "getAllVehicleResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetAllVehicleResponse")
    @Action(input = "http://gocheeta/UserWebService/getAllVehicleRequest", output = "http://gocheeta/UserWebService/getAllVehicleResponse")
    public List<Vehicle> getAllVehicle();

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
    @Action(input = "http://gocheeta/UserWebService/helloRequest", output = "http://gocheeta/UserWebService/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}

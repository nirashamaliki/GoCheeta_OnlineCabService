
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
     * @return
     *     returns java.util.List<gocheeta.Branch>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getBranch", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranch")
    @ResponseWrapper(localName = "getBranchResponse", targetNamespace = "http://gocheeta/", className = "gocheeta.GetBranchResponse")
    @Action(input = "http://gocheeta/DriverWebService/getBranchRequest", output = "http://gocheeta/DriverWebService/getBranchResponse")
    public List<Branch> getBranch();

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
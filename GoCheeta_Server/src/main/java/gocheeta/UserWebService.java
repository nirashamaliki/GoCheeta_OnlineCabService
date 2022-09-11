/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package gocheeta;

import Class.Customer;
import Class.DBUtil;
import Class.User;
import Class.Vehicle;
import Db.MySQLServer;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author HP
 */
@WebService(serviceName = "UserWebService")
public class UserWebService {

     DBUtil dbUtil = new MySQLServer();
    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "loginCustomer")
    public boolean loginCustomer(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        //Customer customer = new Customer(email,password);
        return this.dbUtil.loginCustomer(email,password);
    } 
    
    @WebMethod(operationName = "loginAdmin")
    public boolean loginAdmin(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        return this.dbUtil.loginAdmin(email,password);
    } 
    
    //Vehicle
    @WebMethod(operationName = "getAllVehicle")
    public List<Vehicle> getAllVehicle() {
        return this.dbUtil.getAllVehicle();
    }
    
    
    //userBook View
    @WebMethod(operationName = "getViewUsersBooks")
    public List<User> getViewUsersBooks(String email) {
        return this.dbUtil.getViewUsersBooks(email);
    }
    
    //customer register
     @WebMethod(operationName = "addCustomer")
     public boolean addCustomer(@WebParam(name = "email") String email,@WebParam(name = "name") String name,@WebParam(name = "mobile") String mobile,@WebParam(name = "password") String password) {
     Customer customer = new Customer(email,name,mobile,password);
     return this.dbUtil.addCustomer(customer);
    
     }
}

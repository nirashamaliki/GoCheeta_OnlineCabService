/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package gocheeta;

import Class.Branch;
import Class.Category;
import Class.Customer;
import Class.DBUtil;
import Class.Feedback;
import Class.User;
import Class.Vehicle;
import Db.MySQLServer;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;


@WebService(serviceName = "NewWebService")
public class NewWebService {
    DBUtil dbUtil = new MySQLServer();

    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "addCustomer")
    public boolean addCustomer(@WebParam(name = "name") String name,@WebParam(name = "email") String email,@WebParam(name = "mobile") String mobile,@WebParam(name = "password") String password) {
        Customer customer = new Customer(0, password, name, email, mobile);
        return this.dbUtil.addCustomer(customer);
    }
    
    @WebMethod(operationName = "getCustomers")
    public List<Customer> getCustomers() {
        return this.dbUtil.getCustomers();
    }
    
    @WebMethod(operationName = "deleteCustomer")
    public boolean deleteCustomer(@WebParam(name = "customerId") int customerId) {
        return this.dbUtil.deleteCustomer(customerId);
    }
    
    @WebMethod(operationName = "getCustomerbyId")
    public Customer getCustomerbyId(@WebParam(name = "customerId") int customerId) {
        return this.dbUtil.getCustomerbyId(customerId);
    }
    
    
    @WebMethod(operationName = "updateCustomer")
    public boolean updateCustomer(@WebParam(name = "customerId") int customerId, @WebParam(name = "name") String name, @WebParam(name = "email") String email, @WebParam(name = "mobile") String mobile, @WebParam(name = "password") String password) {
        Customer customer = new Customer(customerId, password, name, email, mobile);
        return this.dbUtil.updateCustomer(customer);
    }
    
    //user
     
    @WebMethod(operationName = "getUsers")
    public List<User> getUsers() {
        return this.dbUtil.getUsers();
    }
        
     //Branch
    
    @WebMethod(operationName = "getBranch")
    public List<Branch> getBranch() {
        return this.dbUtil.getBranch();
    }
    
    //Category with prices
    
    @WebMethod(operationName = "getPriceRate")
    public List<Category> getPriceRate() {
        return this.dbUtil.getPriceRate();
    }

    @WebMethod(operationName = "deleteCategory")
    public boolean deleteCategory(@WebParam(name = "category_id") int category_id) {
        return this.dbUtil.deleteCategory(category_id);
    }
    
    @WebMethod(operationName = "updateCategory")
    public boolean updateCategory(@WebParam(name = "category_id") int category_id,@WebParam(name = "name") String name,@WebParam(name = "distance") String distance,@WebParam(name = "price") String price) {
        Category category = new Category(category_id,name,distance,price);
        return this.dbUtil.updateCategory(category);
    }
    
   @WebMethod(operationName = "getCategorybyId")
    public Category getCategorybyId(@WebParam(name = "category_id") int category_id) {
        return this.dbUtil.getCategorybyId(category_id);
    }
    
    @WebMethod(operationName = "addCategory")
    public boolean addCategory(@WebParam(name = "name") String name,@WebParam(name = "rate_id") int rate_id) {
        Category category = new Category(0,name,rate_id);
        return this.dbUtil.addCategory(category);
    }

    //Price rate
    
    @WebMethod(operationName = "getPriceView")
    public List<Category> getPriceView() {
        return this.dbUtil.getPriceView();
    }
    
    //Vehicle
    
    @WebMethod(operationName = "getAllVehicle")
    public List<Vehicle> getAllVehicle() {
        return this.dbUtil.getAllVehicle();
    }
    
    //Feedback
    
    @WebMethod(operationName = "addFeedback")
    public boolean addFeedback(@WebParam(name = "subject") String subject,@WebParam(name = "description") String description,@WebParam(name = "order_id") int order_Id,@WebParam(name = "mobile") String mobile) {
        Feedback feedback = new Feedback(0,subject,description,order_Id);
        return this.dbUtil.addFeedback(feedback);
    }
   
    @WebMethod(operationName = "getFeedbackbyId")
    public Feedback getFeedbackbyId(@WebParam(name = "order_id") int order_id) {
        return this.dbUtil.getFeedbackbyId(order_id);
    }
    
    @WebMethod(operationName = "getFeedback")
    public List<Feedback> getFeedback() {
        return this.dbUtil.getFeedback();
    }
    
}

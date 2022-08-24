/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

import java.util.List;

public interface  DBUtil {
    
 // customer
    public boolean addCustomer(Customer customer);
    public List<Customer> getCustomers();
    public boolean deleteCustomer(int customerId);
    public Customer getCustomerbyId(int customerId);
    public boolean updateCustomer(Customer customer);
    
//user booking
    public List<User> getUsers(); 
    
//Driver    
    public boolean addDriver(Driver driver);
    
//Branch
    public List<Branch> getBranch();
    
//Category with prices    
    public List<Category>getPriceRate();
    public boolean deleteCategory(int category_id);
    public boolean updateCategory(Category category);
    public Category getCategorybyId(int category_id);
    public boolean addCategory(Category category);
   
    
 //Price Rate
     public List<Category>getPriceView();
    
 
 //Vehicles
    public List<Vehicle>getAllVehicle();
     
  
  //Feedback
  public boolean addFeedback(Feedback feedback);
//  public List<Feedback>getViewFeedback();
  public Feedback getFeedbackbyId(int order_id);
  public List<Feedback> getFeedback();
}
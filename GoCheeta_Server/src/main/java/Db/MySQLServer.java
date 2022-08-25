/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Db;

import Class.Branch;
import Class.Category;
import Class.Customer;
import Class.DBUtil;
import Class.Driver;
import Class.Feedback;
import Class.User;
import Class.Vehicle;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MySQLServer implements DBUtil {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLServer() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/gocheeta_db?allowPublicKeyRetrieval=true&useSSL=false&user=icbt&password=icbt");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());            
        }
    }   
    //customer

    @Override
    public List<Customer> getCustomers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM customer ORDER BY c_id DESC;");

            List<Customer> customers = new ArrayList<>();

            while (rs.next()) {
                Customer customer = new Customer(rs.getInt("c_id"), rs.getString("name"), rs.getString("email"), rs.getString("mobile"));
                customers.add(customer);
            }
            
            return customers;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
    @Override
    public boolean addCustomer(Customer customer) {
        try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `customer` (`name`, `email`, `mobile`, `password`) VALUES ('"+customer.getName()+"', '"+customer.getEmail()+"', '"+customer.getMobile()+"', '"+customer.getPassword()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;            
        } catch(SQLException e) {

            System.out.println(e.getMessage());
            return false;
        }
    }
      
    @Override
    public boolean deleteCustomer(int customerId) {
        try {
            
            this.stmt  = this.con.prepareCall("DELETE FROM customer WHERE customer.c_id = " + customerId);
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Customer getCustomerbyId(int customerId) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM customer WHERE customer.c_id = " + customerId);
            
            if(rs.next()) {
                Customer customer = new Customer(rs.getInt("c_id"), rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("mobile"));
                return customer;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
   
    public boolean updateCustomer(Customer customer) {
        try {
            
            this.stmt  = this.con.prepareCall("UPDATE `customer` SET `name` = '"+customer.getName()+"', `email` = '"+customer.getEmail()+"', `mobile` = '"+customer.getMobile()+"', `password` = '"+customer.getPassword()+"' WHERE (`c_id` = '"+customer.getCustomerId()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
   
     
    //Driver
   @Override
    public boolean addDriver(Driver driver) {
        try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `driver`('name','email','mobile','d_password','branch','time_type')"
                    + " VALUES ('"+driver.getD_name()+"','"+driver.getD_email()+"', '"+driver.getDriver_mobile()
                    +"', '"+driver.getD_password()+"','"+driver.getBranch()+"','"+driver.getTime_type()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;                                                                                                        
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
   @Override
    public List <Branch> getBranch() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM branch ;");

            List<Branch> branchs = new ArrayList<>();

            while (rs.next()) {
               Branch branch= new Branch(rs.getString("Branch"));
               branchs.add(branch);
            }
            
            return  branchs;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }  
   
    //Cayegory with price


    public List<Category> getPriceRate() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM category INNER JOIN price_rate ON price_rate.rate_id = category.rate_id ORDER BY category_id ASC;");
            
            List<Category> categorys = new ArrayList<>();

            while (rs.next()) {
                Category category = new Category(rs.getInt("category_id"), rs.getString("name"), rs.getInt("rate_id"), rs.getString("distance"), rs.getString("price"));
                   
                categorys.add(category);
            }
            
            return categorys;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
  
    public boolean deleteCategory(int category_id) {
        try {
            
            this.stmt  = this.con.prepareCall("DELETE FROM category WHERE category.category_id = " + category_id);
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Category getCategorybyId(int category_id) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM category INNER JOIN price_rate ON price_rate.rate_id = category.rate_id WHERE category_id = " + category_id);
            
            if(rs.next()) {
                Category category = new Category(rs.getInt("category_id"), rs.getString("name"), rs.getString("distance"), rs.getString("price"));             
                
                return category;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    @Override  
    public boolean updateCategory(Category category) {
        try {
            
            this.stmt  = this.con.prepareCall("UPDATE `category` INNER JOIN `price_rate` ON category.rate_id = price_rate.rate_id SET `name` = '"+category.getName()+"',`distance` = '"+category.getDistance()+"',`price` = '"+category.getPrice()+"'  WHERE (`category_id` = '"+category.getCategory_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public boolean addCategory(Category category) {
        try {
            
           this.stmt  = this.con.prepareCall("INSERT INTO `category` (`name`, `rate_id`) VALUES ('"+category.getName()+"', '"+category.getRate_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
       
  
    //Price rate
    
    public List<Category> getPriceView() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM  price_rate  ORDER BY rate_id ASC;");
            
            List<Category> categorys = new ArrayList<>();

            while (rs.next()) {
                Category category = new Category(rs.getInt("rate_id"), rs.getString("distance"), rs.getString("price"));
                   
                categorys.add(category);
            }
            
            return categorys;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
     
    
    //Users Booking
   
    @Override
    public List<User> getUsers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details ORDER BY order_id DESC;");

            List<User> users = new ArrayList<>();

            while (rs.next()) {
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString ("driver_mobile"), rs.getString("option"));
               users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }  
    
    
 /*   public List<Vehicle> getBookingAll() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details INNER JOIN price_rate ON price_rate.rate_id = category.rate_id WHERE category_id = " + category_id);
             ORDER BY order_id DESC;");

            List<User> users = new ArrayList<>();

            while (rs.next()) {
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString("option"));
               users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    } */
    
    
    //Vehicle

        public List<Vehicle> getAllVehicle() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT vehicle.vehicle_model,vehicle.vehical_Type,vehicle.Branch,vehicle.driver_mobile  FROM vehicle INNER JOIN driver ON driver.driver_mobile = vehicle.driver_mobile ORDER BY vehicle_no ASC;");
            
            List<Vehicle> vehicles = new ArrayList<>();

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getString("vehicle_model"),rs.getString("vehical_Type"), rs.getString("Branch"),rs.getInt("driver_mobile"));
                   
                vehicles .add(vehicle);
            }
            
            return vehicles;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
  
        
    //feedback
        
  /*  @Override
    public boolean addFeedback(Feedback feedback) {
        try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `feedback` (`subject`,`description`,`order_id`) VALUES ('"+feedback.getSubject()+"','"+feedback.getDescription()+"','"+feedback.getOrder_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
     */
    
    public Feedback getFeedbackbyId(int order_id) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM feedback WHERE feedback.order_id = " + order_id);
            
            if(rs.next()) {
                Feedback feedback = new Feedback(rs.getInt("order_id"));
                return feedback;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    
    @Override
    public List<Feedback> getFeedback() {
     
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details INNER JOIN feedback ON feedback.order_id = booking_details.order_id WHERE category_id = \" + category_id); ORDER BY order_id DESC;");

            List<Feedback> feedbacks = new ArrayList<>();

            while (rs.next()) {
               Feedback feedback= new Feedback(rs.getInt("feedback_id"),rs.getString("subject"),rs.getString("description"),rs.getInt("order_id"));
               feedbacks.add(feedback);
            }
            
            return feedbacks;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }      

    @Override
    public boolean addFeedback(Feedback feedback) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
        
}
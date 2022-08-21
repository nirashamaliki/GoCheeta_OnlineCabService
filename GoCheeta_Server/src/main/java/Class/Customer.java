/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Customer extends Person {
    private int customerId;
    private String password;

    public Customer(int customerId, String password, String name, String email, String mobile) {
        super(name, email, mobile);
        this.customerId = customerId;
        this.password = password;
    }
    
    public Customer(int customerId, String name, String email, String mobile) {
        super(name, email, mobile);
        this.customerId = customerId;
      
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
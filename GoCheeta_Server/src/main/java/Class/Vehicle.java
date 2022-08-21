/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Vehicle extends Driver{
    
     private String vehicle_no;
     private String Branch;
     private String vehical_Type;
     private String vehicle_model;

    public Vehicle(String vehicle_no, String Branch, String vehical_Type, String vehicle_model, String d_email, String d_password, String branch, String time_type, int driver_mobile) {
        super(d_email, d_password, branch, time_type, driver_mobile);
        this.vehicle_no = vehicle_no;
        this.Branch = Branch;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }


    public Vehicle(String vehicle_model, String vehical_Type,String Branch,int driver_mobile) {
        super(driver_mobile);
        this.Branch = Branch;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }


    public String getVehicle_no() {
        return vehicle_no;
    }

    public String getBranch() {
        return Branch;
    }

    public String getVehical_Type() {
        return vehical_Type;
    }

    public void setVehicle_no(String vehicle_no) {
        this.vehicle_no = vehicle_no;
    }

    public void setBranch(String Branch) {
        this.Branch = Branch;
    }

    public void setVehical_Type(String vehical_Type) {
        this.vehical_Type = vehical_Type;
    }

    public String getVehicle_model() {
        return vehicle_model;
    }

    public void setVehicle_model(String vehical_model) {
        this.vehicle_model = vehical_model;
    }
  
     
}

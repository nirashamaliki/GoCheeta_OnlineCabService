/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

   public class User extends Person {
    
    private int order_Id;
    private String pick_location;
    private String drop_loction;
    private String area_branch;
    private String distance;
    private String price;
    private String time;
    private String v_type;
    private String driver_mobile;
    private String option="No Active";
    
    

    public User(int order_Id,String mobile,String pick_location, String drop_loction, String area_branch, String distance,String price,String time,String v_type,String driver_mobile,String option) {
         
        super(mobile);
        
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.option = option;
        this.v_type = v_type;
        this.driver_mobile = driver_mobile;
       
    }

    public int getOrder_Id() {
        return order_Id;
    }

    public String getPick_location() {
        return pick_location;
    }

    public String getDrop_loction() {
        return drop_loction;
    }

    public String getArea_branch() {
        return area_branch;
    }

    public String getDistance() {
        return distance;
    }

    public String getPrice() {
        return price;
    }

    public String getTime() {
        return time;
    }

    public String getV_type() {
        return v_type;
    }

    public String getOption() {
        return option;
    }

    public void setOrder_Id(int order_Id) {
        this.order_Id = order_Id;
    }

    public void setPick_location(String pick_location) {
        this.pick_location = pick_location;
    }

    public void setDrop_loction(String drop_loction) {
        this.drop_loction = drop_loction;
    }

    public void setArea_branch(String area_branch) {
        this.area_branch = area_branch;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setV_type(String v_type) {
        this.v_type = v_type;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public String  getDriver_mobile() {
        return driver_mobile;
    }

    public void setDriver_mobile(String  driver_mobile) {
        this.driver_mobile = driver_mobile;
    }
    
    
   
}
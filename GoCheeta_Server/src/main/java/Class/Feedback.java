/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Feedback extends User {

    int feedback_id;
    String subject;
    String description;

    public Feedback(int feedback_id, String subject, String description, int order_Id, String mobile, String pick_location, String drop_loction, String area_branch, String distance, String price, String time, String v_type, String driver_mobile, String option) {
        super(order_Id, mobile, pick_location, drop_loction, area_branch, distance, price, time, v_type, driver_mobile, option);
        this.feedback_id = feedback_id;
        this.subject = subject;
        this.description = description;
    }
    
    

    public int getFeedback_id() {
        return feedback_id;
    }

    public String getSubject() {
        return subject;
    }

    public String getDescription() {
        return description;
    }


    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    

}

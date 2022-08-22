
package gocheeta;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for user complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="user">
 *   &lt;complexContent>
 *     &lt;extension base="{http://gocheeta/}person">
 *       &lt;sequence>
 *         &lt;element name="area_branch" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="distance" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="driver_mobile" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="drop_loction" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="option" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="order_Id" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="pick_location" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="price" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="time" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="v_type" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "user", propOrder = {
    "areaBranch",
    "distance",
    "driverMobile",
    "dropLoction",
    "option",
    "orderId",
    "pickLocation",
    "price",
    "time",
    "vType"
})
public class User
    extends Person
{

    @XmlElement(name = "area_branch")
    protected String areaBranch;
    protected String distance;
    @XmlElement(name = "driver_mobile")
    protected String driverMobile;
    @XmlElement(name = "drop_loction")
    protected String dropLoction;
    protected String option;
    @XmlElement(name = "order_Id")
    protected int orderId;
    @XmlElement(name = "pick_location")
    protected String pickLocation;
    protected String price;
    protected String time;
    @XmlElement(name = "v_type")
    protected String vType;

    /**
     * Gets the value of the areaBranch property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAreaBranch() {
        return areaBranch;
    }

    /**
     * Sets the value of the areaBranch property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAreaBranch(String value) {
        this.areaBranch = value;
    }

    /**
     * Gets the value of the distance property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDistance() {
        return distance;
    }

    /**
     * Sets the value of the distance property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDistance(String value) {
        this.distance = value;
    }

    /**
     * Gets the value of the driverMobile property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDriverMobile() {
        return driverMobile;
    }

    /**
     * Sets the value of the driverMobile property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDriverMobile(String value) {
        this.driverMobile = value;
    }

    /**
     * Gets the value of the dropLoction property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDropLoction() {
        return dropLoction;
    }

    /**
     * Sets the value of the dropLoction property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDropLoction(String value) {
        this.dropLoction = value;
    }

    /**
     * Gets the value of the option property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOption() {
        return option;
    }

    /**
     * Sets the value of the option property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOption(String value) {
        this.option = value;
    }

    /**
     * Gets the value of the orderId property.
     * 
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * Sets the value of the orderId property.
     * 
     */
    public void setOrderId(int value) {
        this.orderId = value;
    }

    /**
     * Gets the value of the pickLocation property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPickLocation() {
        return pickLocation;
    }

    /**
     * Sets the value of the pickLocation property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPickLocation(String value) {
        this.pickLocation = value;
    }

    /**
     * Gets the value of the price property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPrice() {
        return price;
    }

    /**
     * Sets the value of the price property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPrice(String value) {
        this.price = value;
    }

    /**
     * Gets the value of the time property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTime() {
        return time;
    }

    /**
     * Sets the value of the time property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTime(String value) {
        this.time = value;
    }

    /**
     * Gets the value of the vType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getVType() {
        return vType;
    }

    /**
     * Sets the value of the vType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setVType(String value) {
        this.vType = value;
    }

}


package gocheeta;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gocheeta package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _LoginAdmin_QNAME = new QName("http://gocheeta/", "loginAdmin");
    private final static QName _LoginCustomer_QNAME = new QName("http://gocheeta/", "loginCustomer");
    private final static QName _HelloResponse_QNAME = new QName("http://gocheeta/", "helloResponse");
    private final static QName _LoginAdminResponse_QNAME = new QName("http://gocheeta/", "loginAdminResponse");
    private final static QName _Hello_QNAME = new QName("http://gocheeta/", "hello");
    private final static QName _LoginCustomerResponse_QNAME = new QName("http://gocheeta/", "loginCustomerResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gocheeta
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link LoginAdmin }
     * 
     */
    public LoginAdmin createLoginAdmin() {
        return new LoginAdmin();
    }

    /**
     * Create an instance of {@link LoginCustomer }
     * 
     */
    public LoginCustomer createLoginCustomer() {
        return new LoginCustomer();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link LoginAdminResponse }
     * 
     */
    public LoginAdminResponse createLoginAdminResponse() {
        return new LoginAdminResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link LoginCustomerResponse }
     * 
     */
    public LoginCustomerResponse createLoginCustomerResponse() {
        return new LoginCustomerResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdmin }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "loginAdmin")
    public JAXBElement<LoginAdmin> createLoginAdmin(LoginAdmin value) {
        return new JAXBElement<LoginAdmin>(_LoginAdmin_QNAME, LoginAdmin.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginCustomer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "loginCustomer")
    public JAXBElement<LoginCustomer> createLoginCustomer(LoginCustomer value) {
        return new JAXBElement<LoginCustomer>(_LoginCustomer_QNAME, LoginCustomer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdminResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "loginAdminResponse")
    public JAXBElement<LoginAdminResponse> createLoginAdminResponse(LoginAdminResponse value) {
        return new JAXBElement<LoginAdminResponse>(_LoginAdminResponse_QNAME, LoginAdminResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginCustomerResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "loginCustomerResponse")
    public JAXBElement<LoginCustomerResponse> createLoginCustomerResponse(LoginCustomerResponse value) {
        return new JAXBElement<LoginCustomerResponse>(_LoginCustomerResponse_QNAME, LoginCustomerResponse.class, null, value);
    }

}

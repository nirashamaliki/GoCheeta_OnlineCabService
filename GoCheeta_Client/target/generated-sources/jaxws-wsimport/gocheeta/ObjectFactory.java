
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

    private final static QName _AddDriverResponse_QNAME = new QName("http://gocheeta/", "addDriverResponse");
    private final static QName _HelloResponse_QNAME = new QName("http://gocheeta/", "helloResponse");
    private final static QName _GetBranchResponse_QNAME = new QName("http://gocheeta/", "getBranchResponse");
    private final static QName _Hello_QNAME = new QName("http://gocheeta/", "hello");
    private final static QName _AddDriver_QNAME = new QName("http://gocheeta/", "addDriver");
    private final static QName _GetBranch_QNAME = new QName("http://gocheeta/", "getBranch");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gocheeta
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AddDriverResponse }
     * 
     */
    public AddDriverResponse createAddDriverResponse() {
        return new AddDriverResponse();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link GetBranchResponse }
     * 
     */
    public GetBranchResponse createGetBranchResponse() {
        return new GetBranchResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link AddDriver }
     * 
     */
    public AddDriver createAddDriver() {
        return new AddDriver();
    }

    /**
     * Create an instance of {@link GetBranch }
     * 
     */
    public GetBranch createGetBranch() {
        return new GetBranch();
    }

    /**
     * Create an instance of {@link Branch }
     * 
     */
    public Branch createBranch() {
        return new Branch();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddDriverResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "addDriverResponse")
    public JAXBElement<AddDriverResponse> createAddDriverResponse(AddDriverResponse value) {
        return new JAXBElement<AddDriverResponse>(_AddDriverResponse_QNAME, AddDriverResponse.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBranchResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getBranchResponse")
    public JAXBElement<GetBranchResponse> createGetBranchResponse(GetBranchResponse value) {
        return new JAXBElement<GetBranchResponse>(_GetBranchResponse_QNAME, GetBranchResponse.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link AddDriver }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "addDriver")
    public JAXBElement<AddDriver> createAddDriver(AddDriver value) {
        return new JAXBElement<AddDriver>(_AddDriver_QNAME, AddDriver.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBranch }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getBranch")
    public JAXBElement<GetBranch> createGetBranch(GetBranch value) {
        return new JAXBElement<GetBranch>(_GetBranch_QNAME, GetBranch.class, null, value);
    }

}

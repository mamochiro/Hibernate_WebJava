package order;
// Generated Oct 30, 2016 11:47:19 PM by Hibernate Tools 4.3.1



/**
 * Orders generated by hbm2java
 */
public class Orders  implements java.io.Serializable {


     private Integer id;
     private int idtype;
     private String type;
     private int price;
     private int no;
     private int priceResult;

    public Orders() {
    }

    public Orders(int idtype, String type, int price, int no, int priceResult) {
       this.idtype = idtype;
       this.type = type;
       this.price = price;
       this.no = no;
       this.priceResult = priceResult;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public int getIdtype() {
        return this.idtype;
    }
    
    public void setIdtype(int idtype) {
        this.idtype = idtype;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public int getPrice() {
        return this.price;
    }
    
    public void setPrice(int price) {
        this.price = price;
    }
    public int getNo() {
        return this.no;
    }
    
    public void setNo(int no) {
        this.no = no;
    }
    public int getPriceResult() {
        return this.priceResult;
    }
    
    public void setPriceResult(int priceResult) {
        this.priceResult = priceResult;
    }




}


package BookStore.Model;

public class ProductDetails {
    private int productid;
    private int publisherid;
    private int cateid;
    private int saleid;

    public ProductDetails() {
    }

    public ProductDetails(int productid, int publisherid, int cateid, int saleid) {
        this.productid = productid;
        this.publisherid = publisherid;
        this.cateid = cateid;
        this.saleid = saleid;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getPublisherid() {
        return publisherid;
    }

    public void setPublisherid(int publisherid) {
        this.publisherid = publisherid;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public int getSaleid() {
        return saleid;
    }

    public void setSaleid(int saleid) {
        this.saleid = saleid;
    }

    @Override
    public String toString() {
        return "ProductDetails{" +
                "productid=" + productid +
                ", publisherid=" + publisherid +
                ", cateid=" + cateid +
                ", saleid=" + saleid +
                '}';
    }
}

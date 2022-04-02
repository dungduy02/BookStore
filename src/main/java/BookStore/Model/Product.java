package BookStore.Model;

public class Product{
    private int id;
    private String code;
    private String name;
    private String img;
    private int price;
    private String description;
    private int quantity;
    private int publisherid;
    private int categoryid;
    private int saleid;
    private int authorid;

    public Product() {
    }

    public Product(int id, String code, String name, String img, int price, String description, int quantity, int publisherid, int categoryid, int saleid, int authorid) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.img = img;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.publisherid = publisherid;
        this.categoryid = categoryid;
        this.saleid = saleid;
        this.authorid = authorid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPublisherid() {
        return publisherid;
    }

    public void setPublisherid(int publisherid) {
        this.publisherid = publisherid;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    public int getSaleid() {
        return saleid;
    }

    public void setSaleid(int saleid) {
        this.saleid = saleid;
    }

    public int getAuthorid() {
        return authorid;
    }

    public void setAuthorid(int authorid) {
        this.authorid = authorid;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", publisherid=" + publisherid +
                ", categoryid=" + categoryid +
                ", saleid=" + saleid +
                ", authorid=" + authorid +
                '}';
    }
}
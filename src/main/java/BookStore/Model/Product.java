package BookStore.Model;

public class Product {
    private int id;
    private String name;
    private String img;
    private String description;
    private long price;

    public Product(int id, String name, String img, String description, long price) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.description = description;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" +  "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                '}';
    }
}
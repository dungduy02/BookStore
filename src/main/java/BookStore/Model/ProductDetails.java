package BookStore.Model;

public class ProductDetails {
    private int id;
    private String name;
    private String img;
    private int price;
    private String description;
    private String publisher;
    private String category;
    private int pricesale;
    private String author;

    public ProductDetails() {
    }

    public ProductDetails(int id, String name, String img, int price, String description, String publisher, String category, int pricesale, String author) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.description = description;
        this.publisher = publisher;
        this.category = category;
        this.pricesale = pricesale;
        this.author = author;
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

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPricesale() {
        return pricesale;
    }

    public void setPricesale(int pricesale) {
        this.pricesale = pricesale;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "ProductDetails{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", publisher='" + publisher + '\'' +
                ", category='" + category + '\'' +
                ", pricesale=" + pricesale +
                ", author='" + author + '\'' +
                '}';
    }
}

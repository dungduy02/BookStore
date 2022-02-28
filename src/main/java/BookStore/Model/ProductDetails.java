package BookStore.Model;

public class ProductDetails {
    private long id;
    private String name;
    private String picture;
    private long price;
    private String description;
    private String publisher;
    private String cate;
    private String namesale;
    private long pricesale;


    public ProductDetails(long id, String name, String picture, long price, String description, String publisher, String cate, String namesale, long pricesale) {
        this.id = id;
        this.name = name;
        this.picture = picture;
        this.price = price;
        this.description = description;
        this.publisher = publisher;
        this.cate = cate;
        this.namesale = namesale;
        this.pricesale = pricesale;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
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

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getNamesale() {
        return namesale;
    }

    public void setNamesale(String namesale) {
        this.namesale = namesale;
    }

    public long getPricesale() {
        return pricesale;
    }

    public void setPricesale(long pricesale) {
        this.pricesale = pricesale;
    }

    @Override
    public String toString() {
        return "ProductDetails{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", picture='" + picture + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", publisher='" + publisher + '\'' +
                ", cate='" + cate + '\'' +
                ", namesale='" + namesale + '\'' +
                ", pricesale=" + pricesale +
                '}';
    }
}

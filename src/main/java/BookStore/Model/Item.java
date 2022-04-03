package BookStore.Model;

public class Item extends AbstracModel{

    private Integer cartId;
    private Integer quantity;
    private Integer productid;
    private Cart cart;
    private Product product;
    private long price;


    public Item() {
    }

    private Product product;


    public Item() {
    }

    public Item(int quanty, Product product) {
        this.quanty = quanty;

        this.product = product;
    }

    public int getQuanty() {
        return quanty;
    }

    public void setQuanty(int quanty) {
        this.quanty = quanty;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

//    public void sub(){
//        if(quantity > 1)
//            --quantity;
//        else
//            quantity = 1;
//    }
//    public void plus(){
//        ++quantity;
//    }

    public void update(int productId, int quantity){
        if (product.getId() == productId) {
           setQuantity(quantity);
        }
    }

    }

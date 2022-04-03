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

    public Item(int quantity, Product product) {
        this.quantity = quantity;

        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quanty) {
        this.quantity = quanty;
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

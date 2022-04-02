package BookStore.Model;

public class Item extends AbstracModel{
    private int quanty;

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
}

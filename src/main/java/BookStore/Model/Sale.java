package BookStore.Model;

public class Sale {
    private int id;
    private String percent;
    private int priceSale;

    public Sale() {
    }

    public Sale(int id, String percent, int priceSale) {
        this.id = id;
        this.percent = percent;
        this.priceSale = priceSale;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    public int getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(int priceSale) {
        this.priceSale = priceSale;
    }

    @Override
    public String toString() {
        return "Sale{" +
                "id=" + id +
                ", percent='" + percent + '\'' +
                ", priceSale=" + priceSale +
                '}';
    }
}

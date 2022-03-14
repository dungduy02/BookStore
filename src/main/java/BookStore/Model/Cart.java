package BookStore.Model;

import java.util.List;

public class Cart extends AbstracModel{
    List<Item> items ;
    private Integer customerId;

    public Cart() {
    }

    public Cart(List<Item> items, Integer customerId) {
        this.items = items;
        this.customerId = customerId;
    }


    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }
    public Integer totalPrice(){
        Integer total = 0;
        for (Item item: items){
            total += item.getQuantity() * item.getProduct().getPrice();
        }
        return total;
    }
    public Item getItem(Integer itemid){
        for (Item it: items){
            if (it.getId() == itemid){

                return it;
            }
        }
        return null;
    }
    public boolean removeItem(Integer itemId){
        for (Item item : items){
            if (item.getId() == itemId){
                items.remove(item);
                return true;
            }
        }
        return true;
    }
}

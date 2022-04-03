package BookStore.Model;
import BookStore.service.IProductService;

import javax.inject.Inject;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.http.HttpSession;

import java.util.List;

public class Cart extends AbstracModel{
    @Inject IProductService productService;
    HashMap<String,Item> cart;


    public Cart(){
        cart = new HashMap<>();
    }

    public Cart(HashMap<String, Item> cart) {
        this.cart = cart;
    }

    public HashMap<String, Item> getCart() {
        return cart;
    }

    public void setCart(HashMap<String, Item> cart) {
        this.cart = cart;
    }
    public void addItem(String idproduct){
        if (cart.containsKey(idproduct)){
            Item item = cart.get(idproduct);
            item.setQuanty(item.getQuanty() + 1);

        }else {
            Product product = productService.getProductById(idproduct);
            Item item = new Item();
            item.setProduct(product);
            item.setQuanty(1);
            cart.put(idproduct,item);


        }

    }

    public ArrayList<Item> getListItems(){
        ArrayList<Item> listItem = new ArrayList<>();
        for (Item i: cart.values()){
            listItem.add(i);
        }
        return listItem;
    public List<Item> removeItem(Integer itemId){
        for (Item item : items){
            if (item.getProduct().getId() == itemId){
                items.remove(item);
                return items;
            }
//            return items;
        }
        return items;
    }
    public long size(){
        return items.size();
    }

    public static Cart getCart(HttpSession session){
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public void commit(HttpSession session){
        session.setAttribute("cart", this);
    }

    public void update(int productId, int quantity){
        Item item = items.get(productId);

        item.setQuantity(quantity + item.getQuantity());

        if (item.getQuantity() <= 0) {
            items.remove(productId);
        }
        
    }
    public Item getItem1(Integer itemId){
        for (Item cd : items) {
            if(cd.getProduct().getId() == itemId)
                return cd;
        }
        return null;
    }

}

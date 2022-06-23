package BookStore.Dao;

import BookStore.Model.Cart;
import BookStore.Model.User;

public interface ICartDAO {
    Cart findByCustomerId(Integer customer_id);
    Cart findById(Integer id);
    void insert(Cart cart, User user);



}

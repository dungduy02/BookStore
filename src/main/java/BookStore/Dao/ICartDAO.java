package BookStore.Dao;

import BookStore.Model.Cart;

public interface ICartDAO {
    Cart findByCustomerId(Integer customer_id);
    Cart findById(Integer id);
    Integer insert(Cart cart);



}

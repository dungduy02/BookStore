package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.Item;

public interface ICartService {
    Cart findByCustomerId(Integer customerId);
    Cart insert(Cart cart);

}

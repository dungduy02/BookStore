package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.User;

import java.util.ArrayList;
import java.util.List;

public interface ICartService {
    Cart findByCustomerId(Integer customerId);
    void insert(Cart cart, User user);

}

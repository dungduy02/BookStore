package BookStore.service.impl;

import BookStore.Dao.ICartDAO;
import BookStore.Dao.impl.CartDAO;
import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Product;
import BookStore.config.ConnectionPool;
import BookStore.mapper.ProductMapper;
import BookStore.Model.User;
import BookStore.service.ICartService;

import javax.inject.Inject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class CartService implements ICartService {

    @Inject
    private ICartDAO cartDAO;

    @Override
    public Cart findByCustomerId(Integer customerId) {
        Cart cart = cartDAO.findByCustomerId(customerId);
        return cart;
    }

    @Override
    public void insert(Cart cart, User user) {
//        Integer id = cartDAO.insert(cart);
//        return cartDAO.findById(id);
        cartDAO.insert(cart, user);
    }

    public static void main(String[] args) {
        CartDAO cd = new CartDAO();
//        cd.insert()

        List<Cart> c = (List<Cart>) cd.findByCustomerId(1);
        System.out.println(c);
    }
}

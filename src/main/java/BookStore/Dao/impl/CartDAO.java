package BookStore.Dao.impl;

import BookStore.Dao.ICart;
import BookStore.Model.Cart;
import BookStore.mapper.CartMapper;

import java.util.List;

public class CartDAO extends AbstractDAO<Cart> implements ICart {
    @Override
    public Cart findByCustomer(Integer customerId) {
        String sql = "SELECT * FROM cart WHERE user_id = ?";
        List<Cart> list = query(sql,new CartMapper(),customerId);
        return list.size() == 0 ? null : list.get(0);
    }
}

package BookStore.Dao.impl;

import BookStore.Dao.ICartDAO;
import BookStore.Model.Cart;
import BookStore.mapper.CartMapper;

import java.util.List;

public class CartDAO extends AbstractDAO<Cart> implements ICartDAO {

    @Override
    public Cart findByCustomerId(Integer customer_id) {
        String sql = "select * from cart where use_id = ?";
        List<Cart> list = query(sql, new CartMapper(), customer_id);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Cart findById(Integer id) {
        String sql = "select * from cart where id = ?";
        List<Cart> list = query(sql, new CartMapper(), id);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Integer insert(Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO cart " +
                "(user_id) ");
        sql.append("VALUES (?) ");
        return insert(sql.toString(),
                cart.getCustomerId());


    }
//       String sql = "insert into cart (user_id) value (?)";
//       return insert(sql, cart.getCustomerId());
}

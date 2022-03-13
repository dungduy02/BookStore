package BookStore.mapper;

import BookStore.Model.Cart;

import java.sql.ResultSet;

public class CartMapper implements RowMapper<Cart>{


    @Override
    public Cart mapRow(ResultSet rs) {
        Cart cart = new Cart();
        try {
            cart.setId(rs.getInt("id"));
            cart.setCustomerId(rs.getInt("user_id"));

            return cart;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}

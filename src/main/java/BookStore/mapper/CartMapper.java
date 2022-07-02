package BookStore.mapper;

import BookStore.Model.Cart;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartMapper implements RowMapper<Cart>{


    @Override
    public Cart mapRow(ResultSet rs) {
            Cart cart = new Cart();


        return cart;

    }
}

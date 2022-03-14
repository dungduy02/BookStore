package BookStore.mapper;

import BookStore.Model.Item;

import java.sql.ResultSet;

public class ItemMapper implements RowMapper<Item>{

    @Override
    public Item mapRow(ResultSet rs) {
            Item item = new Item();
        try {
            item.setId(rs.getInt("id"));
            item.setCartId(rs.getInt("cart_id"));
            item.setQuantity(rs.getInt("quantity"));
            item.setProductid(rs.getInt("product_id"));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

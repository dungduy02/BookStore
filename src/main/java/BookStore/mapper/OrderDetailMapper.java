package BookStore.mapper;

import BookStore.Model.Info;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDetailMapper implements RowMapper<OrderDetails>{
    @Override
    public OrderDetails mapRow(ResultSet rs) {
        OrderDetails order = new OrderDetails();
        try {
            order.setId(rs.getInt("id"));
            order.setFirstName(rs.getString("firstname"));
            order.setLastName(rs.getString("lastname"));
            order.setAddress(rs.getString("address"));
            order.setConscious(rs.getString("conscious"));
            order.setDistric(rs.getString("district"));
            order.setWards(rs.getString("wards"));
            order.setPhone(rs.getString("phone"));
            order.setEmail(rs.getString("email"));
            order.setNote(rs.getString("note"));
            order.setCart_id(rs.getInt("cart_id"));

        } catch (SQLException e) {
            return null;
        }
        return order;
    }
}

package BookStore.Dao.impl;

import BookStore.Dao.IOrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.Order;
import BookStore.Model.OrderDetails;
import BookStore.mapper.OrderDetailMapper;

public class OrderDetailDAO extends AbstractDAO<OrderDetails> implements IOrderDetailDAO {

    @Override
    public OrderDetails findOneById(Integer id) {
        String sql = "select * from detail_order where id = ?";
        return query(sql, new OrderDetailMapper(), id).get(0);
    }

    @Override
    public Integer insert(OrderDetails orderDetails, Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO detail_order " +
                "(firstName, lastName, address, conscious, distric, wards, phone, email, note, cart_id)");
        sql.append("VALUES (?,?,?,?,?,?,?,?,?,?) ");
        return insert(sql.toString(),
                orderDetails.getFirstName(),
                orderDetails.getLastName(),
                orderDetails.getAddress(),
                orderDetails.getConscious(),
                orderDetails.getDistric(),
                orderDetails.getWards(),
                orderDetails.getPhone(),
                orderDetails.getEmail(),
                orderDetails.getNote(),
                cart.getId());
    }




}

package BookStore.Dao.impl;

import BookStore.Dao.IOrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.Order;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;
import BookStore.config.ConnectionPool;
import BookStore.mapper.CartMapper;
import BookStore.mapper.OrderDetailMapper;
import BookStore.mapper.UserMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class OrderDetailDAO extends AbstractDAO<OrderDetails> implements IOrderDetailDAO {

    @Override
    public OrderDetails findOneById(Integer id) {
        String sql = "select * from detail_order where id = ?";
        return query(sql, new OrderDetailMapper(), id).get(0);
    }

    @Override
    public Integer insert(OrderDetails orderDetails, Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO detail_order " +
                "(fullname, address, phone, email, note, cart_id)");
        sql.append("VALUES (?,?,?,?,?,?,?,?,?,?) ");
        return insert(sql.toString(),
                orderDetails.getFullname(),
                orderDetails.getAddress(),
                orderDetails.getPhone(),
                orderDetails.getEmail(),
                orderDetails.getNote(),
                cart.getId());
    }

    @Override
    public List<OrderDetails> getAll() {
        String sql = "SELECT * FROM detail_cart ";
        Connection con = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            con = new ConnectionPool().Connection();
            pr = con.prepareStatement(sql);
            rs = pr.executeQuery();
            while (rs.next()){

            }




        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public void Payment(OrderDetails orderDetails) {

        String sql = "INSERT INTO detail_order (fullname, address, phone, email, note) VALUES (?,?,?,?,?)";
       insert(sql,orderDetails.getFullname(),orderDetails.getAddress(),orderDetails.getEmail(),orderDetails.getPhone(),orderDetails.getNote());

    }


}

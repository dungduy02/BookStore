package BookStore.service.impl;


import BookStore.Dao.IOrderDetailDAO;
import BookStore.Dao.impl.OrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.OrderDetails;
import BookStore.mapper.OrderDetailMapper;
import BookStore.service.IOrderDetailService;

import javax.inject.Inject;

public class OrderDetailService implements IOrderDetailService {

    @Inject
    private IOrderDetailDAO orderDetailDAO;

    @Override
    public OrderDetails findOneById(Integer id) {
        return orderDetailDAO.findOneById(id);
//        String sql = "select * from info where id = ?";
//        return query(sql, new OrderDetailMapper(), id).get(0);
    }

    @Override
    public OrderDetails insert(OrderDetails orderDetails, Cart cart) {
        Integer id = orderDetailDAO.insert(orderDetails, cart);
        return findOneById(id);
//        Integer id = OrderDetailDAO.insert(orderDetails);
//        return findOneById(id);
    }
}

package BookStore.Dao;


import BookStore.Model.*;

import java.util.List;

public interface IOrderDetailDAO extends GenericDAO<OrderDetails>{
    OrderDetails findOneById(Integer id);
    Integer insert(OrderDetails orderDetails, Cart cart);
    List<OrderDetails> getAll();
    void Payment(OrderDetails orderDetails);
}

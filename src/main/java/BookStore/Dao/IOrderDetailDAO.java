package BookStore.Dao;


import BookStore.Model.*;

import java.util.List;

public interface IOrderDetailDAO extends GenericDAO<OrderDetails>{
    OrderDetails findOneById(Integer id);
    void insert(OrderDetails orderDetails, Cart cart);
    List<OrderDetails> getAll();
    OrderDetails Payment(OrderDetails orderDetails);
    OrderDetails getEnd();

}

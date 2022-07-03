package BookStore.Dao;


import BookStore.Model.*;

public interface IOrderDetailDAO extends GenericDAO<OrderDetails>{
    OrderDetails findOneById(Integer id);
    Integer insert(OrderDetails orderDetails, Cart cart);

}

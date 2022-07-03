package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.OrderDetails;

public interface IOrderDetailService {
    OrderDetails findOneById(Integer id);
    OrderDetails insert(OrderDetails orderDetails, Cart cart);
}

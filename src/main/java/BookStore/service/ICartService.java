package BookStore.service;

import BookStore.Model.Cart;
import BookStore.Model.Item;

public interface ICartService {
    Cart findByCustomerId(Integer customerId);
    boolean deleteDetailItemById(Integer detailCartId);
    boolean updateItem(Item cartDetails);
    Item insertItem(Item cartDetails);

}

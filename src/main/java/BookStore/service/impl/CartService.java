package BookStore.service.impl;

import BookStore.Dao.ICart;
import BookStore.Dao.IItemDAO;
import BookStore.Dao.impl.ItemDAO;
import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.service.ICartService;

import javax.inject.Inject;
import java.util.List;

public class CartService implements ICartService {
    @Inject
    ICart cartDAO;
    @Inject
    IItemDAO iItemDAO;

    @Override
    public Cart findByCustomerId(Integer customerId) {
        Cart cart = cartDAO.findByCustomer(customerId);
        List<Item> item = iItemDAO.findByCartId(cart.getId());
        return null;
    }

    @Override
    public boolean deleteDetailItemById(Integer detailCartId) {
        return iItemDAO.delete(detailCartId);
    }

    @Override
    public boolean updateItem(Item cartDetails) {
        return iItemDAO.update(cartDetails);
    }

    @Override
    public Item insertItem(Item cartDetails) {
        Integer id = iItemDAO.insert(cartDetails);
        return iItemDAO.findById(id);
    }
}

package BookStore.Dao;

import BookStore.Model.Item;

import java.util.List;

public interface IItemDAO {
    List<Item> findByCartId(Integer cartId);
    Integer insert(Item item);
    boolean update(Item item);
    boolean delete(Integer item);
    Item findById(Integer id);
}

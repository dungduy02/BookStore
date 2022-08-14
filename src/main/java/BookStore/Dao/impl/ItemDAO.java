package BookStore.Dao.impl;

import BookStore.Dao.ICart;
import BookStore.Dao.IItemDAO;
import BookStore.Model.Item;
import BookStore.mapper.ItemMapper;

import java.util.List;

public class ItemDAO extends AbstractDAO<Item> implements IItemDAO{

    @Override
    public List<Item> findByCartId(Integer cartId) {
        String sql = "SELECT * FROM detail_cart WHERE cart_id = ?";
        return query(sql,new ItemMapper(),cartId);
    }

    @Override
    public Integer insert(Item item) {
        String sql = "INSERT INTO detail_cart (cart_id,product_id,quantity) VALUES (?,?,?)";
        return insert(sql,item.getCartId(),item.getProductid(),item.getQuantity());
    }

    @Override
    public boolean update(Item item) {
        StringBuilder sql = new StringBuilder();
        sql.append("update detail_cart set");
        sql.append("cart_id = ?,");
        sql.append("product_id = ?,");
        sql.append("quantity = ?," );
        sql.append("WHERE id = ?");
        return update(sql.toString(),item.getCartId(),item.getProductid(),item.getProductid(),item.getId());
    }

    @Override
    public boolean delete(Integer item) {
        String sql = "DELETE FROM detail_cart WHERE id = ?";
        return delete(sql,item);
    }

    @Override
    public Item findById(Integer id) {
        String sql = "SELECT * FROM detail_cart where id = ?";
        List<Item> list = query(sql,new ItemMapper(),id);
        return list.size() == 0 ? null : list.get(0);
    }
}

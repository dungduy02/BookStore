package BookStore.Dao.impl;

import BookStore.Dao.ISaleDAO;
import BookStore.Model.Sale;
import BookStore.mapper.SaleMapper;

import java.util.List;

public class SaleDAO extends AbstractDAO<Sale> implements ISaleDAO {
    @Override
    public List<Sale> getAllSale() {
        String sql = "SELECT * FROM sale s JOIN products p ON s.id = p.sale_id;";
        return query(sql,new SaleMapper());
    }

    @Override
    public Sale getSaleById(String id) {
        String sql = "SELECT s.* FROM sale s JOIN products p WHERE p.sale_id = s.id and p.sale_id = ? ";
        return queryOne(sql,new SaleMapper(),id);
    }
}

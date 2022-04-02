package BookStore.Dao.impl;

import BookStore.Dao.ISaleDAO;
import BookStore.Model.Sale;
import BookStore.mapper.SaleMapper;

import java.util.List;

public class SaleDAO extends AbstractDAO<Sale> implements ISaleDAO {
    @Override
    public List<Sale> getAllSale() {
        String sql = "SELECT * FROM sale s JOIN products p WHERE p.sale_id = s.id and s.id = 3;";
        return query(sql,new SaleMapper());
    }

    @Override
    public Sale getSaleById(String id) {
        String sql = "SELECT s.* FROM sale s JOIN products p WHERE p.sale_id = s.id and p.sale_id = ? ";
        return queryOne(sql,new SaleMapper(),id);
    }



    public static void main(String[] args) {
        SaleDAO saleDAO = new SaleDAO();
//        List<Sale> sale = saleDAO.getAllSale();
//        for (Sale s: sale){
//            System.out.println(s);
//        }
        System.out.println(saleDAO.getSaleById("3"));

    }
}

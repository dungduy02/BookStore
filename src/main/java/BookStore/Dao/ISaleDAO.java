package BookStore.Dao;

import BookStore.Model.Sale;

import java.util.List;

public interface ISaleDAO {
    List<Sale> getAllSale();
    Sale getSaleById(String id);
}

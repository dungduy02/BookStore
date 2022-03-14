package BookStore.service.impl;

import BookStore.Dao.ISaleDAO;
import BookStore.Dao.impl.SaleDAO;
import BookStore.Model.Sale;
import BookStore.service.ISaleService;

import javax.inject.Inject;
import java.util.List;

public class SaleService implements ISaleService {
    @Inject private ISaleDAO saleDAO;
    @Override
    public List<Sale> getAllSale() {
        return saleDAO.getAllSale();
    }

    @Override
    public Sale getSaleById(String id) {
        return saleDAO.getSaleById(id);
    }

    public static void main(String[] args) {
        SaleDAO saleDAO = new SaleDAO();

//        Sale sale = saleDAO.getSaleById("3");
//        System.out.println(sale);

    }
}

package BookStore.service;

import BookStore.Model.Sale;

import java.util.List;

public interface ISaleService {
    List<Sale> getAllSale();
    Sale getSaleById(String id);
}

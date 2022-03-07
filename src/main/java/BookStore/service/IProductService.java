package BookStore.service;

import BookStore.Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();
    Product getDetails(Integer id);
    List<Product> getNewProduct();
}

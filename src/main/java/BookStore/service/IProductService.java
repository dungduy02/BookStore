package BookStore.service;

import BookStore.Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();
    List<Product> getProductByCategory(String cid);
    List<Product> getProductByPublisher(String pubid);
    List<Product> getProductByPrice(String price);
    Product getDetails(String id);
    Product getProductById(String id);
    List<Product> getNewProduct();
    List<Product> getSaleProduct();
    Product getLastProduct();

}

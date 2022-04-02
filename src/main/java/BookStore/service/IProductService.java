package BookStore.service;

import BookStore.Model.Product;

import java.util.ArrayList;
import java.util.List;

public interface IProductService {
    List<Product> getAll();
    List<Product> getProductByCategory(String cid);
    List<Product> getProductByPublisher(String pubid);
    Product getDetails(String id);
    Product getProductById(String id);
    List<Product> getNewProduct();
    List<Product> getSaleProduct();
    Product getLastProduct();
    List<Product> getPageProduct(List<Product> list, int start, int end);

}

package BookStore.Dao;

import BookStore.Model.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> getByName(String name);

    List<Product> getByCategory(String cid);
    List<Product> getByPublisher(String id);
    List<Product> getAll();
    List<Product> getNewProduct();
    Product getOne(String id);
    List<Product> getSaleProduct();
    List<Product> getByPrice(String price);
    Product getLastProduct();
    Product getProductById(String id);


}

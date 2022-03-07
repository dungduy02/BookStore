package BookStore.Dao;

import BookStore.Model.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> getByName();

    List<Product> getByPublisher(String publishername);

    List<Product> getAll();
    List<Product> getNewProduct();
    Product getOne(Integer id);
}

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
    Product getLastProduct();
    Product getProductById(String id);
    List<Product> getPageProduct(List<Product> list,int start,int end);
    List<Product> getByPrice(String price);
    void deleteProduct(String id);
    void insertProduct(Product product);
//    void updateProduct(String name, String picture, String description, String price,
//                       String quantity, String published, String categoryid, String authorid);
    void updateProduct(Product product);
}

package BookStore.service.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Dao.impl.CategoryDAO;
import BookStore.Dao.impl.ProductDAO;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.service.ICategoryService;
import BookStore.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {
    @Inject
    private IProductDAO productDAO;
    @Inject
    ICategoryService categoryService;
    @Override
    public List<Product> getAll() {
        return productDAO.getAll();
    }

    @Override
    public List<Product> getProductByCategory(String cid) {
        return productDAO.getByCategory(cid);
    }

    @Override
    public List<Product> getProductByPublisher(String pubid) {
        return productDAO.getByPublisher(pubid);
    }

    @Override
    public List<Product> getProductByPrice(String price) {
        return productDAO.getByPrice(price);
    }


    @Override
    public Product getDetails(String id) {
        Product product = productDAO.getOne(id);

        return product;
    }

    @Override
    public Product getProductById(String id) {

        return productDAO.getProductById(id);
    }

    @Override
    public List<Product> getNewProduct() {
        return productDAO.getNewProduct();
    }
    @Override
    public List<Product> getSaleProduct() {
        return productDAO.getSaleProduct();
    }

    @Override
    public Product getLastProduct() {
        return productDAO.getLastProduct();
    }




    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
//        Product product = productDAO.getProductById("12");

        List<Product> all = productDAO.getAll();
        for (Product a : all){
            System.out.println(a);
        }



    }
}

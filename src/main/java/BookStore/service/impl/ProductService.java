package BookStore.service.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Dao.impl.ProductDAO;
import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {
    @Inject
    private IProductDAO productDAO;
    @Override
    public List<Product> getAll() {
        return productDAO.getAll();
    }


    @Override
    public Product getDetails(Integer id) {
        Product detail = productDAO.getOne(id);
        return detail;
    }

    @Override
    public List<Product> getNewProduct() {
        return productDAO.getNewProduct();
    }

    public static void main(String[] args) {
        ProductService product = new ProductService();
        System.out.println(product.getDetails(0));


    }
}

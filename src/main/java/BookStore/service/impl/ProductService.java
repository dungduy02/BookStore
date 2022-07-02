package BookStore.service.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Dao.impl.ProductDAO;
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

//    @Override
//    public List<Product> getProductByPrice(String price) {
//        return productDAO.getByPrice(price);
//    }


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
    public List<Product> getProductByPrice() {

        return productDAO.getProductbyPrice();
    }

    @Override
    public List<Product> getSaleProduct() {
        return productDAO.getSaleProduct();
    }

    @Override
    public Product getLastProduct() {
        return productDAO.getLastProduct();
    }


    @Override
    public List<Product> getPageProduct(List<Product> list, int start, int end) {
        return productDAO.getPageProduct(list,start,end);
    }

    @Override
    public List<Product> getPriceSmall() {
        return productDAO.SmallPrice();
    }

    @Override
    public List<Product> getPriceMedium() {
        return productDAO.MediumPrice();
    }

    @Override
    public List<Product> getPriceLarge() {
        return productDAO.LargePrice();
    }


    @Override
    public List<Product> getProductBySort(String select) {
        List<Product> sort = new ArrayList<>();
        switch (select){
            case "price":
                sort = productDAO.getProductbyPrice();
             break;
            case "new":
                sort = productDAO.getNewProduct();
             break;
            default:
             break;
        }
        return sort;
    }

    @Override
    public List<Product> get12Product() {
        return productDAO.get12Product();
    }

    @Override
    public List<Product> getNextProduct(int count) {
        return productDAO.getNextProduct(count);
    }

    public void deleteProduct(String id) {
        productDAO.deleteProduct(id);
    }
    public void insertProduct(Product product){
        productDAO.insertProduct(product);
    }

    public void updateProduct(Product product){
        productDAO.updateProduct(product);
    }
    public static void main(String[] args) {
        // ProductDAO productDAO = new ProductDAO();
        // List<Product> list = productDAO.getNextProduct(12);
        // for (Product p: list) {
        //     System.out.println(p);

//        Product product = productDAO.getProductById("12");

            // List<Product> all = productDAO.getAll();
            // for (Product a : all) {
            //     System.out.println(a);
            // }
//        List<Product> li = productDAO.getPageProduct(list,1,18);
//        for (Product p : li){
//            System.out.println(p);
//        }


        }
//         productDAO.insertProduct("fsd","sdf", "sdf", 342, 2, 1,2,1);
//        System.out.println(productDAO.deleteProduct("50"));
//        productDAO.updateProduct(new Product());
//        List<Product> all = productDAO.getAll();
//        for (Product a : all){
//        }
//        System.out.println(productDAO.getProductById("2"));
    }

}

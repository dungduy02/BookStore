package BookStore.Dao.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Model.Product;
import BookStore.mapper.ProductMapper;

import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {
    @Override
    public List<Product> getByName() {
        return null;
    }

    @Override
    public List<Product> getByPublisher(String publishername) {
        publishername = "%" +publishername + "%";

        return null;
    }

    @Override
    public List<Product> getAll() {
        String sql = "SELECT * FROM products ";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<Product> getNewProduct() {
        String sql = "SELECT * FROM products ORDER BY id DESC LIMIT 9";
        return query(sql,new ProductMapper());
    }

    @Override
    public Product getOne(Integer id) {
        String sql = "SELECT p.*,au.`name` as author,pub.`name` as pubname,cate.`name` as catename,sl.price_sale as pricesale" +
                " FROM (((((products p JOIN detail_product de ON p.id = de.product_id) JOIN author au ON p.author_id = au.id)" +
                " JOIN publisher pub ON de.publisher_id = pub.id) JOIN category cate ON de.category_id = cate.id)" +
                " JOIN sale sl ON de.sale_id = sl.id) WHERE p.id = ?";

        return queryOne(sql,new ProductMapper(),id);
    }


}

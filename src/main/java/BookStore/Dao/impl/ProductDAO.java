package BookStore.Dao.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Model.Product;
import BookStore.config.ConnectionPool;
import BookStore.mapper.ProductMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {
    @Override
    public List<Product> getByName(String name) {
        name = "%"+ name +"%";
        String sql = "SELECT * FROM products WHERE `name` like ?";
        return query(sql,new ProductMapper(),name);
    }



    @Override
    public List<Product> getByCategory(String cid) {
        String sql ="SELECT * FROM products WHERE category_id = ?";
        return query(sql,new ProductMapper(),cid);
    }

    @Override
    public List<Product> getByPublisher(String pubid) {
        String sql = "SELECT * FROM products WHERE publisher_id = ?";


        return query(sql,new ProductMapper(),pubid);
    }

    @Override
    public List<Product> getAll() {
        String sql = "SELECT * FROM products";

        return query(sql, new ProductMapper());
    }


    @Override
    public List<Product> getNewProduct() {
        String sql = "SELECT * FROM products ORDER BY id DESC LIMIT 6";
        return query(sql,new ProductMapper());
    }

    @Override
    public Product getOne(String id) {
        String sql = "SELECT p.*,pub.`name` as publishername,cate.`name` as category,au.name as authors " +
                "FROM ((((products p JOIN publisher pub ON p.publisher_id = pub.id)" +
                "JOIN category cate ON p.category_id = cate.id) JOIN sale sl ON p.sale_id = sl.id) " +
                "JOIN author au ON p.author_id = au.id) WHERE p.id = ?;";
        return queryOne(sql,new ProductMapper(),id);
    }

    @Override
    public List<Product> getSaleProduct() {
        String sql = "SELECT p.*,sl.* FROM products p JOIN sale sl ON p.sale_id = sl.id WHERE p.sale_id = 3;";
        return query(sql,new ProductMapper());
    }

    @Override
    public Product getLastProduct() {
        String sql = "SELECT * FROM products ORDER BY id DESC LIMIT 1;";
        return queryOne(sql,new ProductMapper());
    }

    @Override
    public Product getProductById(String id) {
        String sql ="SELECT * FROM products WHERE id = ?";
        return queryOne(sql,new ProductMapper(),id);
    }


    @Override
    public List<Product> getPageProduct(List<Product> list, int start, int end) {
        List<Product> arr = new ArrayList<>();
        for (int i = start;i<end;i++){
            arr.add(list.get(i));
        }
        return arr;
    }


}

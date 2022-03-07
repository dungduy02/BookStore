package BookStore.mapper;

import BookStore.Model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product>{

    @Override
    public Product mapRow(ResultSet rs) {
        Product product = new Product();
        try {
            product.setId(rs.getInt("id"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getInt("price"));
            product.setImg(rs.getString("picture"));
            product.setDescription(rs.getString("description"));


        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
        return product;
    }
}

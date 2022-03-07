package BookStore.mapper;

import BookStore.Model.ProductDetails;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDetailMapper implements RowMapper<ProductDetails>{

    @Override
    public ProductDetails mapRow(ResultSet rs) {
        ProductDetails details = new ProductDetails();
        try {
            details.setId(rs.getInt("id"));
            details.setName(rs.getString("productname"));
            details.setImg(rs.getString("picture"));
            details.setPrice(rs.getInt("price"));
            details.setDescription(rs.getString("description"));
            details.setPublisher(rs.getString("pubname"));
            details.setCategory(rs.getString("catename"));
            details.setPricesale(rs.getInt("pricesale"));
            details.setAuthor(rs.getString("author"));


        } catch (SQLException e) {
            return null;
        }
        return details;
    }
}

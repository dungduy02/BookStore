package BookStore.Service;

import BookStore.Model.ProductDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static BookStore.Connection.Datasource.*;

public class ProductDetailDAO {
    Connection connection = null;
    PreparedStatement prepar = null;
    ResultSet rs = null;
    public List<ProductDetails> getDetail(){
        List<ProductDetails> lstdetails = new ArrayList<ProductDetails>();
        String query = "SELECT p.id,p.`name`,p.picture,p.price,p.description,pub.`name` AS publisher_name, cate.`name` AS category_name,sl.`name` AS sale_name,sl.price_sale FROM ((((products p JOIN detail_product d ON p.id = d.product_id)JOIN publisher pub ON d.publisher_id = pub.id) JOIN category cate ON d.category_id = cate.id) JOIN sale sl ON d.sale_id = sl.id);";
        try {
            connection = getConnection();
            prepar = connection.prepareStatement(query);
            rs = prepar.executeQuery();
            while (rs.next()){
               ProductDetails details = new ProductDetails(
                       rs.getLong("id"),
                       rs.getString("name"),
                       rs.getString("picture"),
                       rs.getLong("price"),
                       rs.getString("description"),
                       rs.getString("publisher_name"),
                       rs.getString("category_name"),
                       rs.getString("sale_name"),
                       rs.getLong("price_sale")
               );
            lstdetails.add(details);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return lstdetails;
    }

    public static void main(String[] args) {
        ProductDetailDAO product = new ProductDetailDAO();
        List<ProductDetails> list = product.getDetail();
        for (ProductDetails de : list){
            System.out.println(de);
        }

    }

}

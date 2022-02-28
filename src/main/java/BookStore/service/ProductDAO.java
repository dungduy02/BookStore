package BookStore.Service;
import BookStore.Model.Product;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static BookStore.Connection.Datasource.*;

public class ProductDAO {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            rs = preparedStatement.executeQuery();
            while (rs.next()){
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("picture"),
                        rs.getLong("price")
                );
                list.add(product);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        returnConnection(connection);
        return list;
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> lst = productDAO.getAllProduct();
        for (Product p : lst){
            System.out.println(p);
        }
    }


}

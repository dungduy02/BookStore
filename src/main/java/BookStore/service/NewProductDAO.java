package BookStore.service;

import BookStore.Model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static BookStore.Connection.Datasource.*;

public class NewProductDAO {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
    public List<Product> getNewProduct(){
        List<Product> list = new ArrayList<>();
        String query = "SELECT p.id,p.picture,p.price,p.`name` FROM products p ORDER BY id DESC LIMIT 3;";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            rs = preparedStatement.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("picture"),
                        rs.getLong("price")

                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        returnConnection(getConnection());
        return list;
    }


}

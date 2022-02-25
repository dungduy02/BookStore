package BookStore.Service;

import BookStore.Model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static BookStore.Connection.Datasource.*;
public class CategoryDAO {
    Connection connection = null;
    PreparedStatement prepared = null;
    ResultSet rs = null;
    public List<Category> getAllCategory(){
        List<Category> lscate = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            connection = getConnection();
            prepared = connection.prepareStatement(query);
            rs = prepared.executeQuery();
            while (rs.next()){
                Category cate = new Category(
                        rs.getInt(1),
                        rs.getString(2)
                );
                returnConnection(connection);
                lscate.add(cate);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return lscate;
    }

    public static void main(String[] args) {
        CategoryDAO categorydao = new CategoryDAO();
        List<Category> listcate = categorydao.getAllCategory();
        for (Category c : listcate){
            System.out.println(c);
        }
    }
}

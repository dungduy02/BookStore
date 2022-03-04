package BookStore.Service;

import BookStore.Model.Category;
import BookStore.Model.Publisher;

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
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("code_name")
                );
                returnConnection(connection);
                lscate.add(cate);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return lscate;
    }
    public List<Publisher> getPublisher(){
        List<Publisher> lst = new ArrayList<>();
        String query = "SELECT * FROM publisher";
        try {
            connection = getConnection();
            prepared = connection.prepareStatement(query);
            rs = prepared.executeQuery();
            while (rs.next()){
                Publisher publisher = new Publisher(
                        rs.getInt(1),
                        rs.getString(2)

                );
                returnConnection(connection);
                lst.add(publisher);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lst;
    }

    public List<Publisher> getP(){
        List<Publisher> list = new ArrayList<>();
        String que = "SELECT * FROM Publisher";

        try {
            connection = getConnection();
            prepared = connection.prepareStatement(que);
            rs = prepared.executeQuery();
            while (rs.next()){
                Publisher pub = new Publisher(
                        rs.getInt(1),
                        rs.getString(2)
                );
                returnConnection(connection);
                list.add(pub);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        CategoryDAO cate = new CategoryDAO();
        List<Category> list = cate.getAllCategory();
        for (Category ca : list){
            System.out.println(ca);
        }
    }

}

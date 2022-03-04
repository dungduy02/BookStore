package BookStore.Service;

import BookStore.Model.Publisher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static BookStore.Connection.Datasource.getConnection;
import static BookStore.Connection.Datasource.returnConnection;

public class PublisherDAO {
    Connection connection = null;
    PreparedStatement prepared = null;
    ResultSet rs = null;
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
        PublisherDAO Pubdao = new PublisherDAO();
        List<Publisher> listPub = Pubdao.getP();
        for (Publisher c : listPub){
            System.out.println(c);
        }
    }
}

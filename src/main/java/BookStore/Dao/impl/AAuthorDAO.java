package BookStore.Dao.impl;

import BookStore.Model.Author;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.config.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AAuthorDAO {
    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

    public List<Author> getAllAuthor() {
        List<Author> list = new ArrayList<>();
        String query = "SELECT * FROM author";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()) {
                list.add( new Author(rs.getInt("id"),
                        rs.getString("name")));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
    public List<Author> getListPage(List<Author> list,int start, int end){
        ArrayList<Author> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void insertAuthor(String id,String authorname){

        String query = "INSERT INTO  author (id,name) VALUES(?,?)";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.setString(2,authorname);

            prestament.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Author getAuthorById(String id){
        String query = "SELECT * FROM author WHERE id=?";

        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();
            while (rs.next()){
                return new Author( rs.getInt("id"),
                        rs.getString("name")
                );
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void updateAuthor(String id, String authorname){
        String query="UPDATE author SET `name`=? WHERE id=?";
        try{
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);

            prestament.setString(1,authorname);
            prestament.setString(2,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void deleteAuthor (String id){
        String query = "DELETE FROM author WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Author checkAuthor(String id){

        String query = "SELECT * FROM author WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();

            while (rs.next()){
                return new Author(rs.getInt("id"),

                        rs.getString("name") ) ;
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return null;

    }
    public List<Author> searchByName(String key) {
        List<Author> list = new ArrayList<>();
        String query = "SELECT * FROM author WHERE `name` LIKE ?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,"%"+key+"%");
            rs = prestament.executeQuery();


            while (rs.next()){
                list.add(new Author(rs.getInt("id"), rs.getString("name")));
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return list;

    }

}

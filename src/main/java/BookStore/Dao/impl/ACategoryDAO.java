package BookStore.Dao.impl;

import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.config.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ACategoryDAO {
    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()) {
                list.add( new Category(rs.getInt("id"),
                        rs.getString("name")));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public void deleteCategory (String id){
        String query = "DELETE FROM category WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public void insertCateroty(String id,String name){

        String query = "INSERT INTO category (id,name) VALUES (?,?)";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.setString(2,name);

            prestament.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public Category getCategoryById(String id){
        String query = "SELECT * FROM category WHERE id=?";

        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();
            while (rs.next()){
                return new Category( rs.getInt("id"),
                        rs.getString("name")
                       );
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }


    public void updateCategory(String id, String name){
        String query="UPDATE category SET `name`=? WHERE id=?";
           try{
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);

            prestament.setString(1,name);
            prestament.setString(2,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Category> getListPage(List<Category> list,int start, int end){
        ArrayList<Category> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public Category checkCategory(String id){

        String query = "SELECT * FROM category WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();

            while (rs.next()){
                return new Category(rs.getInt("id"),

                        rs.getString("name") ) ;
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return null;

    }




    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Category> list = dao.getAllCategory();
        for(Category o :list){
            System.out.println(o);
        }
    }


}
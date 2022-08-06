package BookStore.Dao.impl;

import BookStore.Model.Product;
import BookStore.config.ConnectionPool;
import BookStore.config.DBConfiguration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AProductDAO {
    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products";
        try {
            connection = ConnectionPool.getConnection("query");
           prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()){
                list.add(new Product(rs.getInt("id"),
                rs.getString("code_product"),
                rs.getString("name"),
                rs.getInt("price"),
                rs.getString("picture"),
                rs.getString("description"),
                rs.getInt("quanity"),
                rs.getInt("publisher_id"),
                rs.getInt("category_id"),
                rs.getInt("sale_id"),
                rs.getInt("author_id")));
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return list;

    }
    public void deleteProduct (String id){
        String query = "DELETE FROM products WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void insertProduct(String id, String name, String authorid, String categoryid,
                              String publisherid, String img, String quantity,
                              String description,String price){

        String query = "INSERT INTO products (id,name,author_id,category_id,publisher_id,picture,quanity,description,price) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.setString(2,name);
            prestament.setString(3,authorid);
            prestament.setString(4,categoryid);
            prestament.setString(5,publisherid);
            prestament.setString(6,img);
            prestament.setString(7,quantity);
            prestament.setString(8,description);
            prestament.setString(9,price);

            prestament.executeUpdate();


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Product getProductById(String id){
        String query = "SELECT * FROM products WHERE id=?";

        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();
            while (rs.next()){
                return new Product( rs.getInt("id"),
                        rs.getString("code_product"),
                        rs.getString("name"),
                        rs.getInt("price"),
                        rs.getString("picture"),
                        rs.getString("description"),
                        rs.getInt("quanity"),
                        rs.getInt("publisher_id"),
                        rs.getInt("category_id"),
                        rs.getInt("sale_id"),
                        rs.getInt("author_id"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void updateProduct(String id, String name, String authorid, String categoryid,
                              String publisherid, String img, String quantity,
                              String description,String price){
        String query="UPDATE products set\n" +
                "`name` = ?,\n" +
                "price = ?,\n" +
                "picture=?,\n" +
                "description=?,\n" +
                "quanity=?,\n" +
                "publisher_id=?,\n" +
                "category_id=?,\n" +
                "author_id=? \n" +
                "WHERE id=?";
        try {

            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);

            prestament.setString(1,name);
            prestament.setString(8,authorid);
            prestament.setString(7,categoryid);
            prestament.setString(6,publisherid);
            prestament.setString(3,img);
            prestament.setString(5,quantity);
            prestament.setString(4,description);
            prestament.setString(2,price);
            prestament.setString(9,id);
            prestament.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
//dem so luong sach trong data
    public int countProduct(){
        String query = "SELECT count(*)\n" +
                "FROM products ";
        try {
        connection = ConnectionPool.getConnection("query");
        prestament = connection.prepareStatement(query);
        rs = prestament.executeQuery();
        while (rs.next()){
            return rs.getInt(1);
        }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    public List<Product> getListPage(List<Product> list,int start, int end){
        ArrayList<Product> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    public List<Product> searchByName(String key) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products WHERE `name` LIKE ?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,"%"+key+"%");
            rs = prestament.executeQuery();


            while (rs.next()){
                list.add(new Product(rs.getInt("id"),
                        rs.getString("code_product"),
                        rs.getString("name"),
                        rs.getInt("price"),
                        rs.getString("picture"),
                        rs.getString("description"),
                        rs.getInt("quanity"),
                        rs.getInt("publisher_id"),
                        rs.getInt("category_id"),
                        rs.getInt("sale_id"),
                        rs.getInt("author_id")));
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return list;

    }
    public Product checkProduct(String id){

        String query = "SELECT * FROM products WHERE id=?";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();

            while (rs.next()){
              return new Product(rs.getInt("id"),
                        rs.getString("code_product"),
                        rs.getString("name"),
                        rs.getInt("price"),
                        rs.getString("picture"),
                        rs.getString("description"),
                        rs.getInt("quanity"),
                        rs.getInt("publisher_id"),
                        rs.getInt("category_id"),
                        rs.getInt("sale_id"),
                        rs.getInt("author_id"));
            }

        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return null;

    }

    public static void main(String[] args) {
        AProductDAO dao = new AProductDAO();
        List<Product> list = dao.getAllProduct();
        int count = dao.countProduct();
        System.out.println(count);

        }

}

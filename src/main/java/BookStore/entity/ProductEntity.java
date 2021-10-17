package BookStore.entity;

import BookStore.Connection.ConnectDB;
import BookStore.Model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {
//    List<Product> re = new LinkedList<>();
    public List<Product> getAll() {
        Statement s = null;
        try {
            s = ConnectDB.getMySQLConnect();
            List<Product> re = new LinkedList<>();
            ResultSet rs = s.executeQuery("select * from products");
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getString("picture"),
                        rs.getString("description"),
                        rs.getInt("price")


                ));
//                int id = rs.getInt(1);
//                String url = rs.getString("picture");
//                String name = rs.getString("name");
//                String ct = rs.getString("description");
//                p.setId(id);
//                p.setUrl(url);
//                p.setName(name);
//                p.setDescription(ct);
//                re.add(p);

            }
            rs.close();
            s.close();
//            System.out.println(re);
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
//        return re;
    }

    public static void main(String[] args) {

        System.out.println(new ProductEntity().getAll().toString());
    }
}

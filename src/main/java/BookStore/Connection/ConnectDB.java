package BookStore.Connection;

import java.sql.*;

public class ConnectDB {
    private static String user = "root";
    private static String password = "";
    static Connection cnt ;

    public static Statement getMySQLConnect() throws SQLException, ClassNotFoundException {

        if(cnt==null||cnt.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            cnt = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=utf-8", user, password);
            return cnt.createStatement();
        }else {
            return cnt.createStatement();
        }
    }

//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        Statement s =  ConnectDB.getMySQLConnect();
//        ResultSet rs = s.executeQuery("select * from products");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//        while (rs.next()){
//            System.out.println(rs.getString(2));
//        }
//    }
}

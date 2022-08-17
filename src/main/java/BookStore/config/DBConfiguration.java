package BookStore.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfiguration {
    public class DbConfiguration{
        public static final String USER_NAME = "root";
        public static final String PASSWORD = "";
        public static final String DB_DRIVER = "com.mysql.jdbc.Driver";
        public static final int DB_MIN_CONNECTIONS = 2;
        public static final int DB_MAX_CONNECTIONS = 5;
        public static final String CONNECTION_URL = "jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        private DbConfiguration(){
            super();
        }
    }


    public Connection getConnection()throws Exception {
        final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
        final String userID = "root";
        final String password = "";
        String url = "jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        if(instance == null || instance.trim().isEmpty())
            url ="jdbc:mysql://localhost/bookstore?useUnicode=true&characterEncoding=utf-8";
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url, userID, password);
    }
}

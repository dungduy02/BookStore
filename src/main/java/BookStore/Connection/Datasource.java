package BookStore.Connection;

import java.sql.Connection;

public class Datasource {
    private static ConnectionPool connectionPool = new ConnectionPool();
    public Datasource(){

    }
    public static Connection getConnection(){
        return connectionPool.getConnectionFromPool();
    }
    public static void returnConnection(Connection connection){
            connectionPool.returnConnectionToPool(connection);
    }
}

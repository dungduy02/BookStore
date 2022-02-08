package BookStore.Connection;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static BookStore.config.Configuration.*;

public class ConnectionPool {
    public static List<Connection> availableConnections = new ArrayList<>();

    public ConnectionPool() {
        this.initConnectionPool();
    }

    private Connection createConnection() {
        try {
            Class.forName(DB_DRIVER);
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            return connection;
        } catch (ClassNotFoundException  | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void initConnectionPool() {
        while (isConnectionPoolFull() == false) {
            Connection connection = createConnection();
            availableConnections.add(connection);
        }
    }

    private synchronized boolean isConnectionPoolFull() {
        if (availableConnections.size() < DB_MAX_CONNECTION) {
            return false;
        }
        return true;
    }


    public synchronized Connection getConnectionFromPool() {
        Connection connection = null;
        if (availableConnections.size() > 0 && availableConnections.size() <= DB_MAX_CONNECTION) {
            System.out.println(availableConnections.size());
            connection = availableConnections.get(0);
            availableConnections.remove(0);
            return connection;
        }
        System.out.println("Vui long doi");
        return null;

    }

    public synchronized void returnConnectionToPool(Connection connection) {
        availableConnections.add(connection);
    }
}

package BookStore.service;

import BookStore.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static BookStore.Connection.Datasource.*;

public class LoginDAO {
    public User Login(String username , String password){
        String query = "SELECT * FROM customer WHERE usename = ? AND password = ?";
        User user = new User();
        String result = user.toMd5(password);
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                 user = new User(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getDate(8),
                    rs.getString(9)
                );
                 System.out.println(user);


            }
            return user;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean exitUsername(String username){
        Connection connection = getConnection();
        String query = "SELECT usename FROM customer WHERE usename = ?";
        try {
            PreparedStatement prs = connection.prepareStatement(query);
            prs.setString(1,username);
            ResultSet rs = prs.executeQuery();
            String name = "";
            while (rs.next()){
                username = rs.getString(1);
            }
            if (name.equals(username)){
                return  true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
    public boolean exitEmail(String email){
        Connection connection = getConnection();
        String query = "SELECT email FROM customer WHERE email = ?";
        String result = "";
        try {
            PreparedStatement prepare = connection.prepareStatement(query);
            prepare.setString(1,email);
            ResultSet rs = prepare.executeQuery();
            while (rs.next()){
                result = rs.getString(1);

            }
            if (email.equals(result)){
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

}

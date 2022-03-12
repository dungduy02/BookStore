package BookStore.Dao.impl;

import BookStore.Dao.IUserDAO;
import BookStore.Model.User;
import BookStore.mapper.USerMapper;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {


    @Override
    public User getUser(String username) {
        String sql = "SELECT * FROM users WHERE usename = ?";
        return queryOne(sql,new USerMapper(),username);
    }

    @Override
    public Integer insert(User user) {
        String sql = "INSERT INTO users (usename,`password`,fullname,email,address,sex,phone,`status`,blog_id)" +
                " VALUES (?,?,?,?,?,?,?,?,?)";
        return insert(
                user.getUsername(),
                user.getPassword(),
                user.getFullname(),
                user.getEmail(),
                user.getAddress(),
                user.getGender(),
                user.getPhone(),
                user.getStatus(),
                user.getBlogid()
                );
    }

    @Override
    public User getUser(Integer id) {
        String sql = "SELECT * FROM users WHERE id = ?";
        return queryOne(sql,new USerMapper(),id);
    }

    @Override
    public User Login(String username, String password) {
        String sql = "SELECT * FROM users WHERE usename = ? and `password` = ?";
        return queryOne(sql,new USerMapper(),username,password);
    }

}

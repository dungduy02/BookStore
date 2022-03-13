package BookStore.Dao.impl;

import BookStore.Dao.IUserDAO;
import BookStore.Model.User;
import BookStore.mapper.UserMapper;

import java.util.Date;
import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {
    @Override
    public User findOneById(Integer id) {
        String sql = "select * from users where id = ?";
        return query(sql, new UserMapper(), id).get(0);
    }

    @Override
    public User getUser(String username) {
        String sql = "select * from users where username = ?";
        List<User> list = query(sql, new UserMapper(), username);
        return list.size() == 0 ? null : list.get(0);

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
    }

}

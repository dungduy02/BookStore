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
//        String sql = "SELECT * FROM users WHERE id = ?";
//        List<User> users = query(sql, new UserMapper(),id);
//        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User getUser(String username) {
        String sql = "select * from users where username = ?";
        List<User> list = query(sql, new UserMapper(), username);
        return list.size() == 0 ? null : list.get(0);
//            return  query(sql, new UserMapper(), username).get(0);
    }

    @Override
    public Integer insert(User user) {
        StringBuilder sql = new StringBuilder("insert into users " +
                "(username, password, fullname, email, phone, status) ");
        sql.append("value (?,?,?,?,?,?) ");
        return insert(sql.toString(),
                user.getId(),
                user.getUsername(),
                user.getPassword(),
                user.getFullname(),
                user.getEmail(),
                user.getPhone(),
                user.getStatus());

    }

}

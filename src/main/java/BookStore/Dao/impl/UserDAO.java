package BookStore.Dao.impl;

import BookStore.Dao.IUserDAO;
import BookStore.Model.User;
import BookStore.mapper.USerMapper;

import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {


    @Override
    public User findOneById(Integer id) {
        String sql = "select * from users where id = ?";
        return query(sql, new USerMapper(), id).get(0);
    }

    @Override
    public User getUser(String username) {
        String sql = "select * from users where username = ?";
        List<User> list = query(sql, new USerMapper(), username);
        return list.size() == 0 ? null : list.get(0);
    }

    @Override
    public Integer insert(User user) {
        StringBuilder sql = new StringBuilder("INSERT INTO users " +
                "(username,password,fullname,email,phone) ");
        sql.append("VALUES (?,?,?,?,?) ");
        return insert(sql.toString(),
                user.getUsername(),
                user.getPassword(),
                user.getFullname(),
                user.getEmail(),
                user.getPhone()
                );
    }

    @Override
    public User getUser(Integer id) {
        String sql = "SELECT * FROM users WHERE id = ?";
        return queryOne(sql,new USerMapper(),id);
    }

    @Override
    public boolean update(User user) {
        StringBuilder sql = new StringBuilder();
        sql.append("update users set ");
        sql.append("password = ?");
        sql.append("where email = ?");
        return update(sql.toString(),user.getPassword());
    }
}

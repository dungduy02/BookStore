package BookStore.mapper;

import BookStore.Model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User>  {
    @Override
    public User mapRow(ResultSet rs) {
        User use = new User();
        try {
            use.setId(rs.getInt("id"));
            use.setUsername(rs.getString("username"));
            use.setPassword(rs.getString("password"));
            use.setFullname(rs.getString("fullname"));
            use.setStatus(rs.getLong("status"));
            use.setEmail(rs.getString("email"));
            use.setAddressid(rs.getInt("address_id"));
            use.setSex(rs.getString("sex"));
            use.setDate(rs.getDate("date"));
            use.setPhone(rs.getString("phone"));


        } catch (SQLException throwables) {
            return null;
        }
        return use;
    }
}

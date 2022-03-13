package BookStore.mapper;

import BookStore.Model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class USerMapper implements RowMapper<User>{
    @Override
    public User mapRow(ResultSet rs) {
        User user = new User();
        try {
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("usename"));
            user.setPassword(rs.getString("password"));
            user.setFullname(rs.getString("fullname"));
            user.setEmail(rs.getString("email"));
            user.setAddress(rs.getString("address"));
            user.setGender(rs.getString("sex"));
            user.setPhone(rs.getString("phone"));
            user.setStatus(rs.getInt("status"));
            user.setBlogid(rs.getInt("blog_id"));

        } catch (SQLException e) {
                return null;
        }
        return user;
    }
}

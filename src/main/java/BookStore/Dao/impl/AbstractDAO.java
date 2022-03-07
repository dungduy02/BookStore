package BookStore.Dao.impl;

import BookStore.config.ConnectionPool;
import BookStore.Dao.GenericDAO;
import BookStore.mapper.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class AbstractDAO<T> implements GenericDAO<T> {


    @Override
    public List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
        List<T> results = new ArrayList<>();
        Connection connection = null;
        PreparedStatement prestament = null;
        ResultSet rs = null;
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(sql);
            setParameter(prestament,parameters);
            rs = prestament.executeQuery();
            while (rs.next()){
                results.add(rowMapper.mapRow(rs));
            }
            return results;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if (connection != null){
                    connection.close();
                }
                if (prestament != null){
                    prestament.close();
                }
                if (rs != null){
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return results;
    }

    @Override
    public T queryOne(String sql, RowMapper<T> rowMapper, Object...parameters) {
        Connection connection = null;
        PreparedStatement prestament = null;
        ResultSet rs = null;
        try {
            connection = ConnectionPool.getConnection("queryOne");
            prestament = connection.prepareStatement(sql);
            setParameter(prestament,parameters);
            rs = prestament.executeQuery();
            T result = null;
            while (rs.next()){
                result = rowMapper.mapRow(rs);
            }
            return result;
        } catch (SQLException e) {
            return null;
        }finally {
            try {
                if (connection != null){
                    connection.close();
                }
                if (prestament != null){
                    prestament.close();
                }
                if (rs != null){
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public Integer insert(String sql, Object... parameters) {
        Connection connection = null;
        PreparedStatement prestament = null;
        ResultSet rs = null;

        return null;
    }
    private void setParameter(PreparedStatement prestament, Object...parameters){
        try {
            for (int i = 0;i< parameters.length; i++){
                Object parameter = parameters[i];
                int index = i + 1;
                if (parameter instanceof Long){
                    prestament.setLong(index,(Long) parameter);
                }else if(parameter instanceof String){
                    prestament.setString(index,(String) parameter);
                }else if(parameter instanceof  Integer){
                    prestament.setInt(index,(Integer) parameter);
                }else if(parameter instanceof Timestamp){
                    prestament.setTimestamp(index,(Timestamp) parameter);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

package BookStore.Dao.impl;

import BookStore.Dao.IPublisherDAO;
import BookStore.Model.Publisher;
import BookStore.mapper.PublisherMapper;

import java.util.List;

public class PublisherDAO extends AbstractDAO<Publisher> implements IPublisherDAO {
    @Override
    public List<Publisher> getAllPublisher() {
        String sql = "SELECT * FROM publisher";

        return query(sql,new PublisherMapper());
    }
}

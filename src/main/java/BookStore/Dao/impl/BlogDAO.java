package BookStore.Dao.impl;

import BookStore.Dao.IBlogDAO;
import BookStore.Model.Blog;
import BookStore.mapper.BlogMapper;

import java.util.List;

public class BlogDAO extends AbstractDAO<Blog> implements IBlogDAO {
    @Override
    public List<Blog> getBlog() {
        String sql = "SELECT * FROM blog";
        return query(sql,new BlogMapper());
    }

    @Override
    public Blog getDetailBlog(String id) {
        String sql = "SELECT * FROM blog WHERE id = ?";
        return queryOne(sql,new BlogMapper(),id);
    }
}

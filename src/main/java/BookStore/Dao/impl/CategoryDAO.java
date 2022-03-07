package BookStore.Dao.impl;

import BookStore.Dao.ICategoryDAO;
import BookStore.Model.Category;
import BookStore.mapper.CategoryMapper;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO{

    public List<Category> getAllCategory(){
        String sql = "SELECT * FROM category";
        return query(sql,new CategoryMapper());
    }




}

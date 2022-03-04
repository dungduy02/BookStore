package BookStore.Service.impl;

import BookStore.Dao.ICategoryDAO;
import BookStore.Model.Category;
import BookStore.Service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public List<Category> findAll() {
        return categoryDAO.getAllCategory();
    }
}

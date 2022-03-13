package BookStore.service.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Model.Product;
import BookStore.service.ISearchService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class SearchService implements ISearchService {
    @Inject
    IProductDAO productDAO;
    @Override
    public List<Product> search(String filter, String keyword) {
        List<Product> list = new ArrayList<>();
        switch (filter){
            case "name":
                list = productDAO.getByName(keyword);
                break;

        }
        return list;
    }
}

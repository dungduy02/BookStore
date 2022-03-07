package BookStore.service.impl;

import BookStore.Dao.IPublisherDAO;
import BookStore.Dao.impl.PublisherDAO;
import BookStore.Model.Publisher;
import BookStore.service.IPublisherService;

import javax.inject.Inject;
import java.util.List;

public class PublisherService implements IPublisherService {
    @Inject
    IPublisherDAO publisherDAO;
    @Override
    public List<Publisher> getAllPublisher() {
        return publisherDAO.getAllPublisher();
    }

    public static void main(String[] args) {
        PublisherDAO publisherDAO = new PublisherDAO();
        List<Publisher> list = publisherDAO.getAllPublisher();
        for (Publisher pub : list){
            System.out.println(pub);
        }
    }
}

package BookStore.service.impl;

import BookStore.Dao.IUserDAO;
import BookStore.Dao.impl.UserDAO;
import BookStore.Model.User;
import BookStore.service.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {
    @Inject
    private IUserDAO userDAO;

    @Override
    public User getUser(String username) {
        return userDAO.getUser(username);
    }

    @Override
    public User register(User user) {
        Integer id = userDAO.insert(user);
        return userDAO.getUser(id);
    }

    @Override
    public User login(String username, String password) {
        return null;
    }

}

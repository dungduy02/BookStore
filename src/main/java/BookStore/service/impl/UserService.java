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
    public User findOneById(Integer id) {
        return userDAO.findOneById(id);
    }

    @Override
    public User getUser(String username) {
        return userDAO.getUser(username);
    }

    @Override
    public User insert(User user) {
        Integer id = userDAO.insert(user);
        return findOneById(id);
    }


    public User register(User user) {
        Integer id = userDAO.insert(user);
        return findOneById(id);
    }

}

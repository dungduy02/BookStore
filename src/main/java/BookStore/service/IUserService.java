package BookStore.service;

import BookStore.Model.User;

public interface IUserService {
    User getUser(String username);
    User register(User user);
    User login(String username,String password);
}

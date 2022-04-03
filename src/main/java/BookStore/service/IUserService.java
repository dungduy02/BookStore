package BookStore.service;

import BookStore.Model.User;

public interface IUserService {
    User findOneById(Integer id);
    User getUser(String username);
    User insert(User user);
    User register(User user);

}

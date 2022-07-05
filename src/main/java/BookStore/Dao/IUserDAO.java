package BookStore.Dao;

import BookStore.Model.User;

public interface IUserDAO extends GenericDAO<User> {

    User findOneById(Integer id);

    User getUser(String username);

    Integer insert(User user);

    User getUser(Integer id);
}

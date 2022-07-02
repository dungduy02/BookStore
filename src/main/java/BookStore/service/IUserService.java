package BookStore.service;

import BookStore.Model.User;

public interface IUserService {
    User findOneById(Integer id);
    User getUser(String username);
    User insert(User user);
    User register(User user);
    boolean update(User user);
//    public  boolean sendMail(String to, String sb,String txt);
//    public boolean passwordRecovery(String userName,String email);

}

package BookStore.service.impl;

import BookStore.Dao.IUserDAO;

import BookStore.Dao.impl.UserDAO;
import BookStore.Model.User;
import BookStore.service.IUserService;

import javax.inject.Inject;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;


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
        return userDAO.getUser(id);
    }

    @Override
    public boolean update(User user) {
        return userDAO.update(user);
    }

//    @Override
//    public boolean sendMail(String to, String sb, String txt) {
//        String fromGmail = "ltwebgr2021@gmail.com";
//        String password = "gcgbdoxztmabrwzq";
//        Properties properties = new Properties();
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.host", "smtp.gmail.com");
//        properties.put("mail.smtp.port", "587");
//
//        Session session = Session.getInstance(properties,new javax.mail.Authenticator(){
//            protected PasswordAuthentication getPasswordAuthentication(){
//                return new PasswordAuthentication(fromGmail,password);
//            }
//        });
//        try {
//            Message message = new MimeMessage(session);
//
//            message.setHeader("Content-Type","text/plain;charset=UTF-8");
//            message.setFrom(new InternetAddress(fromGmail));
//            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
//            message.setSubject(sb);
//            message.setText(txt);
//            Transport.send(message);
//        } catch (MessagingException e) {
//            return false;
//        }
//
//
//        return true;
//    }
//
//    @Override
//    public boolean passwordRecovery(String userName, String email) {
//        User user = userDAO.getUser(userName);
//        if (user != null){
//            sendMail(email,"Your Password is: ",user.getPassword());
//            return true;
//        }else {
//            System.out.println("No account");
//        }
//        return false;
//    }

    public static void main(String[] args) {
//        System.out.println(new UserService().passwordRecovery("mannn02","18130138@st.hcmuaf.edu.vn"));
//        System.out.println(new UserService().sendMail("ltwebgr2021@gmail.com","Your password is: ","99999"));
//        System.out.println(new UserService().passwordRecovery("mannn02","18130138@st.hcmuaf.edu.vn"));
    }
}

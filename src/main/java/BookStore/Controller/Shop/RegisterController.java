package BookStore.Controller.Shop;

import BookStore.Model.User;
import BookStore.service.IUserService;
import BookStore.utils.EncryptUtil;
import BookStore.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.Timestamp;
import java.util.Calendar;

@WebServlet(urlPatterns = "/dang-ky")
public class RegisterController extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
//        String address = request.getParameter("address");
//        String sex = request.getParameter("sex");

        User us = userService.getUser(username);
        if (us == null) {
            User user = new User();

            password = EncryptUtil.encryptMD5(password);
            user.setUsername(username);
            user.setPassword(password);
            user.setFullname(fullname);
            user.setEmail(email);
            user.setPhone(phone);
//            user.setAddressid(address);
//            user.setSex(sex);
//            user.setStatus(1);
//            user.setBlogid(1);


            try {
                user = userService.insert(user);
                System.out.println(user.toString());
                request.getSession().setAttribute("USERMODEL", user);
            } catch (Exception e) {
                response.sendRedirect(request.getContextPath() + "/TrangChu");
            }
            response.sendRedirect(request.getContextPath() + "/TrangChu");
        } else {
            request.setAttribute("username", username);
            request.setAttribute("fullname", fullname);
            request.setAttribute("password", password);
            request.setAttribute("email", email);
//            request.setAttribute("address",address);
            request.setAttribute("phone", phone);
//            request.setAttribute("sex",sex);
            request.setAttribute("uname-err", "Tên tài khoản đã tồn tại");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request, response);
        }
    }
}

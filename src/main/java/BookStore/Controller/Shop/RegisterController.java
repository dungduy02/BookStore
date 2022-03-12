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

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    @Inject
    private IUserService userService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
        rd.forward(request,response);
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
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");

        User us = userService.getUser(username);
        if (us == null){
            User user = new User();

            password = EncryptUtil.encryptMD5(password);

            user.setUsername(username);
            user.setFullname(fullname);
            user.setPassword(password);
            user.setEmail(email);
            user.setPhone(phone);
            user.setAddress(address);
            user.setGender(gender);
            user.setStatus(1);
            user.setBlogid(1);


            if ((user = userService.register(user)) !=  null){
                SessionUtil.getInstance().putValue(request,"USERMODEL",user);
                response.sendRedirect(request.getContextPath()+ "/TrangChu");

            }else {
                request.getRequestDispatcher("/views/web/register.jsp").forward(request,response);
            }

        }else {
            request.setAttribute("fullname",fullname);
            request.setAttribute("email",email);
            request.setAttribute("address",address);
            request.setAttribute("phone",phone);
            request.setAttribute("gender",gender);
            request.setAttribute("uname-err","Tên tài khoản đã tồn tại");
            request.getRequestDispatcher("/views/web/register.jsp").forward(request,response);
        }
    }
}

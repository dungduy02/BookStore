package BookStore.Controller.Shop;

import BookStore.Dao.IUserDAO;
import BookStore.Model.User;
import BookStore.service.IUserService;
import BookStore.utils.EncryptUtil;
import BookStore.utils.SessionUtil;


import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/Dang-nhap")
public class LoginController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            request.getRequestDispatcher("views/web/login.jsp").forward(request, response);
        } else if (action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getRequestURI());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String pass = EncryptUtil.encryptMD5(password);
        User user = userService.getUser(username);
        if (user != null) {

            if (user.getPassword().equals(password) || user.getPassword().equals(pass)){//user.getPassword().equals(password)
                if (user.getStatus() == 1){
                    HttpSession ss = request.getSession();
                    ss.setAttribute("USERMODEL", user);
                    response.sendRedirect(request.getContextPath() + "/TrangChu");
                }else if (user.getStatus() == 0){

                    response.sendRedirect(request.getContextPath() + "/admin-home");
                }

            } else {
                request.setAttribute("username", username);
                request.setAttribute("pwd-err", "Mật khẩu không chính xác");
                request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("uname-err", "Tài khoản không tồn tại");
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
        }
    }
}

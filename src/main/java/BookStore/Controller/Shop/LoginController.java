package BookStore.Controller.Shop;

import BookStore.Dao.IUserDAO;
import BookStore.Dao.impl.UserDAO;
import BookStore.Model.User;


import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Inject
    private IUserDAO userDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");



    }
}

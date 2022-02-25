package BookStore.Controller.Shop;

import BookStore.service.LoginDAO;
import BookStore.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/LoginController")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("header.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginDAO login = new LoginDAO();
        User user = login.Login(username,password);
        if (user == null){
            request.setAttribute("err","Username or Password sai");
            response.sendRedirect("register.jsp");
        }else{
            response.sendRedirect("index.jsp");
        }

    }
}

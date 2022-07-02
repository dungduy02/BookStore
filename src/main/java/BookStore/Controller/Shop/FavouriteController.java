package BookStore.Controller.Shop;

import BookStore.Model.User;
import BookStore.service.impl.FavoriteService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/favourite")
public class FavouriteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("customer");
        if (user!= null){
            new FavoriteService().addProductFavorite(id);
            response.sendRedirect("/views/web/favorite.jsp");
        }else{
            response.sendRedirect("/views/web/favorite.jsp");
        }

    }
}

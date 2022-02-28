package BookStore.Controller.Shop;

import BookStore.Model.Publisher;
import BookStore.Service.CategoryDAO;

import BookStore.Model.Category;
import BookStore.Service.PublisherDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/CategoryController")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategoryDAO catedao = new CategoryDAO();
        List<Category> lscate = catedao.getAllCategory();
        request.setAttribute("list",lscate);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }

}

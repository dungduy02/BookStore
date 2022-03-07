package BookStore.Controller.Shop;

import BookStore.Dao.ICategoryDAO;
import BookStore.Model.Category;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/CategoryController")
public class CategoryController extends HttpServlet {
    @Inject
    ICategoryDAO categoryDAO;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Category> listcate = categoryDAO.getAllCategory();
        request.setAttribute("listCate",listcate);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}

package BookStore.Controller.Shop;


import BookStore.Model.Publisher;
import BookStore.Service.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PublisherController", value = "/PublisherController")
public class PublisherController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CategoryDAO catepl = new CategoryDAO();
        List<Publisher> lst = catepl.getPublisher();
        request.setAttribute("plisher",lst);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }

}

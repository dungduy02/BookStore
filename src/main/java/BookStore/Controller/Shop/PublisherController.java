package BookStore.Controller.Shop;

import BookStore.Model.Category;
import BookStore.Model.Publisher;
import BookStore.Service.CategoryDAO;
import BookStore.Service.PublisherDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PublisherController", value = "/PublisherController")
public class PublisherController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PublisherDAO Pubdao = new PublisherDAO();
        List<Publisher> listPublisher = Pubdao.getP();
        request.setAttribute("listPublisher",listPublisher);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

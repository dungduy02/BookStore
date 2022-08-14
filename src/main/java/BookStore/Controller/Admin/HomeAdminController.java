package BookStore.Controller.Admin;

import BookStore.Model.*;
import BookStore.service.*;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin-home", value = "/admin-home")
public class HomeAdminController extends HttpServlet {
    @Inject
    IProductService productService;
    @Inject
    IUserService userService;
    @Inject
    IPublisherService publisherService;
    @Inject
    IAuthorService authorService;
    @Inject
    IOrderDetailService orderDetailServicel;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/index.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> listAll = productService.getAll();
        List<User> AllUser = userService.getAll();
        List<Author> allAuthor = authorService.getAllAuthor();
        List<Publisher> allPublisher = publisherService.getAllPublisher();
        List<Order> order = orderDetailServicel.getOrder();
        List<OrderDetails> orderDetails = orderDetailServicel.getAll();
        int totalProduct = listAll.size();
        int totalUser = AllUser.size();
        int totalAuthor = allAuthor.size();
        int totalPubliser = allPublisher.size();

        request.setAttribute("detailOrder",orderDetails);
        request.setAttribute("totalUser",totalUser);
        request.setAttribute("totalProduct",totalProduct);
        request.setAttribute("totalPublisher",totalPubliser);
        request.setAttribute("totalAuthor",totalAuthor);
        request.setAttribute("order",order);

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/dashboard.jsp");
        rd.forward(request, response);
    }
}

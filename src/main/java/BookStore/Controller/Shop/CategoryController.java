package BookStore.Controller.Shop;

import BookStore.Dao.ICategoryDAO;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.service.ICategoryService;
import BookStore.service.IProductService;
import BookStore.service.IPublisherService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/category")
public class CategoryController extends HttpServlet {
    @Inject
    ICategoryService categoryService;
    @Inject
    IProductService productService;
    @Inject
    IPublisherService publisherService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String caid = request.getParameter("cid");
        List<Product> listpc = productService.getProductByCategory(caid);
        List<Publisher> listPu = publisherService.getAllPublisher();
        List<Category> listC = categoryService.findAll();


        request.setAttribute("listC",listC);
        request.setAttribute("list",listpc);
        request.setAttribute("listPu",listPu);

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
        rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}

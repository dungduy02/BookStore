package BookStore.Controller.Shop;

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

@WebServlet(urlPatterns = "/shop")
public class ShopController extends HttpServlet {
    @Inject
    private IProductService productService;
    @Inject
    private ICategoryService categoryService;
    @Inject
    private IPublisherService publisherService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            List<Product> list = productService.getAll();
            List<Category> listC = categoryService.findAll();
            List<Publisher> listPu = publisherService.getAllPublisher();
            Product product = productService.getLastProduct();


            request.setAttribute("list",list);
            request.setAttribute("listC",listC);
            request.setAttribute("listPu",listPu);
            request.setAttribute("lastP",product);


            RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
            rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}

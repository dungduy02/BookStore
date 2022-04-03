package BookStore.Controller.Shop;
import BookStore.Model.*;
import BookStore.service.*;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/TrangChu")
public class HomeController extends HttpServlet {
    @Inject
    private IProductService productService;

    @Inject
    private IPublisherService publisherService;

    @Inject
    private ISaleService saleService;


    @Inject
    private ICategoryService categoryService;

    @Inject
    private ICartService cartService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> list = productService.getAll();
        List<Product> listS = productService.getSaleProduct();
        List<Category> listC = categoryService.findAll();
        List<Product> listn = productService.getNewProduct();




        request.setAttribute("ListNew",listn);
        request.setAttribute("listSale",listS);
        request.setAttribute("listC",listC);
        request.setAttribute("list",list);


        RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}

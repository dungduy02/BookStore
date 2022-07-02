package BookStore.Controller.Shop;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.Model.Sale;
import BookStore.Model.Slider;
import BookStore.service.ICategoryService;

import BookStore.service.IProductService;
import BookStore.service.IPublisherService;
import BookStore.service.ISaleService;
import BookStore.service.ISliderService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
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
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> list = productService.get12Product();
        List<Product> listS = productService.getSaleProduct();
        List<Category> listC = categoryService.findAll();
        List<Product> listn = productService.getNewProduct();
        List<Slider> sliderList = sliderService.getAll();

        request.setAttribute("slider",sliderList);
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

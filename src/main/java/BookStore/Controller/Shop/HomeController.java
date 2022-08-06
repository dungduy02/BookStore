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
    private ISliderService sliderService;
    @Inject
    private IBlogService blogService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> list = productService.get12Product();
        List<Product> listS = productService.getSaleProduct();
        List<Category> listC = categoryService.findAll();
        List<Product> listn = productService.getNewProduct();
        Slider slider = sliderService.getSlide();
        List<Sale> sales = saleService.getAllSale();
        List<Blog> listBlog = blogService.getAllBlog();
        Sale sale = null;
        for (Product p: listS) {
            if (p.getSaleid() == 2){
                sale = saleService.getSaleById2();
                request.setAttribute("PriceSale",sale);
            }else if (p.getSaleid() == 3){
                sale = saleService.getSaleById3();
                request.setAttribute("PriceSale",sale);
            }
        }

        request.setAttribute("ListNew",listn);
        request.setAttribute("listSale",listS);
        request.setAttribute("listC",listC);
        request.setAttribute("list",list);
        request.setAttribute("slider",slider);
        request.setAttribute("Percent",sales);
        request.setAttribute("listBlog",listBlog);

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}

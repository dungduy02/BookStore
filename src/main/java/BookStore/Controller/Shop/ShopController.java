package BookStore.Controller.Shop;

import BookStore.Model.*;
import BookStore.service.*;

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
    @Inject
    private ISaleService saleService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");

            List<Product> list = productService.getAll();
            List<Category> listC = categoryService.findAll();
            List<Publisher> listPu = publisherService.getAllPublisher();
            Product product = productService.getLastProduct();
            List<Sale> sale = saleService.getAllSale();
            int totalProduct = list.size();
            int page, numberpage = 18;
            int size = list.size();
            int num = (size % 18 == 0?(size/18): ((size/18))+ 1); // number page
            String xpage = request.getParameter("page");
            if (xpage == null){
                page = 1;
            }else {
                page = Integer.parseInt(xpage);
            }
            int start,end;
            start = (page-1) * numberpage;
            end = Math.min(page* numberpage,size);
            List<Product> listPage = productService.getPageProduct(list,start,end);

            request.setAttribute("list",list);
            request.setAttribute("listC",listC);
            request.setAttribute("listPu",listPu);
            request.setAttribute("lastP",product);
            request.setAttribute("Sale",sale);
            request.setAttribute("Page",listPage);
            request.setAttribute("num",num);
            request.setAttribute("totalProduct",totalProduct);

            


            RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
            rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}

package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/new")
public class NewProductController extends HttpServlet {
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Product> list = productService.getNewProduct();
        request.setAttribute("new",list);
        response.sendRedirect("/views/web/shop.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

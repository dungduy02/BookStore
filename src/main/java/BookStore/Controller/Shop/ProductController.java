package BookStore.Controller.Shop;
import BookStore.service.ProductDAO;
import BookStore.Model.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/ProductController")
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO productdao = new ProductDAO();
        List<Product> list = productdao.getAllProduct();
        request.setAttribute("listPr",list);
        request.getRequestDispatcher("shop-grid.jsp").forward(request,response);
    }


}

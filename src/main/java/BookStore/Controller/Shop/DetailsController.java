package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/DetailsController")
public class DetailsController extends HttpServlet {
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Integer id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.getDetails(id);
        request.setAttribute("details",product);
        request.getRequestDispatcher("/views/web/details.jsp").forward(request,response);

    }


}

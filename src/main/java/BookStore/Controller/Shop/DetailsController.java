package BookStore.Controller.Shop;

import BookStore.Model.ProductDetails;
import BookStore.service.ProductDetailDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailsController", value = "/DetailsController")
public class DetailsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDetailDAO detaildao = new ProductDetailDAO();
        List<ProductDetails> listdetails = detaildao.getDetail();
        request.setAttribute("detail", listdetails);
        request.getRequestDispatcher("product-details.jsp").forward(request,response);

    }


}

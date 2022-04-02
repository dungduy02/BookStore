package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.service.ICartService;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/cart")
public class CartController extends HttpServlet {
    @Inject
    ICartService cartService;
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shoping-cart.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

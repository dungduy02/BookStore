package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Product;
import BookStore.Model.User;
import BookStore.service.ICartService;
import BookStore.service.IProductService;
import BookStore.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/cart")
public class CartController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Inject
    ICartService cartService;
    @Inject
    IProductService productService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/web/shoping-cart.jsp");
        dispatcher.forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");


    }


}

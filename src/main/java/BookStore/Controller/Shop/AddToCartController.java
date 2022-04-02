package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Order;
import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/add-to-cart")
public class AddToCartController extends HttpServlet {
    @Inject private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
        Cart cart = new Cart();
        String masp = request.getParameter("masp");
        String bid = request.getParameter("bid");

        if (bid.equals("muasp")){
            cart.addItem(masp);
            request.setAttribute("cart",cart.getListItems());
        }
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/shoping-cart.jsp");
            rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

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
        String action;
        Integer detailsId;
        try {
            action = request.getParameter("action");
            detailsId = Integer.parseInt(request.getParameter("details"));
            Cart cart = (Cart) request.getSession().getAttribute("CART");
            if (action.equals("update")){
                String method;
                try {
                    method = request.getParameter("method");
                    boolean updated;
                    Item item = cart.getItem(detailsId);
                    switch (method){
                        case "sub":
                            item.sub();
                            updated = cartService.updateItem(item);
                            break;
                        case "plus":
                            item.plus();
                            updated = cartService.updateItem(item);
                            break;
                    }
                } catch (Exception e) {
                    response.sendRedirect("/view/error.jsp");
                }
            }else if(action.equals("add")){
                String productId = request.getParameter("productId");
                Product product = productService.getProductById(productId);
                Item item  = new Item();
                item.setQuantity(1);
                item.setCartId(cart.getId());

                item.setProduct(product);

                Item it  = cartService.insertItem(item);
                cart.getItems().add(it);
                response.sendRedirect(request.getContextPath() + "/products?id=" + productId);

            }else if (action.equals("deleted")){
                boolean deleted = cartService.deleteDetailItemById(detailsId);
                if (deleted){
                    boolean rmItem = cart.removeItem(detailsId);
                }
            }
            response.sendRedirect(request.getRequestURI());
        } catch (NumberFormatException e) {
            response.sendRedirect("/views/loi404.jsp");
        }


    }
}

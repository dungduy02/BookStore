package BookStore.Controller.Shop;

import BookStore.Model.Cart;
import BookStore.Model.OrderDetails;
import BookStore.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BillController", urlPatterns = "/bill")
public class BillController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/web/bill.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        OrderDetails orderDetails = (OrderDetails) request.getSession().getAttribute("bill");
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("USERMODE");
        session.setAttribute("USERMODE",user);
        session.setAttribute("bill",orderDetails);
        session.removeAttribute("cart");
    }
}

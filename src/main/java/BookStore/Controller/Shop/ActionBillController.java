package BookStore.Controller.Shop;

import BookStore.Dao.IOrderDetailDAO;
import BookStore.Model.Cart;
import BookStore.Model.Info;
import BookStore.Model.OrderDetails;
import BookStore.service.ICartService;
import BookStore.service.IOrderDetailService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ActionBillController", urlPatterns = "/actionBill")
public class ActionBillController extends HttpServlet {
    @Inject
    private IOrderDetailService orderDetailService;

    @Inject
    private ICartService cartService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String conscious = request.getParameter("conscious");
        String district = request.getParameter("district");
        String wards = request.getParameter("wards");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = request.getParameter("note");

        OrderDetails in = new OrderDetails();

        in.setFirstName(firstname);
        in.setLastName(lastname);
        in.setAddress(address);
        in.setConscious(conscious);
        in.setDistric(district);
        in.setWards(wards);
        in.setPhone(phone);
        in.setEmail(email);
        in.setNote(note);

        try {
            Cart cart = (Cart) session.getAttribute("cart");
//            System.out.println("ra ketqua: " + cart.getItems().get(cart.getId()).getPrice());
            Cart cart1 = cartService.getLastCart();
            System.out.println("fasdf : " + cart.getId());
            in = orderDetailService.insert(in, cart1);
            System.out.println("hiển thị gì đây: " +in.toString());
            request.getSession().setAttribute("cart", cart);
            request.getSession().setAttribute("ORDERMODEL", in);
        }catch (Exception e){
            response.sendRedirect(request.getContextPath() + "/TrangChu");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

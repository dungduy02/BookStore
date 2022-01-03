package BookStore.Controller;

import BookStore.Model.Product;
import BookStore.service.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "shop-grid", urlPatterns = "/shop-grid")
public class ShopGrid extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> values = new ProductEntity().getAll();
        Collection<Product> valuesCate = new ProductEntity().getCategory();
        request.setAttribute("list", values);
        request.setAttribute("listCate", valuesCate);
        request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
    }
}

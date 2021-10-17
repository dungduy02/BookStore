package BookStore.Controller;

import BookStore.Model.Product;
import BookStore.entity.ProductEntity;
import BookStore.filter.Data;

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
        request.setAttribute("list", values);
        request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
    }
}
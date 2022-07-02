package BookStore.Controller.Admin;

import BookStore.Dao.GenericDAO;
import BookStore.Dao.impl.AbstractDAO;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteProductController", urlPatterns = "/delete")
public class DeleteProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sid");

        productService.deleteProduct(id);
        response.sendRedirect("admin-product");


    }
}

package BookStore.Controller.Admin;

import BookStore.Model.Product;
import BookStore.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateProductController", urlPatterns = "/update")
public class UpdateProductController extends HttpServlet {

    @Inject
    private IProductService productService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String id = request.getParameter("id");
//        String author = request.getParameter("author");
        String quantity = request.getParameter("quantity");
        String description = request.getParameter("description");

        Product p = new Product();
        p.setId(Integer.parseInt(id));
        p.setName(name);
        p.setImg(img);
        p.setCategoryid(Integer.parseInt(category));
        p.setPrice(Integer.parseInt(price));
//        p.setPublisherid(Integer.parseInt(published));
//        p.setAuthorid(Integer.parseInt(author));
        p.setQuantity(Integer.parseInt(quantity));
        p.setDescription(description);

        productService.updateProduct(p);
        response.sendRedirect(request.getContextPath() + "/admin-product");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sid");

        Product p = productService.getProductById(id);
        request.setAttribute("pr", p);
        request.getRequestDispatcher("/views/admin/edit-product.jsp").forward(request,response);

    }
}

package BookStore.Controller.Shop;

import BookStore.Model.Blog;
import BookStore.service.IBlogService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/blog")
public class BlogController extends HttpServlet {
    @Inject
    IBlogService blogService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Blog> listBlog = blogService.getAllBlog();

        request.setAttribute("listBlog",listBlog);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/blog.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

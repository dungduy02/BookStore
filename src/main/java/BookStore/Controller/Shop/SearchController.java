package BookStore.Controller.Shop;

import BookStore.Model.Product;
import BookStore.service.ISearchService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/search")
public class SearchController extends HttpServlet {
    @Inject
    ISearchService searchService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String filter = request.getParameter("filter");
        String keyword = request.getParameter("keyword");
        List<Product> list = searchService.search(filter,keyword);

        request.setAttribute("listProduct",list);
        request.setAttribute("filter",filter);
        request.setAttribute("keyword",keyword);

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/search.jsp");
        rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}

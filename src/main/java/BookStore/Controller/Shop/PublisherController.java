package BookStore.Controller.Shop;


import BookStore.Model.Publisher;
import BookStore.service.IPublisherService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/publisher")
public class PublisherController extends HttpServlet {
    @Inject
    IPublisherService publisherService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Publisher> listPub = publisherService.getAllPublisher();

        request.setAttribute("listPub",listPub);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
        rd.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

}

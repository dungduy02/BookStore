package BookStore.service;

import BookStore.Model.Blog;

import java.util.List;

public interface IBlogService {
     List<Blog> getAllBlog();
     Blog getDetailsBlog(String id);
}

package BookStore.service.impl;

import BookStore.Dao.ICart;
import BookStore.Dao.IItemDAO;
import BookStore.Dao.impl.ItemDAO;
import BookStore.Model.Cart;
import BookStore.Model.Item;
import BookStore.Model.Product;
import BookStore.config.ConnectionPool;
import BookStore.mapper.ProductMapper;
import BookStore.service.ICartService;

import javax.inject.Inject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class CartService implements ICartService {


}

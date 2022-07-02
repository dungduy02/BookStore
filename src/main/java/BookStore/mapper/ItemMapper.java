package BookStore.mapper;

import BookStore.Model.Item;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ItemMapper implements RowMapper<Item>{

    @Override
    public Item mapRow(ResultSet rs) {
            Item item = new Item();

        return item;
    }
}

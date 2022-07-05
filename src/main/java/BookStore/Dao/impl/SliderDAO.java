package BookStore.Dao.impl;

import BookStore.Dao.ISliderDAO;
import BookStore.Model.Slider;
import BookStore.mapper.SliderMapper;

import java.util.List;

public class SliderDAO extends AbstractDAO<Slider> implements ISliderDAO{
    @Override
    public List<Slider> getAll() {
        String sql = "SELECT * FROM slider";
        return query(sql,new SliderMapper());
    }
}

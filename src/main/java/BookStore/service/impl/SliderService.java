package BookStore.service.impl;

import BookStore.Dao.ISliderDAO;
import BookStore.Dao.impl.SliderDAO;
import BookStore.Model.Slider;
import BookStore.service.ISliderService;

import javax.inject.Inject;
import java.util.List;

public class SliderService implements ISliderService {
    @Inject
    ISliderDAO sliderDAO;
    @Override
    public List<Slider> getAll() {
        return sliderDAO.getAll();
    }

    public static void main(String[] args) {
        ISliderDAO sliderDAO = new SliderDAO();
        List<Slider> list = sliderDAO.getAll();
        for (Slider sl : list){
            System.out.println(sl);
        }
    }
}

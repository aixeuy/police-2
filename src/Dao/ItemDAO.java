package Dao;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
import model.Item;

import java.util.List;

public interface ItemDAO {

    public void save(Item c);

    public List<Item> list();

    public void update(Item c);

    public void delete(Item c);

}

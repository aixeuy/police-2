package Dao;

import model.Item;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by Win7uX32 on 2015/7/20.
 */
public class Service {
    public static List<Item> lst;
    public static ItemDAO data=null;
    static {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

        data = context.getBean(ItemDAO.class);
    }
    public static void start(){
        /*if(data!=null) {
            data = new CarDAOImpl();
        }*/
        lst=data.list();
    }
    public static void addItem(String code, String body, int action,
                               int category, int board, int region, String board_sh, String c_type){
        Item c=new Item();
        c.setName(code);
        c.setCarattere(body);
        c.setLength(action);
        c.setWidth(category);
        c.setHeight(board);
        c.setWeight(region);
        c.setColor(board_sh);
        c.setOther(c_type);
        data.save(c);
    }
    public static Item getItemByIndex(int i){
        return lst.get(i);
    }
    public static void edit(Item c,String code,String body,int action,
                            int category,int board,int region,String board_sh,String c_type){
        c.setName(code);
        c.setCarattere(body);
        c.setLength(action);
        c.setWidth(category);
        c.setHeight(board);
        c.setWeight(region);
        c.setColor(board_sh);
        c.setOther(c_type);
        data.update(c);
    }
    public static void deleteItem(Item c){
        data.delete(c);
    }

}

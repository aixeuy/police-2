package main;

/**
 * Created by Win7uX32 on 2015/7/20.
 */
import java.util.List;

import Dao.ItemDAO;
import model.Item;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringHibernateMain {
    public static void main(String[] args) {

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

        ItemDAO personDAO = context.getBean(ItemDAO.class);

        Item person = new Item();
        person.setName("123456");

        personDAO.save(person);

        System.out.println("Person::"+person);

        List<Item> list = personDAO.list();

        for(Item p : list){
            System.out.println("Person List::"+p);
        }
        //close resources
        context.close();
    }
}

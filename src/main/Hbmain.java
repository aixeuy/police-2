package main;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
public class Hbmain {
    public static SessionFactory sessionFactory;
    static {
        try {
            Configuration config = new Configuration().configure();
            sessionFactory = config.buildSessionFactory();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        Hbmain hb = new Hbmain();
        sessionFactory.close();

    }
}

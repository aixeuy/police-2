package Dao;

/**
 * Created by Win7uX32 on 2015/7/20.
 */
import java.util.List;

import model.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class ItemDAOImpl implements ItemDAO {
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private HibernateTemplate ht=null;
    private HibernateTemplate getHibernateTemplate(){
        if(ht==null){
            ht=new HibernateTemplate(sessionFactory);
        }
        return ht;
    }

    @Override
    public void save(Item p) {
        Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.persist(p);
        tx.commit();
        session.close();
        //getHibernateTemplate().save(p);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Item> list() {
        Session session = this.sessionFactory.openSession();
        List<Item> personList = session.createQuery("from Item").list();
        session.close();
        return personList;
        //return (List<Car>)getHibernateTemplate().find("from Car as c order by c.id asc");
    }

    @Override
    public void update(Item ct) {
        //getHibernateTemplate().update(c);
        Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.update(ct);
        tx.commit();
        session.close();
    }

    @Override
    public void delete(Item c) {
        Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.delete(c);
        tx.commit();
        session.close();
    }
    public void clear(){
        List<Item> lst=list();
        for(Item c:lst){
            delete(c);
        }
    }
}

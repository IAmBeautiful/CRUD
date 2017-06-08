package dao;


import model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    public static int page = 1;


    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(User user) {

        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User added - " + user);
    }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User updated - " + user);
    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));

        if (user != null) {
            session.delete(user);
        }
        logger.info("User deleted - " + user);
    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("User loaded - " + user);

        return user;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");


        if (page != -1) {
            query.setFirstResult(page * 5);
            query.setMaxResults(5);
        }

        List<User> userList = query.list();

        for (User user : userList) {
            logger.info("User list: " + user);
        }

        return userList;
    }


    @Override
    public List<User> searchUsers(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");

        List<User> userList = new ArrayList<>();
        boolean add = true;

        for (Object search : query.list()) {

            User checkuser = (User) search;

            if (user.getUserName().length() > 0){
                if (!user.getUserName().equalsIgnoreCase(checkuser.getUserName()))
                    add = false;
            }

            if (user.getUserAge().length() > 0){
                if (!user.getUserAge().equals(checkuser.getUserAge()))
                    add = false;
            }

            if (user.getAdmin() != checkuser.getAdmin()){
                add = false;
            }

            if (add){
                userList.add(checkuser);
            }

            add = true;
        }

        return userList;
    }
}

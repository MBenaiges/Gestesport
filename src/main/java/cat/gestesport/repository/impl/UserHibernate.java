/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository.impl;

import cat.gestesport.domain.Role;
import cat.gestesport.domain.User;
import cat.gestesport.repository.UserRepository;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Cristian
 */
@Transactional
@Repository
public class UserHibernate implements UserRepository {
    
    @Autowired
    private SessionFactory sessionFactory;
       
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    } 
    
    private Criteria createEntityCriteria() {
        return getSession().createCriteria(User.class);
    }     

    @Override
    public List<User> getAll() {        
        String hql = "from User";
        Query query = getSession().createQuery(hql);        
        return query.list();
    }

    @Override
    public User getUserById(int userID) {
        return getSession().get(User.class, userID);
    }
    
    @Override
    public User getUserByUsername(String username) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("username", username));
        return (User) criteria.uniqueResult();
    }
       
    @Override
    public void add(User user) {
        getSession().saveOrUpdate(user);
    }


    @Override
    public void update(User user) {
        getSession().merge(user);
    }

    @Override
    public void delete(int userID) {
        User target = getUserById(userID);
        getSession().delete(target);
    }   

    @Override
    public List<User> getUserByRole(Role userRole) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("userRole",userRole));
        return criteria.list();
    }
}

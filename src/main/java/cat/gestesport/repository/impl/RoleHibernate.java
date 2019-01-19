/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository.impl;

import cat.gestesport.domain.Role;
import cat.gestesport.repository.RoleRepository;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Repository
public class RoleHibernate implements RoleRepository {
    
    @Autowired
    private SessionFactory sessionFactory;
       
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    } 
    
    private Criteria createEntityCriteria() {
        return getSession().createCriteria(Role.class);
    }

    @Override
    public List<Role> getAll() {
        Criteria criteria = createEntityCriteria();
        return criteria.list();
    }    

    @Override
    public Role getRoleByDesc(String desc) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("roleDesc", desc));
        return (Role) criteria.uniqueResult();
    }
}

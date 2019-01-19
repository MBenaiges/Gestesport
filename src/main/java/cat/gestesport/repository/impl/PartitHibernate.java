/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository.impl;

import cat.gestesport.domain.Partit;
import cat.gestesport.domain.User;
import cat.gestesport.repository.PartitRepository;
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
public class PartitHibernate implements PartitRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    private Criteria createEntityCriteria() {
        return getSession().createCriteria(Partit.class);
    }
    
    
    @Override
    public List<Partit> getAllPartits() {
        Criteria criteria = createEntityCriteria();
        return (List<Partit>) criteria.list();
    }

    @Override
    public void addPartit(Partit partit) {
        getSession().saveOrUpdate(partit);
    }

    @Override
    public Partit getPartitById(int idPartit) {
        return getSession().get(Partit.class, idPartit);
    }

    @Override
    public List<Partit> getPartitsByArbitre(User arbitre) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("arbitre", arbitre));
        return (List<Partit>) criteria.list();
    }    
}

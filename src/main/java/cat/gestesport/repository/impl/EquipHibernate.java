package cat.gestesport.repository.impl;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import cat.gestesport.repository.EquipRepository;
import cat.gestesport.service.UserService;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Marc
 */
@Transactional
@Repository
public class EquipHibernate implements EquipRepository{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Autowired
    private UserService userService;
    
    /**
     * Mostra tots els equips seguint el següent ordre:
     * més punts, més gols a favor, menys gols en contra, menys targetes vermelles,
     * menys targetes grogues
     * @return 
     */
    @Override
    public List<Equip> getEquipsClasification() {
        Criteria criteria = createEntityCriteria();
        //Afegeix el criteri d'ordenar per punts
        criteria.addOrder(Order.desc("punts"));
        //Afegeix el criteri d'ordenar per gols a favor descendent
        criteria.addOrder(Order.desc("golsFavor"));
        //Afegeix el criteri d'ordenar per gols en contra ascendent
        criteria.addOrder(Order.asc("golsContra"));
        //Afegeix el criteri d'ordenar per gols en contra ascendent
        criteria.addOrder(Order.asc("targetesVermelles"));
        //Afegeix el criteri d'ordenar per gols en contra ascendent
        criteria.addOrder(Order.asc("targetesGrogues"));
        return (List<Equip>) criteria.list();
    }
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    private Criteria createEntityCriteria() {
        return getSession().createCriteria(Equip.class);
    }
    
    @Override
    public Equip getEquipById(int idEquip) {
        return getSession().get(Equip.class, idEquip);
    }
    
    @Override
    public void addEquip(Equip equip) {
        getSession().saveOrUpdate(equip);
    }

    @Override
    public void deleteEquip(Equip equip) {
        getSession().remove(equip);
    }

    /**
     * 
     * @param userID
     * @return 
     */
    @Override
    public Equip getEquipByResponsable(int userID) {
       User user = userService.getUserById(userID);
       Criteria criteria = createEntityCriteria();
       criteria.add(Restrictions.eq("equipUser", user));
       return (Equip) criteria.uniqueResult();
    }
}

package cat.gestesport.repository.impl;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Jugador;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import cat.gestesport.repository.JugadorRepository;
import cat.gestesport.service.EquipService;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Marc
 */
@Transactional
@Repository
public class JugadorHibernate implements JugadorRepository{
    
    @Autowired
    EquipService equipService;
    
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    private Criteria createEntityCriteria() {
        return getSession().createCriteria(Jugador.class);
    }
    
    @Autowired
    private SessionFactory sessionFactory;
    
    
    /**
     * Mostra tots els jugadors seguint el següent ordre:
     * més gols a favor, menys targetes vermelles, menys targetes grogues
     * @return 
     */
    @Override
    public List<Jugador> getAllJugadors() {
        Criteria criteria = createEntityCriteria();
        //Afegeix el criteri d'ordenar per gols de major a menor
        criteria.addOrder(Order.desc("gols"));
        //Afegeix el criteri d'ordenar per targetes vermelles de menor a major
        criteria.addOrder(Order.asc("targetesVermelles"));
        //Afegeix el criteri d'ordenar per targetes grogues de menor a major
        criteria.addOrder(Order.asc("targetesGrogues"));
        return (List<Jugador>) criteria.list();
    }
    
    @Override
    public List<Jugador> getJugadorsByEquip(int idEquip) {
        Equip equip = equipService.getEquipById(idEquip);
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("equip", equip));
        return criteria.list();
    }
    
    @Override
    public void addJugador(Jugador jugador) {
        getSession().saveOrUpdate(jugador);
    }
    
    @Override
    public void deleteJugador(Jugador jugador){
        getSession().delete(jugador);
    }
    
    @Override
    public Jugador getJugadorById(String idJugador) {
        return getSession().get(Jugador.class, idJugador);
    }
    
    @Override
    public void updateJugador(Jugador jugador) {
        getSession().merge(jugador);
    }
}

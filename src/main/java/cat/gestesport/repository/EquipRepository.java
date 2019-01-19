/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.User;
import java.util.List;

/**
 * 
 * @author Jordi
 */
public interface EquipRepository {
    
    /**
     * Mostra els equips ordenats per punts, gols a favor i en contra 
     * @return llistat d'equips
     */
    List<Equip> getEquipsClasification();
    
    /**
     * 
     * @param idEquip
     * @return 
     */
    Equip getEquipById(int idEquip);
    
    /**
     * Mètode que rep un objecte del tipus users 
     * i l'introdueix a la BBDD
     * 
     * @param equip 
     */    
    void addEquip(Equip equip);
    
    /**
     * Mètode que elimina de la BBDD l'objecte 
     * que rep com a paràmetre 
     * @param equip
     */
    void deleteEquip (Equip equip);
    
    /**
     * Funció que retorna l'equip segons l'usuari passat
     * @param userID resposnable de l'equip
     * @return equip
     */
    Equip getEquipByResponsable(int userID);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.User;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 *
 * @author Jordi
 */

public interface EquipService {
    List<Equip> getEquipsClasification();
    Equip getEquipById(int idEquip);
    void addEquip(Equip equip);    
    void deleteEquip (Equip equip);
    Equip getEquipByResponsable(User user);    
}

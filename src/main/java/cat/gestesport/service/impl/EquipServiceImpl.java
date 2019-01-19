/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service.impl;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.User;
import cat.gestesport.repository.EquipRepository;
import cat.gestesport.repository.JugadorRepository;
import cat.gestesport.service.EquipService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class EquipServiceImpl implements EquipService {

    @Autowired
    private EquipRepository equipRepository;
   
    
    @Override
    public List<Equip> getEquipsClasification(){
        return equipRepository.getEquipsClasification();
    }
    
    @Override
    public Equip getEquipById(int idEquip) {
        return equipRepository.getEquipById(idEquip);
    }

    @Override
    public void addEquip(Equip equip) {
        equipRepository.addEquip(equip);
    }

    @Override
    public void deleteEquip(Equip equip) {
        equipRepository.deleteEquip(equip);
    }

    @Override
    public Equip getEquipByResponsable(User user) {
        System.out.println("Cridem al repositori amb l'usuari: "+ user.getUserID());
        return equipRepository.getEquipByResponsable(user.getUserID());
    }
}

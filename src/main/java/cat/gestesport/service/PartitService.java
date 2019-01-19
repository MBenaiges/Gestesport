/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Partit;
import cat.gestesport.domain.User;
import java.util.List;

/**
 *
 * @author Jordi
 */
public interface PartitService {
    List<Partit> getAllPartits();
    void addPartit (Partit partit);
    void generarCalendari(List<Equip> equipsCompeticio, List<User> arbitres);
    Partit getPartitById( int idPartit);    
    List<Partit> getPartitsByArbitre(User arbitre);
}

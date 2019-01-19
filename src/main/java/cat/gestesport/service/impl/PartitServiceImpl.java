/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service.impl;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Partit;
import cat.gestesport.domain.User;
import cat.gestesport.repository.PartitRepository;
import cat.gestesport.service.PartitService;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartitServiceImpl implements PartitService {

    @Autowired
    PartitRepository partitRepository;
    
    @Override
    public List<Partit> getAllPartits() {
        return partitRepository.getAllPartits();
    }

    @Override
    public void addPartit(Partit partit) {
        partitRepository.addPartit(partit);
    }

    @Override
    public void generarCalendari(List<Equip> equipsCompeticio, List<User> arbitres) {
        System.out.println("La competició s'iniciarà amb " + equipsCompeticio.size() + " equips");
        System.out.println("I disposes de " + arbitres.size() + " àrbitres");
        System.out.println("Generant calendari");             
        //Variable per saber si el nombre d'equips és parel
        boolean equipsParell = equipsCompeticio.size()%2 == 0;        
        if (!equipsParell){
            Equip equipNul = null;
            equipsCompeticio.add(equipNul);
        }        
        int jornades = equipsCompeticio.size()-1;
        int meitatEquips = equipsCompeticio.size()/2;
        //Crea els arrays amb els diferents equips
        List<Equip> equipsLocals = partirArray(equipsCompeticio, 0, meitatEquips);
        List<Equip> equipsVisitants =  partirArray(equipsCompeticio,meitatEquips,equipsCompeticio.size());
        int idPartit = 1;
        int x = 0;
       //Per a cada una de les jornades
        for (int indexJornada = 0; indexJornada < jornades; indexJornada++) {            
            Timestamp dataInicialCompeticio = Timestamp.valueOf(" 2019-01-03 22:00:00");
            //Genera els partits
            for (int indexPartit = 0; indexPartit < equipsCompeticio.size()/2; indexPartit++){
                Partit partit = new Partit();
                if (equipsLocals.get(indexPartit) != null && equipsVisitants.get(indexPartit) != null) {                    
                    System.out.println("Crea partit num: " + idPartit);
                    partit.setIdPartit(idPartit++);
                    partit.setEquipA(equipsLocals.get(indexPartit));
                    partit.setEquipB(equipsVisitants.get(indexPartit));
                    partit.setDataPartit(dataInicialCompeticio);
                    partit.setArbitre(arbitres.get(x%arbitres.size()));
                    x++;
                    System.out.println(equipsLocals.get(indexPartit).getNom() + "vs" +
                            equipsVisitants.get(indexPartit).getNom() + "i arbitrarà " +
                            arbitres.get(x%arbitres.size()).getUsername());
                    this.addPartit(partit);
                }
                
            }
            //Fa rotació dels equips per continuar els emparellaments
            if (equipsLocals.size()>1) {
                equipsVisitants.add(0, equipsLocals.remove(1));
                equipsLocals.add(equipsVisitants.remove((equipsVisitants.size()-1)));
            }                                                    
        }
    }

    private List<Equip> partirArray (List<Equip> arrayListRebut, int desde, int finsA) {
        List<Equip> arrayATornar = new ArrayList<>();
        for (int i = desde; i < finsA; i++) {
            arrayATornar.add(arrayListRebut.get(i));
        }
        return arrayATornar;
    }

    @Override
    public Partit getPartitById(int idPartit) {
        return partitRepository.getPartitById(idPartit);
    }

    @Override
    public List<Partit> getPartitsByArbitre(User arbitre) {
        return partitRepository.getPartitsByArbitre(arbitre);
    }
}

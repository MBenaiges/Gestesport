/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.ws;

import cat.gestesport.domain.Equip;
import cat.gestesport.service.EquipService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Jordi
 */

@RestController
public class TeamController {
    
    @Autowired
    private EquipService equipService;

    public TeamController(EquipService equipService) {
        this.equipService = equipService;
    }

    public TeamController() {
    }
    
    @RequestMapping (value = "/teams", method = RequestMethod.GET)
    public @ResponseBody List<Equip> getAll() {
        return this.equipService.getEquipsClasification();
    }
    
    @RequestMapping (value = "/team/{id}", method = RequestMethod.GET)
    public @ResponseBody Equip getEquipById(@PathVariable int id) {
        return this.equipService.getEquipById(id);
    }
}

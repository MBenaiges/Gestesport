/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.controller;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Partit;
import cat.gestesport.domain.User;
import cat.gestesport.service.EquipService;
import cat.gestesport.service.PartitService;
import cat.gestesport.service.RoleService;
import cat.gestesport.service.UserService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cristian
 */
@Controller
public class AdminController {
    
    @Autowired
    PartitService partitService;
    
    @Autowired
    EquipService equipService;
    
    @Autowired
    UserService userService;
    
    @Autowired
    RoleService roleService;
    
    @RequestMapping(value = "/panellAdmin", method = RequestMethod.GET)
    public ModelAndView handleRequestAdmin (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("panellAdmin");
        int numeroArbitres = userService.getUserByRole(roleService.getRoleByDesc("Arbitre")).size();        
        List<Partit> calendari = partitService.getAllPartits();
        //Si no hi ha partits
        if (calendari.size() == 0) {
            //Si no hi ha àrbitres no podem fer el calendari
            if (numeroArbitres == 0) {
                modelAndView.getModelMap().addAttribute("errorArbitres", true);
            } else {
                modelAndView.getModelMap().addAttribute("botocalendari", true);
            }            
        }
        modelAndView.getModelMap().addAttribute("partits", calendari);
        return modelAndView;
    }
    
    @RequestMapping(value = "/panellAdmin", method = RequestMethod.POST)
    public String processCalendar() {
        List<Equip> equipsCompeticio = equipService.getEquipsClasification();
        List<User> arbitres = userService.getUserByRole(roleService.getRoleByDesc("Arbitre"));
        partitService.generarCalendari(equipsCompeticio,arbitres);
        return "redirect:/panellAdmin";
    }
}
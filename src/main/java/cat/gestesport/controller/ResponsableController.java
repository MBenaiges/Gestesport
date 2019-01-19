/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.controller;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Jugador;
import cat.gestesport.domain.User;
import cat.gestesport.service.EquipService;
import cat.gestesport.service.JugadorService;
import cat.gestesport.service.UserService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cristian
 */
@Controller
public class ResponsableController {
    
    @Autowired
    EquipService equipService;
    
    @Autowired
    UserService userService;
    
    @Autowired
    JugadorService jugadorService;
    
    @RequestMapping(value= "/panellResponsable", method = RequestMethod.GET)
    public ModelAndView handleRequestUsuaris (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("panellResponsable");
        //Captura l'usuari que ha fet el login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        //Ara del nom d'usuari hem de buscar la seva ID
        User usuariAutenticat = userService.getUserByUsername(auth.getName());
        System.out.println("Usuari autenticat: " + usuariAutenticat.getUsername() 
                + "\n id de l'usuari: " + usuariAutenticat.getUserID());       
        Equip equipCercat = equipService.getEquipByResponsable(usuariAutenticat);        
        if (equipCercat == null) {
            System.out.println("L'usuari no té cap equip assginat");
            modelAndView.getModelMap().addAttribute("senseEquip", true);
        } else {
            System.out.println("L'equip de l'usuari és: " + equipCercat.getNom());
            modelAndView.getModelMap().addAttribute("equip", equipCercat);
            //Mirem si l'equip té jugadors
            List<Jugador> jugadorsEquip = jugadorService.getJugadorsByEquip(equipCercat.getIdEquip());
            System.out.println("Mirem el número de jugadors: " + jugadorsEquip.size());
            if ( !(jugadorsEquip.size() > 0) ) {
                modelAndView.getModelMap().addAttribute("senseJugadors", true);
            } else {
                modelAndView.getModelMap().addAttribute("jugadors",jugadorsEquip);
            }            
        }     
        modelAndView.getModelMap().addAttribute("usuari", usuariAutenticat);        
        return modelAndView;
    }
}

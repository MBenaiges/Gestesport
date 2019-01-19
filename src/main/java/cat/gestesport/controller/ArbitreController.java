/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.controller;

import cat.gestesport.domain.Partit;
import cat.gestesport.domain.User;
import cat.gestesport.service.PartitService;
import cat.gestesport.service.UserService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Jordi
 */
@Controller
public class ArbitreController {
    
    @Autowired
    PartitService partitService;
    
    @Autowired
    UserService userService;
    
    @RequestMapping(value = "/panellArbitre", method = RequestMethod.GET)
    public ModelAndView handleRequestAdmin (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("panellArbitre");
        //Captura l'usuari que ha fet el login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        //Ara del nom d'usuari hem de buscar la seva ID
        User arbitreAutenticat = userService.getUserByUsername(auth.getName());
        List<Partit> partitsPerArbitrar = partitService.getPartitsByArbitre(arbitreAutenticat);
        modelAndView.getModelMap().addAttribute("partits", partitsPerArbitrar);
        return modelAndView;
    }    
}

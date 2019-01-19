/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.controller;

import cat.gestesport.domain.User;
import cat.gestesport.service.RoleService;
import cat.gestesport.service.UserService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cristian
 */
@Controller
@RequestMapping("/usuaris")
public class UsersController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private RoleService roleService;
    
    /**
     * Mètode que mostrarà el llistat de tots els usuaris
     * @param request
     * @param response
     * @return vista per on veurem tots els usuaris
     * @throws ServletException
     * @throws IOException 
     */
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView handleRequestUsuaris (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("usuaris");        
        modelAndView.getModelMap().addAttribute("usuaris", userService.getAllUsers());
        return modelAndView;
    }
    
    /**
     * Mètode que mostra la informació de un usuari o la mostra buida 
     * si no té cap usuari per a rebre
     * @param userID
     * @param request
     * @param response
     * @return vista amb la informació de un usuari
     * @throws ServletException
     * @throws IOException 
     */
    @RequestMapping(value = "/usuari")
    public ModelAndView getUserById(@RequestParam("userID") Integer userID,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelview = new ModelAndView("usuari");       
        User usuari = userService.getUserById(userID);        
        modelview.getModelMap().addAttribute("usuari", usuari);
        modelview.getModelMap().addAttribute("roles", roleService.getAll());
        return modelview;
    }
    
    /**
     * Mètode que mostra la informació de un usuari o la mostra buida 
     * si no té cap usuari per a rebre
     * @param userID
     * @param request
     * @param response
     * @return vista amb la informació de un usuari
     * @throws ServletException
     * @throws IOException 
     */
    @RequestMapping(value = "/addUsuari")
    public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelview = new ModelAndView("usuari");       
        User usuari = new User();        
        modelview.getModelMap().addAttribute("usuari", usuari);
        modelview.getModelMap().addAttribute("roles", roleService.getAll());
        return modelview;
    }
    
    /**
     * Processa la petició d'afegir un usuari 
     * @param formUsuari Usuari rebut dels camps del formulari
     * @param result Camps que no són d'obligat ompliment
     * @return Redirecciona a la pàgina que conté el llistat dels usuaris
     */
    @RequestMapping(value = "/addUsuari", method = RequestMethod.POST)
    public String processUsuariForm(@ModelAttribute("usuari") User usuari) {
        userService.add(usuari);
        return "redirect:/usuaris";
    }
    
    /**
     * Mètode que permet eliminar un usuari de l'aplicació
     * @param userID
     * @param request
     * @param response
     * @return direcció URL del llista d'usuaris
     * @throws ServletException
     * @throws IOException 
     */
    @RequestMapping(value ="/deleteUsuari",method = RequestMethod.GET)
    public String delEquipById (@RequestParam ("userID") int userID,
             HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User usuariEliminar = userService.getUserById(userID);    
        userService.delete(usuariEliminar.getUserID());     
        return "redirect:/usuaris";        
    }    
}

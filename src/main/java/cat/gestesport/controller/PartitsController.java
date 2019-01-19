/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.controller;

import cat.gestesport.domain.Partit;
import cat.gestesport.service.PartitService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cristian
 */
@Controller
@RequestMapping(value = "/partits")
public class PartitsController {
    
    @Autowired
    PartitService partitService;
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView handleRequestAdmin (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("partits");        
        modelAndView.getModelMap().addAttribute("partits", partitService.getAllPartits());
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
    @RequestMapping(value = "/partit")
    public ModelAndView getUserById(@RequestParam("idPartit") Integer idPartit,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelview = new ModelAndView("partit");       
        Partit partit = partitService.getPartitById(idPartit);
        modelview.getModelMap().addAttribute("partit", partit);
        return modelview;
    }
}

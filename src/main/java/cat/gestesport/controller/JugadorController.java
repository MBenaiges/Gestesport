package cat.gestesport.controller;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.Jugador;
import cat.gestesport.service.EquipService;
import cat.gestesport.service.JugadorService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Jordi
 */

@Controller
@RequestMapping("/jugadors")
public class JugadorController {
    
    @Autowired
    JugadorService jugadorService;
    
    @Autowired
    EquipService equipService;
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView handleRequestJugadors (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("jugadors");        
        modelAndView.getModelMap().addAttribute("jugadors", jugadorService.getAllJugadors());
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
    @RequestMapping(value = "/jugador")
    public ModelAndView getUserById(@RequestParam("idJugador") String idJugador,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelview = new ModelAndView("jugador");       
        Jugador jugador = jugadorService.getJugadorById(idJugador);
        modelview.getModelMap().addAttribute("jugador", jugador);
        return modelview;
    }
    
    @RequestMapping(value = "/addJugador", method = RequestMethod.GET)
    public ModelAndView getAddNewJugadorForm(@RequestParam ("idEquip") int idEquip,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelview = new ModelAndView("addJugador");
        Jugador newJugador = new Jugador();
        Equip equipAssociatJugador = equipService.getEquipById(idEquip);
        newJugador.setEquip(equipAssociatJugador);
        modelview.getModelMap().addAttribute("jugador", newJugador);
        return modelview;
    }

    @RequestMapping(value = "/addJugador", method = RequestMethod.POST)
    public String processAddNewJugadorForm(@ModelAttribute("jugador") Jugador newJugadorToAdd) {
        jugadorService.addJugador(newJugadorToAdd);
        return "redirect:/panellResponsable";
    }
}

package cat.gestesport.controller;

import cat.gestesport.domain.Equip;
import cat.gestesport.domain.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import cat.gestesport.service.EquipService;
import cat.gestesport.service.JugadorService;
import cat.gestesport.service.UserService;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

/**
 *
 * @author Jordi
 */
@Controller
@RequestMapping("/equips")
public class EquipController {
    
    @Autowired
    EquipService equipService;
    
    @Autowired
    UserService userService;
    
    @Autowired
    JugadorService jugadorService;
    
    /**
     * Crida a la vista per mostrar els equips ordenats 
     * per punts, gols a favor i gols en contra
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException 
     */
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView handleRequestEquips (HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        ModelAndView modelAndView = new ModelAndView("equips");        
        modelAndView.getModelMap().addAttribute("equips", equipService.getEquipsClasification());
        return modelAndView;
    }
     
    /**
     * @param request
     * @param response
     * @return 
     * @throws javax.servlet.ServletException 
     * @throws java.io.IOException
     **/
    @RequestMapping(value ="/equip", method = RequestMethod.GET)
    public ModelAndView getEquipById (@RequestParam ("idEquip") int equipId,
             HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView("equip");
        modelAndView.getModelMap().addAttribute("equip", equipService.getEquipById(equipId));
        modelAndView.getModelMap().addAttribute("jugadors", jugadorService.getJugadorsByEquip(equipId));
        return modelAndView;
    }
    
    @RequestMapping(value = "/addEquip", method = RequestMethod.GET)
    public ModelAndView getAddNewEquipForm (@RequestParam ("userID") int userID,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {
        ModelAndView modelAndView = new ModelAndView("addEquip");
        Equip newEquip = new Equip();
        User usuariEquip = userService.getUserById(userID);
        newEquip.setEquipUser(usuariEquip);
        modelAndView.getModelMap().addAttribute("newEquip", newEquip);
        return modelAndView;        
    }
    
    @RequestMapping(value = "/addEquip", method = RequestMethod.POST)
    public String processAddNewEquipForm (@ModelAttribute("newEquip")
    Equip newEquipToAdd) {
        equipService.addEquip(newEquipToAdd);
        return "redirect:/equips";
    }
    
    @RequestMapping(value ="/deleteEquip")
    public String delEquipById (@RequestParam ("idEquip") int idEquip,
             HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView("equip");
        Equip equipEliminar = equipService.getEquipById(idEquip);
        equipService.deleteEquip(equipEliminar);
        return "redirect:/equips";
    }
}

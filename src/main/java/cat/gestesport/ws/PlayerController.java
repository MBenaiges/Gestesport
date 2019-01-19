/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.ws;

import cat.gestesport.domain.Jugador;
import cat.gestesport.service.JugadorService;
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
public class PlayerController {
    
    @Autowired
    private JugadorService jugadorService;

    public PlayerController(JugadorService jugadorService) {
        this.jugadorService = jugadorService;
    }

    public PlayerController() {
    }
    
    @RequestMapping (value = "/players", method = RequestMethod.GET)
    public @ResponseBody List<Jugador> getAll() {
        return this.jugadorService.getAllJugadors();
    }
    
    @RequestMapping (value = "/player/{idJugador}", method = RequestMethod.GET)
    public @ResponseBody Jugador getJugadorById(@PathVariable String idJugador) {
        return this.jugadorService.getJugadorById(idJugador);
    }
}

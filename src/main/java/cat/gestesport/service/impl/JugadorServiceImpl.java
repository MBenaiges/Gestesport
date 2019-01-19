/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service.impl;

import cat.gestesport.domain.Jugador;
import cat.gestesport.service.JugadorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cat.gestesport.repository.JugadorRepository;

@Service
public class JugadorServiceImpl implements JugadorService {

    @Autowired
    private JugadorRepository jugadorRepository;   
    
    @Override
    public List<Jugador> getAllJugadors() {
        return (List<Jugador>) jugadorRepository.getAllJugadors();
    }
  
    @Override   
    public List<Jugador> getJugadorsByEquip(int idEquip) {
        return jugadorRepository.getJugadorsByEquip(idEquip);
    }
    
    @Override
    public void addJugador(Jugador jugador) {
        jugadorRepository.addJugador(jugador);
    }
    
    @Override
    public Jugador getJugadorById(String idJugador) {
        return jugadorRepository.getJugadorById(idJugador);
    }
    
    @Override
    public void updateJugador (Jugador jugador) {
        jugadorRepository.updateJugador(jugador);
    }
}

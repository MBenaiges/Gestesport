/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service;

import cat.gestesport.domain.Jugador;
import java.util.List;

/**
 *
 * @author Jordi
 */

public interface JugadorService {
    
    List<Jugador> getAllJugadors();
    List<Jugador> getJugadorsByEquip(int idEquip);
    void addJugador (Jugador jugador);
    Jugador getJugadorById(String idJugador);
    public void updateJugador(Jugador jugador);    
}

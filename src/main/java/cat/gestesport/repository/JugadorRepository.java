/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository;

import cat.gestesport.domain.Jugador;
import java.util.List;

/**
 *
 * @author Jordi
 */
public interface JugadorRepository {
    
    List<Jugador> getAllJugadors();   
    
    void addJugador(Jugador jugador);
    
    void deleteJugador (Jugador jugador);
    
    Jugador getJugadorById(String idJugador);
    
    void updateJugador(Jugador jugador);
    
    List<Jugador> getJugadorsByEquip(int idEquip);
            
}

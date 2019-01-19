/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service;

import cat.gestesport.domain.Role;
import cat.gestesport.domain.User;
import java.util.List;
/**
 *
 * @author Cristian
 */
public interface UserService {
    
    List<User> getAllUsers();    
    User getUserById(int userID);
    User getUserByUsername(String username);    
    List<User> getUserByRole(Role userRole);
    boolean add(User user);
    boolean update(User user);
    boolean delete(int userID);
}

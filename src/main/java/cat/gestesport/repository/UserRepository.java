/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository;

import cat.gestesport.domain.Role;
import cat.gestesport.domain.User;
import java.util.List;
/**
 *
 * @author Cristian
 */
public interface UserRepository {
    List<User> getAll();     
    User getUserById(int userID);
    User getUserByUsername(String username);
    List<User> getUserByRole(Role userRole);
    void add(User user);
    void update(User user);
    void delete(int id);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.repository;

import cat.gestesport.domain.Role;
import java.util.List;

/**
 *
 * @author Jordi
 */
public interface RoleRepository {
    List<Role> getAll();
    Role getRoleByDesc(String desc);
}

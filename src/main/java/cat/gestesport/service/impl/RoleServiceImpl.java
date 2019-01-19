/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.service.impl;

import cat.gestesport.domain.Role;
import cat.gestesport.repository.RoleRepository;
import cat.gestesport.service.RoleService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;
    
    @Override
    public List<Role> getAll() {
        return roleRepository.getAll();
    }   

    @Override
    public Role getRoleByDesc(String desc) {
        return roleRepository.getRoleByDesc(desc);
    }
}

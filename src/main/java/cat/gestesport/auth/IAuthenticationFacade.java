/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.auth;

import org.springframework.security.core.Authentication;

/**
 *
 * @author Cristian
 */
public interface IAuthenticationFacade {
    
    Authentication getAuthentication();  
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.gestesport.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Jordi
 */
@Entity
@Table (name="partit")
public class Partit implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @NotNull
    @Column (name = "idPartit")
    private int idPartit;
    
    @OneToOne
    @JoinColumn (name = "idEquipA")
    private Equip equipA;
    
    
    @OneToOne
    @JoinColumn (name = "idEquipB")
    private Equip equipB;
    
    @NotNull
    @Column (name = "dataPartit")
    private Timestamp dataPartit;
    
    @Column (name = "jugat")
    private boolean jugat;
    
    @ManyToOne
    @JoinColumn (name = "arbitre")
    private User arbitre;

    public User getArbitre() {
        return arbitre;
    }

    public void setArbitre(User arbitre) {
        this.arbitre = arbitre;
    }


    public Partit() {
    }
    
    public int getIdPartit() {
        return idPartit;
    }

    public void setIdPartit(int idPartit) {
        this.idPartit = idPartit;
    }

    public Equip getEquipA() {
        return equipA;
    }

    public void setEquipA(Equip equipA) {
        this.equipA = equipA;
    }

    public Equip getEquipB() {
        return equipB;
    }

    public void setEquipB(Equip equipB) {
        this.equipB = equipB;
    }

    public Timestamp getDataPartit() {
        return dataPartit;
    }

    public void setDataPartit(Timestamp dataPartit) {
        this.dataPartit = dataPartit;
    }
    
    /**
     * Get the value of jugat
     *
     * @return the value of jugat
     */
    public boolean isJugat() {
        return jugat;
    }

    /**
     * Set the value of jugat
     *
     * @param jugat new value of jugat
     */
    public void setJugat(boolean jugat) {
        this.jugat = jugat;
    }
}

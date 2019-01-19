package cat.gestesport.domain;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
/**
 *
 * @author Jordi
 */

@Entity
@Table (name="jugador")
public class Jugador implements Serializable{
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column (name="idJugador")
    @NotNull
    @Size (max=9)
    private String idJugador;
    
    @Column (name="nom")
    @NotNull
    @Size(max=20)
    private String nom;
    
    @Column (name="cognom")
    @NotNull
    @Size(max=20)
    private String cognom;
    
    @Column (name="gols")
    private int gols;
    
    @Column (name="targetesGrogues")
    private int targetesGrogues;
    
    @Column (name="targetesVermelles")
    private int targetesVermelles;
    
    @JoinColumn (name="idEquip")
    @ManyToOne
    private Equip equip;

    public Jugador(String idJugador, String nom, String cognom, Equip idEquip) {
        this.idJugador = idJugador;
        this.nom = nom;
        this.cognom = cognom;
        this.equip = idEquip;
        this.gols = 0;
        this.targetesGrogues = 0;
        this.targetesVermelles = 0;
    }
    
    public Jugador(){
    }
    
    public String getIdJugador() {
        return idJugador;
    }

    public void setIdJugador(String idJugador) {
        this.idJugador = idJugador;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCognom() {
        return cognom;
    }

    public void setCognom(String cognom) {
        this.cognom = cognom;
    }

    public int getGols() {
        return gols;
    }

    public void setGols(int gols) {
        this.gols = gols;
    }

    public int getTargetesGrogues() {
        return targetesGrogues;
    }

    public void setTargetesGrogues(int targetesGrogues) {
        this.targetesGrogues = targetesGrogues;
    }

    public int getTargetesVermelles() {
        return targetesVermelles;
    }

    public void setTargetesVermelles(int targetesVermelles) {
        this.targetesVermelles = targetesVermelles;
    }

    public Equip getEquip() {
        return equip;
    }

    public void setEquip(Equip idEquip) {
        this.equip = idEquip;
    }
}

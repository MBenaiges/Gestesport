package cat.gestesport.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Jordi
 */
@Entity
@Table (name="equip")
public class Equip implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="idEquip")
    @NotNull
    private int idEquip;
    
    @Column (name="nom")
    @NotNull
    @Size(max=20)
    private String nom;
    
    @Column(name="punts")
    private int punts;
    @Column(name="golsFavor")
    private int golsFavor;
    @Column(name="golsContra")
    private int golsContra;
    @Column(name="targetesGrogues")
    private int targetesGrogues;
    @Column(name="targetesVermelles")
    private int targetesVermelles;
    @Column(name="partitsGuanyats")
    private int partitsGuanyats;
    @Column(name="partitsEmpatats")
    private int partitsEmpatats;
    @Column(name="partitsPerduts")
    private int partitsPerduts;   
    
    @JsonIgnore
    @OneToOne
    @JoinColumn(name="userID")    
    private User equipUser;

    public Equip(int idEquip, String nom, int punts, int golsFavor, int golsContra, int partitsGuanyats, int partitsPerduts, 
                int partitsEmpatats, int targetesGrogues, int targetesVermelles, User userID) {
        this.idEquip = idEquip;
        this.nom = nom;
        this.punts = punts;
        this.golsFavor = golsFavor;
        this.golsContra = golsContra;
        this.partitsGuanyats = partitsGuanyats;
        this.partitsPerduts = partitsPerduts;
        this.partitsEmpatats = partitsEmpatats;
        this.targetesGrogues = targetesGrogues;
        this.targetesVermelles = targetesVermelles;
        this.equipUser = userID;
    }
    
    public Equip(String nom, User usuari){
        this.nom = nom;
        this.equipUser = usuari;
    }

    public Equip() {
    }    
    
    public int getIdEquip() {
        return idEquip;
    }
    public void setIdEquip(int idEquip) {
        this.idEquip = idEquip;
    }

    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public int getPunts() {
        return punts;
    }
    public void setPunts(int punts) {
        this.punts = punts;
    }

    public int getGolsFavor() {
        return golsFavor;
    }
    public void setGolsFavor(int golsFavor) {
        this.golsFavor = golsFavor;
    }

    public int getGolsContra() {
        return golsContra;
    }
    public void setGolsContra(int golsContra) {
        this.golsContra = golsContra;
    }

    public int getPartitsGuanyats() {
        return partitsGuanyats;
    }
    public void setPartitsGuanyats(int partitsGuanyats) {
        this.partitsGuanyats = partitsGuanyats;
    }

    public int getPartitsPerduts() {
        return partitsPerduts;
    }
    public void setPartitsPerduts(int partitsPerduts) {
        this.partitsPerduts = partitsPerduts;
    }

    public int getPartitsEmpatats() {
        return partitsEmpatats;
    }
    public void setPartitsEmpatats(int partitsEmpatats) {
        this.partitsEmpatats = partitsEmpatats;
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

    public User getEquipUser() {
        return equipUser;
    }
    public void setEquipUser(User user) {
        this.equipUser = user;
    }    
}

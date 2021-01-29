package pt.iade.Watapp.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name = "estado")
public class State {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_e")
    private int id;

    @Column(name = "Est_nome")
    private String State;

    @OneToMany
    @JoinColumn(name = "Estn_id_e")
    private List<Historic> historic;
   

    public State(){

    }


    public int getId() {
        return id;
    }

    public String getState() {
        return State;
    }

}

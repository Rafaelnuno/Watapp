package pt.iade.Watapp.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

    public State(){

    }

    public int getId() {
        return id;
    }

    public String getState() {
        return State;
    }
    

}

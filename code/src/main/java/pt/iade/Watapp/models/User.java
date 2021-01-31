package pt.iade.Watapp.models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "utilizador")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_u")
    private int id;

    @Column(name = "Use_nome")
    private String name;

    @Column(name = "Use_email")
    private String email;

    @ManyToOne
    @JoinColumn(name = "Use_tipo_id")
    @JsonIgnoreProperties({"id"})
    private Type type;

    public User(){
    }


    public User(int id) {
        this.id = id;
    }
       

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public int getId()  {
        return id;
    }

    public Type getType() {
        return type;
    }
 
    
}
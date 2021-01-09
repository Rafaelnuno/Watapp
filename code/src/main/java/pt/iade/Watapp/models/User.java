package pt.iade.Watapp.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_u")
    protected int id;

    @Column(name = "Use_nome")
    protected String name;

    @Column(name = "Use_email")
    protected String email;


    @OneToMany
    @JoinColumn(name = "id_u")
    private List<News> news;

    @ManyToOne
        @JoinColumn(name = "Use_tipo_id")
        @JsonIgnoreProperties({"id"})
        private Tipo tipo;

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

    public Tipo getTipo() {
        return tipo;
    }
 
    
}
package pt.iade.Watapp.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
//import javax.persistence.OneToMany;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "noticias")
public class News {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id_n")  
    private int id;

    @Column(name ="not_foto")
    private int number;


    @Column(name = "not_texto" )
    private String text;
   

     @ManyToOne
     @JoinColumn(name ="Not_user_id")
     @JsonIgnoreProperties({"id","email"})
     private User user;
    

     //@OneToMany
    // @JoinColumn(name = "Estn_id_n")
   //  private Historic historic;

        public News(){
    }


    public String getText() {
        return text;
    }

    public int getNumber() {
        return number;
    }

    public User getUser() {
        return user;
    }


 
}

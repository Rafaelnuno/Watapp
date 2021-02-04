package pt.iade.Watapp.models;

import java.time.LocalDate;

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
@Table(name = "estadonoticia")
public class Historic {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_en")
     private int id;

    @Column(name = "EstN_data")
     private LocalDate data;


    @ManyToOne
    @JoinColumn(name = "Estn_id_n")
    @JsonIgnoreProperties({"historic"})
     private News news;


    @ManyToOne
    @JoinColumn(name = "Estn_id_e")
     private State state;

     @ManyToOne
     @JoinColumn(name = "Estn_id_u")
    @JsonIgnoreProperties({"historic"})
      private User user;
     


    public Historic(){

    }


    public LocalDate getData() {
        return data;
    }

    public State getState() {
        return state;
    }

    public User getUser() {
        return user;
    }
 
    public News getNews() {
        return news;
    }

    public int getId() {
        return id;
    }

}

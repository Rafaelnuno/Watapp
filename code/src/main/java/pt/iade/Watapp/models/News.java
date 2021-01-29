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
   
    @Column(name = "not_titulo")
    private String title;

     @OneToMany
     @JoinColumn(name = "Estn_id_n")
     @JsonIgnoreProperties({"id"})
     private List<Historic> historic;
     
     @ManyToOne
     @JoinColumn(name ="Not_categ_id")
     //@JsonIgnoreProperties({"id"})
     private Category category;


    public News(){  
    }


    public String getText() {
        return text;
    }

    public int getNumber() {
        return number;
    }

    public List<Historic> getHistoric() {
        return historic;
    }

    public String getTitle() {
        return title;
    }

    public Category getCategory() {
        return category;
    }

    public int getId() {
        return id;
    }

}

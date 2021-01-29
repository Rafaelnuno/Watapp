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
@Table(name = "categoria")
public class Category {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_c")
     private int id;

    @Column(name = "Tip_categ")
     private String category;

     @OneToMany
     @JoinColumn(name = "Not_categ_id")
     private List<News> news;
     
     
     public String getCategory() {
         return category;
     }

     public int getId() {
         return id;
     }


}

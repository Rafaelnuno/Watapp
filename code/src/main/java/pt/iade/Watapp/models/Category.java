package pt.iade.Watapp.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

     public String getCategory() {
         return category;
     }

     public int getId() {
         return id;
     }


}

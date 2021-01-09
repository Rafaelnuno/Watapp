/*package pt.iade.Watapp.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
    @JoinColumn(name = "Id_n")
     private News news;


    @ManyToOne
    @JoinColumn(name = "Id_e")
     private Estado estado;


    public Historic(){

    }


    public LocalDate getData() {
        return data;
    }




}*/

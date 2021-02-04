package pt.iade.Watapp.models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipos")
public class Type{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id_t")
    private int id;
    
    @Column(name="Tip_nome")
    private String type_name;

    public Type(){
    }

    public Type(int id) {
         this.id = id;
    }

    public String getType_name() {
        return type_name;
    }
    
}


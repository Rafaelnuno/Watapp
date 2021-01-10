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
@Table(name = "Tipos")
    public class Type{
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "Id_t")
        private int id;
    
        @Column(name="Tip_nome")
        private String type_name;

        @OneToMany
        @JoinColumn(name = "id_u")
        private List<User> users;

        public Type(){
        }

        public Type(int id) {
            this.id = id;
        }

        public String getType_name() {
            return type_name;
        }
    
}


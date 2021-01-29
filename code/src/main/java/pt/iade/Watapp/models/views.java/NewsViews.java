package pt.iade.Watapp.models.views;

import java.time.LocalDate;

public interface NewsView {

    int getId();
    String getUtilizadores();
    String getTitulo();
    String getNoticia();
    String getEstado();
    String getCategoria();
    LocalDate getData();
 
}
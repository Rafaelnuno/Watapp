package pt.iade.Watapp.models.views;

import java.time.LocalDate;

public interface NewsView {

    int getId();
    String getutilizadores();
    String getTitulo();
    String getNoticia();
    String getestado();
    String getcategoria();
    LocalDate getData();
 
}
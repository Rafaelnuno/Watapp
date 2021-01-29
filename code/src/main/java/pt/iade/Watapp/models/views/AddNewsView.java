package pt.iade.Watapp.models.views;

import java.time.LocalDate;

import pt.iade.Watapp.models.News;

public class AddNewsView {
    
    private int id_en;
    private LocalDate data;
    private int Estn_id_n;
    private int Estn_id_e;
    private int userId;
    private News news;

    public AddNewsView() {
    }

    public int getId_en() {
        return id_en;
    }

    public LocalDate getData() {
        return data;
    }

    public int getEstn_id_n() {
        return Estn_id_n;
    }

    public int getEstn_id_e() {
        return Estn_id_e;
    }

    public void setEstn_id_e(int estn_id_e) {
        Estn_id_e = estn_id_e;
    }

    public int getUserId() {
        return userId;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

}

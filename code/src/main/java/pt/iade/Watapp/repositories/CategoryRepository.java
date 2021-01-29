package pt.iade.Watapp.repositories;

import pt.iade.Watapp.models.Category;
import pt.iade.Watapp.models.views.NewsView;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface CategoryRepository extends CrudRepository<Category, Integer> {


    String userQuery = "SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data " +
    "FROM Utilizador " +
    "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
    "inner join Noticias on EsTN_ID_N =ID_N " +
    "inner join Estado  on EsTN_ID_E=ID_E " +
    "inner join Categoria on ID_C= Not_categ_id " +
    "where Est_nome='Enviado' and ID_N not in (SELECT distinct ID_N as ID " +
    "FROM Noticias " +
    "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
    "inner join Estado on EsTN_ID_E=ID_E " +
    "where Est_nome='Aceite' or Est_nome='Rejeitado') and ID_C= :ID_C " +
    "group by ID_N " +
    "order by EstN_data desc ";

    @Query(value= userQuery, nativeQuery = true)
    Iterable<NewsView> findCategoryNews(@Param("ID_C")int ID_C);
//filtra por categoria as noticias que foram so enviadas para o historico do moderador
//usado na categorycontroller

}

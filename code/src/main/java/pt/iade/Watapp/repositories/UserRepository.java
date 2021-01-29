package pt.iade.Watapp.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import pt.iade.Watapp.models.User;
import pt.iade.Watapp.models.views.NewsView;


public interface UserRepository extends CrudRepository<User, Integer> {


  @Query(value = "SELECT ID_N as id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data " +
  "FROM Utilizador " +
  "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
  "inner join Noticias on EsTN_ID_N =ID_N " +
  "inner join Estado  on EsTN_ID_E=ID_E " +
  "inner join Categoria on ID_C= Not_categ_id " +
  "where Est_nome ='Enviado' and ID_N  in (SELECT distinct ID_N as ID " +
  "FROM Noticias " +
  "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
  "inner join Estado on EsTN_ID_E=ID_E " +
  "where  Use_nome LIKE 'Ines%')  " +
  "group by ID_N " +
  "order by EstN_data desc",nativeQuery = true)
  Iterable<NewsView> findshortUser();
  //mostra todas as noticias enviadas, aceites e rejeitadas da Ines para o historico do utilizador 

  }

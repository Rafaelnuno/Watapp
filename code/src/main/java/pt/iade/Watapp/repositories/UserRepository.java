package pt.iade.Watapp.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import pt.iade.Watapp.models.User;
import pt.iade.Watapp.models.views.NewsView;


public interface UserRepository extends CrudRepository<User, Integer> {


  @Query(value = "SELECT ID_N as id ,max(Use_nome) as utilizadores , Est_nome as estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as categoria, max(EstN_data) as Data " +
  "FROM utilizador " +
  "inner join estadonoticia on EsTN_ID_U =ID_U " +
  "inner join noticias on EsTN_ID_N =ID_N " +
  "inner join estado  on EsTN_ID_E=ID_E " +
  "inner join categoria on ID_C= Not_categ_id " +
  "where Est_nome ='Enviado' and ID_N  in (SELECT distinct ID_N as ID " +
  "FROM noticias " +
  "inner join estadonoticia on EsTN_ID_N =ID_N " +
  "inner join estado on EsTN_ID_E=ID_E " +
  "where  Use_nome LIKE 'Ines%')  " +
  "group by ID_N " +
  "order by Data desc",nativeQuery = true)
  Iterable<NewsView> findshortUser();
  //mostra todas as noticias enviadas, aceites e rejeitadas da Ines para o historico do utilizador 

  }

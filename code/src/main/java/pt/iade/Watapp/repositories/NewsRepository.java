package pt.iade.Watapp.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.Watapp.models.Historic;
import pt.iade.Watapp.models.News;
import pt.iade.Watapp.models.views.AddNewsView;
import pt.iade.Watapp.models.views.NewsView;


public interface NewsRepository extends CrudRepository<News, Integer> {
     
  String useQuery ="SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data " +
  "FROM Utilizador " +
  "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
  "inner join Noticias on EsTN_ID_N =ID_N " +
  "inner join Estado  on EsTN_ID_E=ID_E " +
  "inner join Categoria on ID_C= Not_categ_id " +
  "where Est_nome ='Enviado' and ID_N in (SELECT distinct ID_N as ID " +
  "FROM Noticias " +
  "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
  "inner join Estado on EsTN_ID_E=ID_E " +
  "Where  Est_nome='Aceite' ) " +
  "group by ID_N " +
  "order by EstN_data desc limit 6 ";

  @Query(value= useQuery, nativeQuery = true)
  Iterable<NewsView> findNewsRecent();
  //retorna as noticias aceites de todos utilizadores mais recentes neste caso 6 delas


  @Query( value= "SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data " +
  "FROM Utilizador " +
  "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
  "inner join Noticias on EsTN_ID_N =ID_N " +
  "inner join Estado  on EsTN_ID_E=ID_E " +
  "inner join Categoria on ID_C= Not_categ_id " +
  "where Est_nome ='Enviado' and ID_N  not in (SELECT distinct ID_N as ID " +
  "FROM Noticias " +
  "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
  "inner join Estado on EsTN_ID_E=ID_E " +
  "where Est_nome='Aceite' or Est_nome='Rejeitado') "+
  "group by ID_N " +
  "order by EstN_data desc ",nativeQuery = true)
  Iterable<NewsView> findAllShort();
//retorna as noticias enviadas de qualquer utilizador para o historico do moderador


  @Query(value= "SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data " +
  "FROM Utilizador " +
  "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
  "inner join Noticias on EsTN_ID_N =ID_N " +
  "inner join Estado  on EsTN_ID_E=ID_E " +
  "inner join Categoria on ID_C= Not_categ_id " +
  "where Est_nome ='Enviado' and ID_N not in (SELECT distinct ID_N as ID " +
  "FROM Noticias " +
  "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
  "inner join Estado on EsTN_ID_E=ID_E " +
  "where Est_nome='Aceite' or Est_nome='Rejeitado') and Id_U= :Id_U "+
  "group by ID_N " +
  "order by EstN_data desc ",nativeQuery = true)
  Iterable<NewsView> findUserNews(@Param("Id_U")int Id_U);
// filtra as noticias por utilizador para o historico do moderador so as enviadas


  @Query(value= "SELECT ID_N as id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data " +
  "FROM Utilizador " +
  "inner join EstadoNoticia on EsTN_ID_U =ID_U " +
  "inner join Noticias on EsTN_ID_N =ID_N " +
  "inner join Estado  on EsTN_ID_E=ID_E " +
  "inner join Categoria on ID_C= Not_categ_id " +
  "where ID_N in (SELECT distinct ID_N as ID " +
  "FROM Noticias " +
  "inner join EstadoNoticia on EsTN_ID_N =ID_N " +
  "inner join Estado on EsTN_ID_E=ID_E " +
  "where  ID_E= :ID_E) and Use_nome LIKE 'Ines%' "+
  "group by ID_N " +
  "order by EstN_data desc ",nativeQuery = true)
  Iterable<NewsView> findStateNews(@Param("ID_E")int ID_E);
// filtra os estado das noticias para o historico do utilizador neste caso a Ines(escolher o estado enviado,aceite ou rejeitado)


  String saveNewsQuery = "INSERT INTO EstadoNoticia (Estn_id_n,EstN_data,Estn_id_e, "+
  "Estn_id_u) VALUES (:#{#historic.getNews().getId()},:#{#historic.getData()},"+
  ":#{#historic.getEstn_id_e()},:#{#historic.getUserId()})";
  @Modifying
  @Transactional
  @Query(value=saveNewsQuery, nativeQuery=true)
  int saveNews(@Param("historic") AddNewsView historic);
//guarda uma noticia feita por qualque utilizador 
//usado no usercontroller

@Query(value = "SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data " +
"FROM Utilizador " +
"inner join EstadoNoticia on EsTN_ID_U =ID_U " +
"inner join Noticias on EsTN_ID_N =ID_N " +
"inner join Estado  on EsTN_ID_E=ID_E " +
"inner join Categoria on ID_C= Not_categ_id " +
"where Est_nome ='Enviado' and ID_N in (SELECT distinct ID_N as ID " +
"FROM Noticias " +
"inner join EstadoNoticia on EsTN_ID_N =ID_N " +
"inner join Estado on EsTN_ID_E=ID_E " +
"Where  Est_nome='Aceite' ) and ID_C= :ID_C " +
"group by ID_N " +
"order by EstN_data desc limit 6 ",nativeQuery = true)
Iterable<NewsView> findfilterCategory(@Param("ID_C") int ID_C);
//filtra as noticias por categorias de qualquer utilizador 


String saveStateNewsQuery = "INSERT INTO EstadoNoticia (Estn_id_n,EstN_data,Estn_id_e, "+
"Estn_id_u) VALUES (:#{#historic.getNews().getId()},:#{#historic.getData()},"+
":#{#historic.getState().getId()},:#{#historic.getUser().getId()})";
@Modifying
@Transactional
@Query(value=saveStateNewsQuery, nativeQuery=true)
int saveStateNews(@Param("historic") Historic historic);
//muda o estado das noticias enviadas para o historico

}



SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where Est_nome ='Enviado' and ID_N in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  Where  Est_nome='Aceite' ) 
  group by ID_N 
  order by EstN_data desc limit 6;
  /*retorna as noticias que foram aceites de todos utilizadores, as  mais recentes neste caso 6 delas*/
  
  
  SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where Est_nome ='Enviado' and ID_N  not in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  where Est_nome='Aceite' or Est_nome='Rejeitado') 
  group by ID_N 
  order by EstN_data desc;
  /*retorna as noticias enviadas de qualquer utilizador para o historico do moderador*/
  
  
  SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where Est_nome ='Enviado' and ID_N not in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  where Est_nome='Aceite' or Est_nome='Rejeitado') and Id_U= 3
  group by ID_N 
  order by EstN_data desc;
  /*filtra as noticias por utilizador para o historico do moderador so as enviadas neste caso o utilizador que tem id 2 */
  
  
  SELECT ID_N as id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where ID_N in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  where  ID_E= 2) and Use_nome LIKE 'Ines%' 
  group by ID_N 
  order by EstN_data desc;
  /*filtra os estado das noticias para o historico do utilizador neste caso a Ines com o estado aceite */
  
  
  SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria,max(EstN_data) as Data 
    FROM Utilizador 
    inner join EstadoNoticia on EsTN_ID_U =ID_U 
    inner join Noticias on EsTN_ID_N =ID_N 
    inner join Estado  on EsTN_ID_E=ID_E 
    inner join Categoria on ID_C= Not_categ_id
    where Est_nome='Enviado' and ID_N not in (SELECT distinct ID_N as ID 
    FROM Noticias 
    inner join EstadoNoticia on EsTN_ID_N =ID_N 
    inner join Estado on EsTN_ID_E=ID_E 
    where Est_nome='Aceite' or Est_nome='Rejeitado') and ID_C= 2 
    group by ID_N 
    order by EstN_data desc;
/*filtra por categoria as noticias que foram so enviadas para o historico do moderador neste caso a categoria consumo por id */


SELECT ID_N as id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where Est_nome ='Enviado' and ID_N  in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  where  Use_nome LIKE 'Ines%')  
  group by ID_N 
  order by EstN_data desc;
  /*mostra todas as noticias enviadas, aceites e rejeitadas de um utilizador neste casa da Ines para o seu historico */
  
  
SELECT ID_N as Id ,Use_nome as Utilizadores , Est_nome as Estado, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data 
  FROM Utilizador 
  inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
  where Est_nome ='Enviado' and ID_N in (SELECT distinct ID_N as ID 
  FROM Noticias 
  inner join EstadoNoticia on EsTN_ID_N =ID_N 
  inner join Estado on EsTN_ID_E=ID_E 
  Where  Est_nome='Aceite' ) and ID_C= 2 
  group by ID_N 
  order by EstN_data desc limit 6;
 /*filtra por categoria as noticias que foram aceites para a pagina inicial */
  
  
Select Use_nome as Utiliador, Not_titulo as Titulo, Not_texto as Noticia, Tip_categ as Categoria, max(EstN_data) as Data
From Utilizador 
inner join EstadoNoticia on EsTN_ID_U =ID_U 
  inner join Noticias on EsTN_ID_N =ID_N 
  inner join Estado  on EsTN_ID_E=ID_E 
  inner join Categoria on ID_C= Not_categ_id 
   WHERE ID_N = 2
   group by ID_N 
  order by EstN_data desc;
/*mostra detalhes de uma noticia em especifico*/



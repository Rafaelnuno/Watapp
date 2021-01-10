SELECT * FROM Users
INNER JOIN Tipos
ON Use_Tipo_ID = ID_T;
/*junta a tablea users com a tabela tipos*/


SELECT Use_nome as Utilizadores,Use_email as email 
from Users
where ( Use_email) LIKE '%@gmail%';
/*devolve todos os users com mail "gmail"*/


SELECT Use_nome as Utilizadores,Use_email as email 
from Users
inner join Tipos 
ON Use_Tipo_ID = ID_T 
where ( Use_email) LIKE '%@gmail%' and (Tip_nome) LIKE 'moderador%';
/*devolve so os moderadores com o mail "gmail"*/


Select  Use_nome as Utilizadores, 
		Case 
        when Use_Tipo_ID = 1 then 'moderador' 
        when Use_Tipo_ID = 2 then 'utilizador normal' 
        else Use_Tipo_ID
        end as Tipos 
from Users;
/*(devolve os users e o seu tipo)*/


select count(*) Use_email
 from Users
 where Use_email  LIKE "%sapo%";
 /*conta quantos users tem o mail "sapo"*/


select distinct (Use_nome),count(distinct ID_N) as "Número de publicações"
from Noticias 
inner join Users
inner join EstadoNoticia 
inner join Estado
ON   Not_User_ID =Id_U and ID_N = EstN_ID_N and EstN_ID_E = ID_E
group by Id_U;
/*devolve os nomes dos users e quantas noticias tem cada user*/


SELECT U.Use_nome as Utilizadores,max(EN.EstN_data) as "Data publicada", N.Not_texto as Noticias, T.Tip_nome as "qual o tipo"
FROM Users as U
INNER JOIN Noticias as N
inner join Tipos as T
inner join EstadoNoticia as EN
ON Not_User_ID = Id_U and Use_Tipo_ID = ID_T and EstN_ID_N = ID_N
where (Tip_nome) LIKE 'moderador%'
group by Use_nome, ID_N
ORDER BY EstN_data DESC;
/*devolve so os moderadores , com as suas noticias e as datas por ordem decrescente*/


 select count(distinct ID_N) as "numero total de noticias"
 from Noticias;
 /*devolve quantas noticias no total existe */


select distinct (Use_nome),count(distinct ID_N) as "Número de publicações"
from Noticias 
inner join Users
inner join EstadoNoticia 
inner join Estado
ON   Not_User_ID =Id_U and ID_N = EstN_ID_N and EstN_ID_E = ID_E
where Est_nome LIKE "Aceite%"
group by Id_U;
/*devolve os users com o numero de noticias que foram so aceites*/

 
SELECT U.Use_nome as Utilizadores,max(EN.EstN_data) as "Data publicada", N.Not_texto as Noticias, E.Est_nome as Estado
FROM Users as U
INNER JOIN Noticias as N
inner join EstadoNoticia EN
inner join Estado as E
ON Not_User_ID = Id_U and EstN_ID_N = ID_N and  EstN_ID_E=ID_E
where (Use_nome) LIKE 'Ines%' and Est_nome LIKE 'Aceite'
group  by Use_nome, ID_N;
/*dá o nome do utilizador , a data publicada e as suas noticias que foram aceites*/
 
 
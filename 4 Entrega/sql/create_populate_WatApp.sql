-- Informação

insert into Tipos(Tip_nome) values ('moderador');
insert into Tipos(Tip_nome) values ('utilizador');


insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('Pedro Costa','Pdro.Costa@gmail.com',1);  
insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('Inês Pereira','InesPer.11@hotmail.com',2);  
insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('Daniela Almeida ','Danimeida@gmail.com',1);  
insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('João Ribeiro','Joao.Ribeiro@gmail.com',2);  
insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('Bruno Sousa','Bruno.Sousa@hotmail.com',2);  
insert into Utilizador (Use_nome,Use_email,Use_Tipo_ID) values ('Diogo Ramos','Diogo.Ramos21@sapo.com',2); 


insert into Categoria(Tip_categ) values ('Poluição');
insert into Categoria(Tip_categ) values ('Consumo');


insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao1','aaaa',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso1','baaa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso2','aafa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso3','gaaa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso4','apaa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso5','aghaa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao2','auja',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso6','aas2a',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso7','a98ot',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao3','poiuy',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao4','A agua',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao5','A agua e um ',1);

insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao6','aaaadf',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso8','baaarterh',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso9','aafadtg',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao7','gaarha',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso10','aprtdgaa',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao8','aghrfeaa',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao9','ausfgja',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao10','asfews2a',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao11','a9sfw8ot',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao12','poiwrquy',1);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Recurso11','A aafqgua',2);
insert into Noticias(Not_foto,Not_titulo,Not_texto,Not_Categ_ID) values(40000000,'Poluiçao13','A agua e um wrqqr',1);



/*insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(1,1,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(1,2,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(2,1,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(2,2,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(3,1,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(3,2,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(4,1,1);
insert into FeedBackNoticia(Fbn_ID_U,Fbn_ID_N,Tip_feedback) values(4,2,1);
*/

insert into Estado (Est_nome,Est_descricao) values('Enviado','A sua proposta será analisada');
insert into Estado (Est_nome,Est_descricao) values('Aceite','A sua proposta foi aceite');
insert into Estado (Est_nome,Est_descricao) values('Rejeitado','Precisa de melhorar');


insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (1,1,str_to_date('2019.03.12','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (1,2,str_to_date('2019.03.13','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (2,1,str_to_date('2017.05.20','%Y.%m.%d'),2);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (2,3,str_to_date('2017.05.21','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (3,1,str_to_date('2020.01.04','%Y.%m.%d'),4);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (3,3,str_to_date('2020.02.15','%Y.%m.%d'),3);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (4,1,str_to_date('2018.11.20','%Y.%m.%d'),2);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (4,,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (5,1,str_to_date('2021.01.02','%Y.%m.%d'),5);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (5,3,str_to_date('2021.01.03','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (6,1,str_to_date('2020.05.29','%Y.%m.%d'),6);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (6,3,str_to_date('2020.05.30','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (7,1,str_to_date('2019.01.15','%Y.%m.%d'),2);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (7,2,str_to_date('2019.01.16','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (8,1,str_to_date('2017.06.14','%Y.%m.%d'),5);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (8,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (9,1,str_to_date('2020.01.06','%Y.%m.%d'),5);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (9,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (10,1,str_to_date('2018.08.28','%Y.%m.%d'),3);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (10,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (11,1,str_to_date('2020.03.04','%Y.%m.%d'),6);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (11,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (12,1,str_to_date('2020.09.19','%Y.%m.%d'),2);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (12,2,str_to_date('2020.09.20','%Y.%m.%d'),1);

insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (13,1,str_to_date('2018.09.21','%Y.%m.%d'),3);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (13,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (14,1,str_to_date('2020.12.06','%Y.%m.%d'),3);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (14,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (15,1,str_to_date('2021.01.10','%Y.%m.%d'),5);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (15,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (16,1,str_to_date('2019.11.15','%Y.%m.%d'),5);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (16,2,str_to_date('2019.11.16','%Y.%m.%d'),4);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (17,1,str_to_date('2016.12.19','%Y.%m.%d'),3);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (17,2,str_to_date('2016.12.20','%Y.%m.%d'),4);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (18,1,str_to_date('2021.01.5','%Y.%m.%d'),1);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (18,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (19,1,str_to_date('2018.01.9','%Y.%m.%d'),6);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (19,2,str_to_date('2018.01.10','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (20,1,str_to_date('2017.02.1','%Y.%m.%d'),4);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (20,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (21,1,str_to_date('2020.11.27','%Y.%m.%d'),3);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (21,2,str_to_date('2020.11.28','%Y.%m.%d'),4);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (22,1,str_to_date('2020.10.12','%Y.%m.%d'),5);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (22,2,str_to_date('2020.10.13','%Y.%m.%d'),1);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (23,1,str_to_date('2019.01.20','%Y.%m.%d'),4);
/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (23,null,null,null);*/
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (24,1,str_to_date('2021.01.13','%Y.%m.%d'),6);
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data,EstN_ID_U) values (24,2,str_to_date('2021.01.14','%Y.%m.%d'),1);



commit;

				
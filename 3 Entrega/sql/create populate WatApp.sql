-- Informação

insert into Tipos(Tip_nome) values ('moderador');
insert into Tipos(Tip_nome) values ('utilizador');

insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('Pedro Costa','Pdro.Costa@gmail.com',1);  
insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('Inês Pereira','InesPer.11@hotmail.com',2);  
insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('Daniela Almeida ','Danimeida@gmail.com',1);  
insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('João Ribeiro','Joao.Ribeiro@gmail.com',2);  
insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('Bruno Sousa','Bruno.Sousa@hotmail.com',2);  
insert into Users (Use_nome,Use_email,Use_Tipo_ID) values ('Diogo Ramos','Diogo.Ramos21@sapo.com',2); 


insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'aaaa',1);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'baaa',2);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'aafa',3);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'gaaa',4);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'apaa',5);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'aghaa',6);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'auja',3);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'aas2a',5);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'a98ot',6);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'poiuy',4);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'A agua',2);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,'A agua e um ',2);
/*insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2019.08.24','%Y.%m.%d'),'A agua faz',1);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2017.11.13','%Y.%m.%d'),'A agua tem',3);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2018.06.22','%Y.%m.%d'),'A agua foi',5);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2018.06.28','%Y.%m.%d'),'A agua ira',5);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2018.02.15','%Y.%m.%d'),'A agua sempre',4);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2020.09.20','%Y.%m.%d'),'A agua desde',4);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2018.08.31','%Y.%m.%d'),'A agua nos tempos',2);
insert into Noticias(Not_foto,Not_texto,Not_User_ID) values(40000000,str_to_date('2021.01.02','%Y.%m.%d'),'A agua traz',1);*/




insert into Estado (Est_nome,Est_descricao) values('Enviado','A sua proposta será analisada');
insert into Estado (Est_nome,Est_descricao) values('Aceite','A sua proposta foi aceite');
insert into Estado (Est_nome,Est_descricao) values('Rejeitado','Precisa de melhorar');


insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (1,1,str_to_date('2019.03.12','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (1,2,str_to_date('2019.03.13','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (2,1,str_to_date('2017.05.20','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (2,2,str_to_date('2017.05.21','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (3,1,str_to_date('2020.01.04','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (3,3,str_to_date('2020.02.15','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (4,1,str_to_date('2018.11.20','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (4,2,str_to_date('2018.11.21','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (5,1,str_to_date('2021.01.02','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (5,3,str_to_date('2021.01.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (6,1,str_to_date('2020.05.29','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (6,3,str_to_date('2020.05.30','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (7,1,str_to_date('2019.01.15','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (7,2,str_to_date('2019.01.16','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (8,1,str_to_date('2017.06.14','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (8,2,str_to_date('2017.06.25','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (9,1,str_to_date('2020.01.04','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (9,3,str_to_date('2020.02.15','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (10,1,str_to_date('2018.08.28','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (10,3,str_to_date('2018.08.29','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (11,1,str_to_date('2020.03.04','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (11,3,str_to_date('2020.03.05','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (12,1,str_to_date('2020.09.19','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (12,2,str_to_date('2020.09.20','%Y.%m.%d'));





/*insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (1,1,str_to_date('2018.01.05','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (8,4,str_to_date('2017.03.05','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (9,1,str_to_date('2021.01.05','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (10,2,str_to_date('2021.01.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (11,3,str_to_date('2020.08.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (12,4,str_to_date('2020.06.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (13,1,str_to_date('2020.09.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (14,2,str_to_date('2021.01.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (15,3,str_to_date('2020.08.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (16,4,str_to_date('2020.06.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (17,1,str_to_date('2020.09.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (18,2,str_to_date('2021.01.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (19,3,str_to_date('2020.08.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (20,4,str_to_date('2020.06.03','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (2,1,str_to_date('2018.11.28','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (1,2,str_to_date('2016.02.12','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (2,3,str_to_date('2019.09.23','%Y.%m.%d'));
insert into EstadoNoticia(EstN_ID_N,EstN_ID_E,EstN_data) values (1,4,str_to_date('2021.05.29','%Y.%m.%d'));*/


commit;

				
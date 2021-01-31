create database WatApp;

use WatApp;

create table Utilizador( Id_U int not null auto_increment, 
					Use_nome varchar (20) not null, 
                    Use_email varchar (30) not null,
                    Use_Tipo_ID int not null,
					primary Key ( Id_U));

create table Tipos( ID_T int not null auto_increment, 
					Tip_nome varchar (20) not null,
					primary Key (ID_T));

create table Noticias( ID_N int not null auto_increment, 
						Not_foto longblob not null,
                        Not_titulo varchar(50) not null,
                        Not_texto varchar(550)not null,
                        Not_Categ_ID int not null,
						primary key (ID_N));


create table Categoria(ID_C int not null auto_increment,
						Tip_categ varchar(50) not null,
                        primary key(ID_C));
						

create table Estado (ID_E int not null auto_increment, 
					Est_nome varchar (20) not null, 
                    Est_descricao varchar (60) not null,
					primary Key (ID_E));

create table EstadoNoticia (ID_EN int not null auto_increment,
							 EstN_ID_N int not null ,
                             EstN_ID_E int ,
                             EstN_data date, 
                             EsTN_ID_U int,
                             primary key (ID_EN));
                             
                             
/*create table FeedBackNoticia(FBN int not null auto_increment,
							 Fbn_ID_U int not null,
                             Fbn_ID_N int not null,
                             Tip_feedback int,
                             primary key (FBN));
   */                          
                             

# Chaves estrangeiras

alter table Utilizador add constraint Utilizador_fk_Tipos
			foreign key (Use_Tipo_ID) references Tipos(ID_T)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table Noticias add constraint Noticias_fk_Categoria
			foreign key(Not_Categ_ID) references Categoria(ID_C)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table EstadoNoticia add constraint EstadoNoticia_fk_Estado
			foreign key (EstN_ID_E) references Estado(ID_E)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
                             
alter table EstadoNoticia add constraint EstadoNoticia_fk_Noticias
			foreign key (EstN_ID_N) references Noticias(ID_N)
            ON DELETE NO ACTION ON UPDATE NO ACTION;  
            
alter table EstadoNoticia add constraint EstadoNoticia_fk_Utilizador
			foreign key (EstN_ID_U) references Utilizador(Id_U)
            ON DELETE NO ACTION ON UPDATE NO ACTION;             
            
/*alter table FeedBackNoticia add constraint FeedBackNoticia_fk_Users
			foreign key (Fbn_ID_U) references Users(Id_U)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table FeedBackNoticia add constraint FeedBackNoticia_fk_Noticias
			foreign key (Fbn_ID_N) references Noticias(ID_N)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

*/                     



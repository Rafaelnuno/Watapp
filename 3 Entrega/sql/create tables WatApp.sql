create database WatApp;

use WatApp;

create table Users( Id_U int not null auto_increment, 
					Use_nome varchar (20) not null, 
                    Use_email varchar (30) not null,
                    Use_Tipo_ID int not null,
					primary Key ( Id_U));

create table Tipos( ID_T int not null auto_increment, 
					Tip_nome varchar (20) not null,
					primary Key (ID_T));

create table Noticias( ID_N int not null auto_increment, 
						Not_foto longblob not null,
                        Not_texto varchar(50)not null,
                        Not_User_ID int not null,
						primary key (ID_N));

create table Estado (ID_E int not null auto_increment, 
					Est_nome varchar (20) not null, 
                    Est_descricao varchar (60) not null,
					primary Key (ID_E));

create table EstadoNoticia (ID_EN int not null auto_increment,
							 EstN_ID_N int not null ,
                             EstN_ID_E int not null ,
                             EstN_data date not null,
                             primary key (ID_EN));


# Chaves estrangeiras

alter table Users add constraint Users_fk_Tipos
			foreign key (Use_Tipo_ID) references Tipos(ID_T)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table Noticias add constraint Noticias_fk_Users
			foreign key (Not_User_ID) references Users(Id_U)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table EstadoNoticia add constraint EstadoNoticia_fk_Estado
			foreign key (EstN_ID_E) references Estado(ID_E)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
                             
alter table EstadoNoticia add constraint EstadoNoticia_fk_Noticias
			foreign key (EstN_ID_N) references Noticias(ID_N)
            ON DELETE NO ACTION ON UPDATE NO ACTION;                             

                    



show databases;
 create database first_example;
 use first_example;
 create database if not exists first_example;
 CREATE TABLE person(
  person_id smallint unsigned , 
  fname varchar(20),
  lame varchar(20),
  gender enum('M','F'),
  birth_date DATE ,
  street varchar(30),
  city varchar(20),
  state varchar (20),
  country varchar (20),
  postal_code varchar (20) ,
  constraint pk_person primary key (person_id)
  
 );
desc person;

create table favorite_food(
 person_id smallint unsigned,
 food varchar(20),
 constraint pk_favorite_food primary key (person_id,food),
 constraint fk_favorite_food_person_id foreign key (person_id)
 references person(person_id)
);
desc favorite_food;
show databases ;
-- select * from information_schema.table_constraints
-- where constraint_schema = 'first_example';
-- select constraint_name  from information_schema.table_constraints;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where constraint_schema = 'first_example';

-- Populando o banco de dados , insert into inserir info

desc person;

insert into person () values ('9','Ingrid','Lima','F','2005-12-07',
                              'rual roxa','Recife','PE','Brasil','12146-42'),
                              ('10','Manoela','Oliveira','F','2004-02-18',
                              'rual vermelha','Recife','PE','Brasil','34568-67');
                              
select * from person;
-- remover alguma coisa

delete from person where person_id= 2 or person_id= 6 ;

desc favorite_food;

insert into favorite_food values(1,'Lazanha'),(3,'Escondidinho'),
                                (4,'Feijoada'),(5,'Galinhada'),
                                (7,'Comida Chinesa'),(8,'Italiana'),
                                (9,'Empadão de frango'),(10,'Arroz de forno');
select  * from favorite_food;   

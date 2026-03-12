-- inserção de dados no bd company

use company_constraints;
show tables;
select * from works_on;




-- load data infile 'path' into table employee
 --   fields terminated by ','
  --   lines terminated by ';';
  -- insert into ... values 
  
  
insert into employee values ('John','B','Smith',123456789,'1956-01-05','711-Houston-Tx','M',300000,null,5); 

insert into employee values ('Ana','A','Santos',233445789,'2004-07-12','466-Whasgton-Dc','F',40000,123456789,4),
                             ('Isabela','C','Dias',133445789,'2003-06-16','344-Brasilia-Df','F',20000,null,1),
                             ('João','D','Silva',433445789,'1997-04-12','711-Whasgton-Dc','M',30000,123456789,5),
                             ('Maria','I','Lima',533445789,'1976-02-05','236-Houston-Tx','F',40000,null,4),
                             ('Pedro','E','Souza',633445789,'2002-07-01','376-Whasgton-Dc','M',12000,123456789,1);
                             
desc dependent;
insert into dependent values (123456789, 'Alice', 'F', '2015-06-12', 'Daughter'),
                             (123456789, 'Roberto', 'M', '2018-08-12', 'Son'),
                             (233445789, 'Joe', 'M', '1998-04-03', 'Spouse'),
                             (433445789, 'Sharon', 'F', '1996-12-12', 'Daughter'),
                             (533445789, 'Matt', 'M', '2006-06-07', 'Son'),
                             (633445789, 'Margot', 'F', '2017-12-20', 'Daughter'),
                             (133445789,'Anne','F','2021-04-03','Daugther');
                             

insert into departament values ('Research',5,123456789,'2007-08-02','1970-01-01'),
							   ('Administration',4,233445789,'2020-09-07','1970-01-01'),
                               ('Headquarters',1,633445789,'2020-12-24','1970-01-01');
                               
insert into dept_locations values (5,'Houston'),
								  (4,'Whasgton'),
                                  (1,'Brasilia'),
                                  (5,'Whasgton'),
                                  (4,'Houston'),
                                  (1,'Whasgton');
                                                   
                                  
                                  
 insert into project values ('Product1',1,'Bellaire',5),
							('Product2',2,'Sugarland',4),
                            ('Product3',3,'Houston',1),
                            ('Computarization',10,'Stafford',5),
                            ('Reorganization',20,'Houston',4),
                            ('Newbenefits',30,'Stafford',1);

  TRUNCATE TABLE works_on; -- reseta a tabela
  
 insert into  works_on values (123456789, 1, 32.5),
                              (123456789, 10, 7.5),
							  (233445789, 2, 40.0),
                              (133445789, 3, 20.0),
                              (433445789, 10, 15.0),
                              (633445789, 30, 10.5);
 
 select * from employee;
 -- gerente e seu departamento
 select Ssn,Fname,Dname from employee e, departament d where(e.Ssn-d.Mgr_ssn);
 
 -- recuperando dependentes dos empregados
select Fname,Dependent_name,Relationship from employee, dependent where Essn= Ssn;    

-- recuperando um trabalhador específico
select Bdate, Address from employee
  where Fname ='John' and Minit='B' and Lname ='Smith';
  
  -- recuperando departamento específico
  select *from departament where Dname = 'Headquarters';
  
select Fname,Lname,Address from employee,departament
   where Dname='Headquarters' and Dnumber=Dno;
   
select *from project;

select Pname,Essn,Fname,Hours from project , works_on, employee 
 where Pnumber=Pno and Essn=Ssn;
 
 --
--
-- Expressões e alias
-- 

-- Recolhendo o valor do INSS.*
select Fname,Lname,Salary*0.011 from employee;
select Fname,Lname,Salary*0.011 as INSS from employee;
select Fname,Lname,Salary , round(Salary*0.011) as INSS from employee;

-- definir aumento de salario para os gerentes que trabalham no projeto associado ao Produtox
desc works_on;
select * from employee e,works_on as w, project as p
    where(e.Ssn = w.Essn and w.Pno= p.Pnumber and p.Pname='Product1');
    
select concat(Fname,'',Lname) as Complete_name,Salary, round(1.1*Salary,2) as increased_salary 
    from employee e,works_on as w, project as p
	where(e.Ssn = w.Essn and w.Pno= p.Pnumber and p.Pname='Product1');
    
-- definindo alias para legibilidade de consulta
select concat(e.Fname,'',e.Lname) as Employee_name, e.Address from employee e, departament d 
     where d.Dname ='Research' and d.Dnumber= e.Dno ;
     
--
--
--
-- Expressões e concatenação de strings
--
--
desc dept_locations;
select * from dept_locations ;
-- recuperando todos os gerentes que trabalham em Whassgton
select Dname as Department_Name,Mgr_ssn,Address from departament d, dept_locations l,employee e 
   where d.Dnumber =l.Dnumber and Dlocation='Whasgton';
   
-- recuperando todos os gerentes,departamentos e seus nomes  
 select Dname as Department_Name, concat(Fname,' ',Lname) as Manager, Dlocation from departament d, dept_locations l,employee e 
   where d.Dnumber =l.Dnumber and Dlocation='Whasgton' and Mgr_ssn =e.Ssn;  

-- recuperar informações de projetos   
select Pname,Dnum,Lname,Adress,Bdate from departament d, project p ,employee e 
   where d.Dnumber =p.Dnum and p.Plocation='Whasgton' and Mgr_ssn =e.Ssn;

-- like e between
select * from employee;

select concat(Fname,' ',Lname) Complete_Name, Dname as Departament_Name from employee, departament
     where ( Dno=Dnumber and Address like '%Whasgton%');
	
    
select concat(Fname,' ',Lname) Complete_Name,Address from employee
     where (  Address like '%Whasgton%'); 
     
select Fname,Lname,Salary from employee where (Salary > 20000 and Salary < 40000);
select Fname,Lname,Salary from employee where(Salary between 10000 and 40000);
 
 --
 --
 -- Operadores lógicos 
 --
 --
 
 select Bdate,Address from employee where Fname='John' and Minit='B' and Lname= 'Smith';
 select* from departament;
 select * from departament where Dname='Research' or Dname= 'Administration' ;
select concat(Fname,' ',Lname) as Complete_name from employee,departament where Dname='Research' and Dnumber= Dno ;
   

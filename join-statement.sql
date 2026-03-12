use company;

-- JOIN Statement
desc employee;
desc works_on;
select * from employee,works_on where Ssn=Essn;
	
-- JOIN
select * from employee JOIN works_on;

-- JOIN ON -> INNER JOIN ON 
desc departament; -- Dnumber 
show tables;
desc dependent;
desc dept_locations; -- Dnumber

select * from employee JOIN works_on on Ssn=Essn;
select * from employee JOIN departament  on Ssn=Mgr_ssn;

select Fname, Lname, Address
    from(employee join departament on Dno=Dnumber)
	where Dname= 'Research';
    
select * from dept_locations; -- address (Dlocation) e Dnumber
select * from departament; -- Dname, Dept_create_date

select Dname as Department ,Dept_crete_date as StartDate,Dlocation as Location
    from departament INNER JOIN dept_locations  using(Dnumber)   -- criar atributo apartir de um atributo já conhecido 
    order by Department; 
    
    

-- CROSS JOIN ->  Atributo de junção , produto cartesiano 
 SELECT COUNT(*) FROM employee; -- conferir se retorna linha
 SELECT COUNT(*) FROM dependent; -- conferir se retorna linha 
 select * from employee cross join dependent;

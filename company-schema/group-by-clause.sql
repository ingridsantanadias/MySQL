-- Funções e cláusulas de agrupamnetos

select * from employee;
select count(*) from employee;

select count(*) from employee, departament
      where Dno=Dnumber and Dname='Research';
      
select Dno,count(*) as Number_of_employes, round(avg(Salary),2) as Salary_avg from employee
      group by Dno;

select Pnumber,Pname, count(*)
    from project,works_on
    where Pnumber=Pno
    group by Pnumber,Pname;
    
select count(distinct Salary) from employee;
    
select sum(Salary)  from employee;
select sum(Salary) as total_sal, max(Salary) as Max_sal, min(Salary) as Mini_sal, avg(Salary) as Avg_sal from employee;  
    
-- 
-- gropu by
-- 

show tables;

select Pnumber,Pname, count(*)
    from project,works_on
    where Pnumber=Pno
    group by Pnumber,Pname;

select Pnumber,Pname, count(*) as Number_of_register  , round(avg(Salary),2) as Agv_Salary
    from project,works_on,employee
    where Pnumber=Pno and Ssn = Essn
    group by Pnumber,Pname;
-- não pode ordenar por avg salary , count(*) , grupo de função

select Pnumber,Pname, count(*) as Number_of_register  , round(avg(Salary),2) as Agv_Salary
    from project,works_on,employee
    where Pnumber=Pno and Ssn = Essn
    group by Pname
    order by avg(Salary) desc ;
    
    
    -- 
    -- group by e having
    --
    
select   Pnumber,Pname, count(*)
  from   project, works_on
  where   Pnumber = Pno
  group by Pnumber,Pname
  having count(*) >1;
  
  select Dno,count(*)
     from employee
     where Salary >20000
     group by Dno
     having count(*) >1;
  
select Dno as Department , count(*) as Number_of_employes from employee
   where Salary > 10000
     and Dno in (select Dno from employee
                  group by Dno
				  having count(*)>=1)
   group by Dno;
   
    
    

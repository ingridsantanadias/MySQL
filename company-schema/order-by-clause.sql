-- cláusula de ordenação 
use company_constraints; 
select * from employee order by Fname,Lname;

-- nome do departamento , nome do  gerente 
select distinct d.Dname, concat(e.Fname,' ',e.Lname) as Manager,Address 
  from departament as d, employee as e, works_on as w,project as p
  where (d.Dnumber = e.Dno and e.Ssn= d.Mgr_ssn and  w.Pno =p.Pnumber)
  order by  d.Dname;
-- recupera todos os empregados e seus projetos 
select distinct d.Dname as Departament ,concat(e.Fname,' ',e.Lname) as Employee,p.Pname as Project_Name
  from departament as d, employee as e ,works_on as w , project as p
  where(d.Dnumber = e.Dno and e.Ssn = w.Essn and w.Pno=p.Pnumber)
  order by   d.Dname desc ;
 

-- subqueries 

use company_constraints;

select distinct Pnumber from project
    where Pnumber in
         ( select distinct Pno
           from works_on,employee
           where(Essn=Ssn and Lname='Smith') 
	       or
              ( 
                  select Pnumber
                  from project,departament,employee
			      where (Mgr_ssn = Ssn and Lname='Smith' and Dnum=Dnumber)
              )
            
);

select distinct * from works_on 
 where (Pno,Hours) IN (select Pno,Hours
                       from works_on
                       where Essn= 123456789);


-- clausulas com exists e unique

-- Quais employes possuem dependentes?
-- select e.Fname,e.Lname from employee as e
-- where exists (select * from dependent as d
                   --  where e.Ssn= d.Essn and e.Fname <> d.dependent_name);
                   
select e.Fname,e.Lname from employee as e
    where exists (select * from dependent as d
                    where e.Ssn= d.Essn and Relationship ='Son');
     

-- saber os empregados que não possuem dependentes
  select e.Fname,e.Lname from employee as e
    where not exists (select * from dependent as d
                    where e.Ssn= d.Essn );                  
                    


select e.Fname,e.Lname from employee as e
    where exists (select * from dependent as d
                    where e.Ssn= d.Essn )
                    and
                    (select *from departament
                        where Ssn=Mgr_ssn);
-- resolve a query acima                        
select e.Fname,e.Lname from employee as e,departament d
where(e.Ssn= d.Mgr_ssn) and exists (select * from dependent as d where e.Ssn= d.Essn );

select Fname,Lname from employee
  where(select count(*) from dependent where Ssn=(Essn)>=1);

select distinct Essn,Pno from works_on where Pno in (1,2,3);

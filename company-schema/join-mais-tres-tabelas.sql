select * from employee cross join dependent;

-- JOIN com mais de três tabelas


-- project,works_on e employee
select concat(Fname,' ',Lname) as Complete_name,Dno as Dptnumber,Pname as Projectname,
   Pno as Projectnumber,Plocation as Location from employee
  inner join works_on on Ssn = Essn
  inner join project on Pno=Pnumber
  where Pname like 'Computarization%'         --  S% retorna locais com S Plocations 'S%'
  order by Pnumber;
  
  
-- departament,dept_location,employee
select Dnumber,Dname, concat(Fname,' ',Lname) as Manager , Salary, round(Salary*0.05) as Bonus from departament
      inner join dept_locations using(Dnumber) -- inner join employee on Ssn= Mgr_ssn
      inner join (dependent inner join employee on Ssn= Essn) on Ssn= Mgr_ssn
      group by Dnumber
      having count(*)>1;

select Dnumber,Dname, concat(Fname,' ',Lname) as Manager , Salary, round(Salary*0.05) as Bonus from departament
      inner join dept_locations using(Dnumber) -- inner join employee on Ssn= Mgr_ssn
      inner join employee on Ssn= Mgr_ssn
      group by Dnumber
      ;

-- departament,project e employee
desc departament; -- Dname,Dnumber,Mgr_ssn
desc project; -- Dnumber,Pname,Pnumber
desc employee; -- Fname,Lname,ssn,Dno,

select Dname,Dnumber,concat(Fname,' ',Lname) as Employee, Pname,Pnumber from departament 
     inner join project using(Dnumber)
     inner join employee on Dno=Pnumber
     order by Fname;

      
use company_constraints;
show tables;
desc departament;
desc dept_locations;

select *from departament;
select* from dept_locations;

-- Erro 1052 : Column 'Dnumber' in where clause is ambiguous
-- Sendo definida em dois locais diferentes
-- Retira essa ambiguidade através do alias ou AS Statement

select Dname , l.Dlocation as Departament_name
        from departament as d, dept_locations as l
		where d.Dnumber = l.Dnumber;

select concat (Fname,'',Lname) as Employee from employee; 



Drop procedure if exists filter_salary;
DELIMITER $$
Create procedure  filter_salary (in min_salary FLOAT, in max_salary FLOAT)
begin
Select e.gender,d.dept_name,avg(s.salary) as AVG_Salary
from 
t_salaries s
Join
t_employees e on s.emp_no= e.emp_no
Join
t_dept_emp de on e.emp_no=de.emp_no
Join
t_departments d on de.dept_no=d.dept_no
where s.salary between min_salary and max_salary
group by d.dept_no, e.gender;
End$$

CALL filter_salary(50000, 90000);






/* This code helps determine avg salary across departments and gender*/

Select e.gender,d.dept_name,avg(s.salary) as AVG_Salary
from 
t_salaries s
Join
t_employees e on s.emp_no= e.emp_no
Join
t_dept_emp de on e.emp_no=de.emp_no
Join
t_departments d on de.dept_no=d.dept_no
group by d.dept_no, e.gender;






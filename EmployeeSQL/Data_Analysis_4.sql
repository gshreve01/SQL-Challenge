/*
 List the department of each employee with the following information: employee number
 , last name, first name, and department name.
*/

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee e
join department_employee de on e.emp_no = de.emp_no
join department d on de.dept_no = d.dept_no

/*
List all employees in the Sales department, including their employee number, last name, first name, and department name.

*/

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee e
inner join department_employee de on e.emp_no = de.emp_no
inner join department d on de.dept_no = d.dept_no
						and d.dept_name = 'Sales'
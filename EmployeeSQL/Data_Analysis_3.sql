/*

List the manager of each department with the following information: department number, department name, 
the manager's employee number, last name, first name.

*/

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from department d
inner join department_manager dm on d.dept_no = dm.dept_no
inner join employee e on dm.emp_no = e.emp_no;

/*
 List first name, last name, and hire date for employees who were hired in 1986.
*/

select e.first_name, e.last_name, e.hire_date
from employee e
where e.hire_date >= '1/1/1986' 
and e.hire_date < '1/1/1987';
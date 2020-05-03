/*

 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 
*/

select e.first_name, e.last_name, e.sex
from employee e
where e.first_name = 'Hercules'
and e.last_name like 'B%';
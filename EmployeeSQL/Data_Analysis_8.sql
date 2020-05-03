/*

In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

*/

select e.last_name, count(last_name) as LastNameCounts
from employee e
group by e.last_name
order by LastNameCounts desc;

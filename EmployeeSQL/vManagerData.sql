-- drop view vManagerData;
create view vManagerData as

select e.*, t.title, s.salary, d.dept_no, d.dept_name
from employee e
inner join title t on e.emp_title_id = t.title_id
inner join salary s on e.emp_no = s.emp_no
inner join department_manager dm on e.emp_no = dm.emp_no
inner join department d on dm.dept_no = d.dept_no

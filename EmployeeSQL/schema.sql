-- Schema definition for department

-- drop table department
create table department(
	dept_no varchar(10) not null
	, dept_name varchar(100) not null
	, primary key (dept_no)
);

-- drop table title
create table title(
	title_id varchar(10) not null
	, title varchar(50) not null
	, primary key (title_id)
);

-- drop table employee
create table employee(
	emp_no serial not null
	, emp_title_id varchar(10) not null
	, birth_date date not null
	, first_name varchar(64) not null
	, last_name varchar(64) not null
	, sex char(1) not null
	, hire_date date not null
	, primary key (emp_no)
	, foreign key (emp_title_id) references title (title_id)
);

-- drop table department_manager
create table department_manager(
	dept_no varchar(10) not null
	, emp_no int not null
	, primary key (emp_no, dept_no)
	, foreign key (emp_no) references employee (emp_no)
	, foreign key (dept_no) references department (dept_no)
);

--drop table department_employee
create table department_employee(
	emp_no int not null
	, dept_no varchar(10) not null
	, primary key (emp_no, dept_no)
	, foreign key (emp_no) references employee (emp_no)
	, foreign key (dept_no) references department (dept_no)	
);

-- drop table salary
create table salary(
	emp_no int not null
	, salary numeric(11,2)
	, primary key (emp_no)
	, foreign key (emp_no) references employee (emp_no)
);

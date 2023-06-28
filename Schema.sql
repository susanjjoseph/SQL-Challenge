

--create table for Departments

create table DEPARTMENTS (
 
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50)	
);

--insert the values for Departments table

insert into DEPARTMENTS (dept_no, dept_name) values
('d001', 'Marketing'),
('d002', 'Finance'),
('d003', 'Human Resources'),
('d004', 'Production'),
('d005', 'Development'),
('d006', 'Quality Management'),
('d007', 'Sales'),
('d008', 'Research'),
('d009', 'Customer Service')
;
--check to see if all values are added.
select * from departments;

--create the table for Titles

create table TITLES (
 
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(50)	
);

--insert the values for Titles table
insert into TITLES  (title_id, title) values 
('s0001', 'Staff'),
('s0002', 'Senior Staff'),
('e0001', 'Assistant Engineer'),
('e0002', 'Engineer'),
('e0003', 'Senior Engineer'),
('e0004', 'Technique Leader'),
('m0001', 'Manager')
;

select * from titles;


---Create table Employees
create table employees (
emp_no integer PRIMARY KEY NOT NULL,
emp_title_id varchar(10) NOT NULL, 
	FOREIGN KEY(emp_title_id) references titles(title_id),
birth_date DATE NOT NULL ,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(2) NOT NULL,
hire_date DATE NOT NULL
);
--drop table employees;
select * from employees;
delete from employees;

-- create table Salaries
create table salaries (
sal_emp_no integer PRIMARY KEY NOT NULL,
	FOREIGN KEY(sal_emp_no) references employees(emp_no),
salary DEC 
);

select * from salaries;

--Create table Dept_emp

create table dept_emp (
dept_emp_id SERIAL PRIMARY KEY NOT NULL,
de_emp_no integer NOT NULL,
	FOREIGN KEY(de_emp_no) references employees(emp_no),
de_dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (de_dept_no) references departments(dept_no)
);

--drop table dept_emp;
select * from dept_emp;


--create table dept_manager

create table dept_manager (
dm_mgr_id SERIAL PRIMARY KEY NOT NULL,
dm_dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (dm_dept_no) references departments(dept_no),
dm_mgr_emp_no integer NOT NULL,
	FOREIGN KEY(dm_mgr_emp_no) references employees(emp_no)
);

select * from dept_manager;


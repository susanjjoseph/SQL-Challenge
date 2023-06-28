


-- Data Analysis #1
--List the employee number, last name, first name, sex, and salary of each employee
select emp_no, last_name, first_name, gender, salary  from employees
inner join salaries on emp_no = sal_emp_no;

--Data Analysis #2
--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date from employees
where date_part('year', hire_date) = 1986;


--Data Analysis #3
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_no, dept_name, emp_no as Manager_no, first_name as Manger_FirstName, last_name as Manager_LastName from dept_manager
inner join employees on dm_mgr_emp_no=  emp_no
inner join departments on dm_dept_no = dept_no;


--Data Analysis #4
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select emp_no, last_name, first_name, dept_no, dept_name from dept_emp
inner join employees on de_emp_no = emp_no
inner join departments on de_dept_no = dept_no;


--Data Analysis #5
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, gender from employees
where first_name = 'Hercules' and
last_name like 'B%';


--Data Analysis #6
--List each employee in the Sales department, including their employee number, last name, and first name.
select emp_no, last_name, first_name from dept_emp
inner join employees on de_emp_no = emp_no
inner join departments on de_dept_no = dept_no
where dept_name = 'Sales';


--Data Analysis #7
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from dept_emp
inner join employees on de_emp_no = emp_no
inner join departments on de_dept_no = dept_no
where dept_name in ('Sales', 'Development');


--Data Analysis #8
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as Counts from employees
group by last_name order by Counts desc;

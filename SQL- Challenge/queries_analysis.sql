-- (1) Employee details 
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        employees.gender,
        salaries.salary
FROM employees
    LEFT JOIN salaries 
    ON (employees.emp_no = salaries.emp_no);
	
--(2)employees hired in 1986
SELECT * 
FROM employees
WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31'); 

--(3)Dep manager
SELECT d.dept_no, 
	   n.dept_name, 
       d.emp_no,
       e.first_name,
       e.last_name,
       d.from_date,
       d.to_date
FROM departments n, dept_manager d, employees e
WHERE n.dept_name = d.dept_no
AND d.emp_no = e.emp_no; 

--(4)Employee department
SELECT u.emp_no,
	   o.first_name,
	   o.last_name,
	   b.dept_name 
FROM employees as o, departments as b, dept_emp as u 
WHERE u.emp_no = o.emp_no and u.dept_no = b.dept_no
ORDER BY u.emp_no Asc;

--(5) Hercules and B employee
SELECT * FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--(6) Sales department employees 
SELECT employees.emp_no,
        employees.first_name,
        employees.last_name,
		departments.dept_name
			from employees
			join dept_emp 
			on (dept_emp.emp_no = employees.emp_no)
				join departments 
				on (dept_emp.dept_no = departments.dept_no)
				where departments.dept_name = 'Sales';
				
--(7) Sales and development employees 
SELECT employees.emp_no,
        employees.first_name,
        employees.last_name,
		departments.dept_name
			from employees
			join dept_emp 
			on (dept_emp.emp_no = employees.emp_no)
				join departments 
				on (dept_emp.dept_no = departments.dept_no)
				where departments.dept_name = 'Sales';

		
SELECT employees.emp_no,
        employees.first_name,
        employees.last_name,
		departments.dept_name
			from employees
			join dept_emp 
			on (dept_emp.emp_no = employees.emp_no)
				join departments 
				on (dept_emp.dept_no = departments.dept_no)
				where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--(8) frequency of last name
SELECT last_name, Count(last_name)
from employees 
group by last_name;








--Drop table if 
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp
DROP TABLE IF EXISTS titles; 
DROP TABLE IF EXISTS salaries; 
   
);

-- Titles tab
CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL	
);
	
--Department tab
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
);

-- dept_manager tab
CREATE TABLE dept_manager (
   dept_no VARCHAR NOT NULL,
   emp_no INT NOT NULL,
   from_date DATE NOT NULL,
   to_date DATE NOT NULL
);
--Employee tab
CREATE TABLE employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name  VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date DATE NOT NULL   
);

-- Dept_emp
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date DATE  NOT NULL,
    to_date DATE NOT NULL    
);
   
-- Salaries tab
CREATE TABLE salaries (
	emp_no  INT  NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
   
);

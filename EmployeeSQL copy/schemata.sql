-- Checking Data

select * from departments
select * from dept_employee
select * from dept_manager
select * from employees
select * from salaries
select * from titles

-- Creating tables

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE dept_employee (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    dept_no VARCHAR PRIMARY KEY REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR PRIMARY KEY REFERENCES departments(dept_no),
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR REFERENCES titles(title_id),
    birth_date VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date VARCHAR
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    salary INT
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

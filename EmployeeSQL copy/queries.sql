-- Checking Data

select * from departments
select * from dept_employee
select * from dept_manager
select * from employees
select * from salaries
select * from titles

------------------------------------------------------------------------------------------
-- DATA ANALYSIS
------------------------------------------------------------------------------------------

-- #1 List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emo_no;

-- #2 List the first name, last name, and hire date for the employees who were hired in 1986.

select employees.first_name, employees.last_name, employees.hire_date
from employees
where extract (year from hire_date::date) = 1986;  

-- #3 List the manager of each department along with their department number, department name, 
--    employee number, last name, and first name.

select departments.dept_name, dept_manager.dept_no,employees.first_name, employees.last_name, employees.emp_no
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join dept_employee on dept_manager.dept_no = dept_employee.dept_no
join departments on departments.dept_no = dept_employee.dept_no;

-- #4 List the department number for each employee along with that employee’s employee number,
--    last name, first name, and department name.

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, dept_employee.dept_no
from employees
join dept_employee on employees.emp_no = dept_employee.emp_no
join departments on departments.dept_no = dept_employee.dept_no;

-- #5 List first name, last name, and sex of each employee whose first name is Hercules
--    and whose last name begins with the letter B (2 points)

select employees.first_name, employees.last_name
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%'

-- #6 List each employee in the Sales department, including their employee number,
--    last name, and first name (2 points)

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name --
from employees
join dept_employee on dept_employee.emp_no = employees.emp_no
join departments on departments.dept_no = dept_employee.dept_no
where departments.dept_name = 'Sales';

-- #7 List each employee in the Sales and Development departments, including their employee number
--    last name, first name, and department name (4 points)

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name --
from employees
join dept_employee on dept_employee.emp_no = employees.emp_no
join departments on departments.dept_no = dept_employee.dept_no
where departments.dept_name IN ('Sales', 'Development');

-- #8 List the frequency counts, in descending order, of all the employee last names
--   (that is, how many employees share each last name) (4 points)

select last_name, count(*) as frequency
from employees
group by last_name
order by frequency desc
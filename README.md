# sql-challenge

# Employee Database Analysis

This project involves creating and analyzing an employee database, performing SQL queries, and generating insights from the data. The database schema was created using SQL and can be visualized using the ERD tool available at QuickDatabases.com.

## Database Schema

The database consists of six tables:

- **departments**: Contains department information, with columns `dept_no` (primary key) and `dept_name`.

- **dept_employee**: Represents the relationship between employees and departments, with columns `emp_no` (foreign key referencing `employees.emp_no`) and `dept_no` (foreign key referencing `departments.dept_no`).

- **dept_manager**: Represents the relationship between managers and departments, with columns `dept_no` (foreign key referencing `departments.dept_no`) and `emp_no` (foreign key referencing `employees.emp_no`).

- **employees**: Contains employee information, with columns `emp_no` (primary key), `emp_title_id` (foreign key referencing `titles.title_id`), `birth_date`, `first_name`, `last_name`, `sex`, and `hire_date`.

- **salaries**: Contains salary information, with columns `emp_no` (foreign key referencing `employees.emp_no`) and `salary`.

- **titles**: Contains job title information, with columns `title_id` (primary key) and `title`.

## Data Analysis

The following SQL queries were performed on the database to gain insights:

### Query #1

List the employee number, last name, first name, sex, and salary of each employee.

### Query #2

List the first name, last name, and hire date for the employees who were hired in 1986.

### Query #3

List the manager of each department along with their department number, department name, employee number, last name, and first name.

### Query #4

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

### Query #5

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

### Query #6

List each employee in the Sales department, including their employee number, last name, and first name.

### Query #7

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

### Query #8

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

These queries were performed to analyze employee data and retrieve valuable information.

# Data input from csv files that were imported into a server where tables were created. Mistakes were made when constructing the ERD and PK, RK were left out. Although the tables were created using the ERD diagram maker (https://app.quickdatabasediagrams.com/), the keys were added after the fact using ALTER TABLE; this code was lost. All queries ran successfully from tables keyed with the ALTER method. To establish the ERD relationships between tables in the diagram, the PK/FK were added (see Complete ERD) and these tables were then imported into "schemata." My methodology was poor, but I also didn't understand the process at first.

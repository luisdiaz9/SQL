--Import each CSV file into the corresponding SQL table.
DROP TABLE titles;
CREATE TABLE titles (
	emp_no DEC,
	title VARCHAR,
	from_date Date,
	to_date Date
);
CREATE TABLE salaries (
	emp_no DEC,
	salary DEC,
	from_date Date,
	to_date Date
);

CREATE TABLE employees (
	emp_no DEC,
	birth_date Date,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date Date
);
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no DEC,
	from_date Date,
	to_date Date
);
CREATE TABLE dept_emp (
	emp_no DEC,
	dept_no VARCHAR,
	from_date Date,
	to_date Date
);
CREATE TABLE data_departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);
--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT  employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
salaries.emp_no=employees.emp_no;
--2.List employees who were hired in 1986.
SELECT  employees.emp_no, employees.first_name, employees.last_name, employees.gender, employees.hire_date
FROM employees
WHERE employees.hire_date >= '1986-01-01' AND employees.hire_date <= '1986-12-31';
--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, data_departments.dept_no, data_departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_emp.from_date, dept_emp.to_date
FROM dept_manager
JOIN data_departments
  ON dept_manager.dept_no = data_departments.dept_no
JOIN employees 
  ON dept_manager.emp_no = employees.emp_no
JOIN dept_emp 
  ON dept_manager.emp_no = dept_emp.emp_no;
--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT data_departments.dept_no, data_departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_emp.from_date, dept_emp.to_date
FROM data_departments
JOIN dept_emp 
  ON data_departments.dept_no = dept_emp.dept_no
JOIN employees 
  ON dept_emp.emp_no = employees.emp_no;
--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE employees.first_name='Hercules' AND employees.last_name LIKE 'B%'
--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT data_departments.dept_no, data_departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_emp.from_date, dept_emp.to_date
FROM data_departments
JOIN dept_emp 
  ON data_departments.dept_no = dept_emp.dept_no
JOIN employees 
  ON dept_emp.emp_no = employees.emp_no
WHERE data_departments.dept_name='Sales';
--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT data_departments.dept_no, data_departments.dept_name, employees.emp_no, employees.first_name, employees.last_name, dept_emp.from_date, dept_emp.to_date
FROM data_departments
JOIN dept_emp 
  ON data_departments.dept_no = dept_emp.dept_no
JOIN employees 
  ON dept_emp.emp_no = employees.emp_no
WHERE data_departments.dept_name='Sales' OR data_departments.dept_name='Development' ;
--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC;

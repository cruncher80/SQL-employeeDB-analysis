
-- show employee number, last name, first name, gender, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
	FROM employees AS e 
	JOIN salaries AS S
	ON (e.emp_no=s.emp_no);

-- show first and last names of each employe hired in 1986
SELECT first_name, last_name, hire_date
	FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date <= '1986-12-31'
ORDER BY hire_date;

-- show all managers
SELECT d.dept_no, t.dept_name, d.emp_no, e.last_name, e.first_name, d.from_date, d.to_date
	FROM dept_manager AS d 
JOIN employees AS e
	ON (d.emp_no=e.emp_no)
JOIN departments AS t
	ON (d.dept_no = t.dept_no);

-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM department_employees AS de
JOIN employees as e
	ON (de.emp_no=e.emp_no)
JOIN departments as d
	ON (de.dept_no=d.dept_no)
ORDER BY emp_no;	
	
-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
	FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
-- employees in the Sales dept by employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM department_employees AS de
JOIN employees AS e
	ON (de.emp_no=e.emp_no)
JOIN departments as d
	ON (de.dept_no=d.dept_no)
WHERE dept_name = 'Sales';

-- employees in Sales and Development depts :employee number, last name, first name, and department name.4
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM department_employees AS de
JOIN employees AS e
	ON (de.emp_no=e.emp_no)
JOIN departments as d
	ON (de.dept_no=d.dept_no)
WHERE dept_name = 'Sales'
	OR dept_name = 'Development';
	
-- In descending order, list the frequency count of employee last names
SELECT DISTINCT last_name, COUNT(last_name) AS num_names
	FROM employees
GROUP BY last_name
ORDER BY num_names DESC;
	
SELECT * from employees WHERE emp_no = 499942;

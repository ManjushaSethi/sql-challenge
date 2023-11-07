
-- employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
LEFT JOIN "Salaries" s
ON e.emp_no = s.emp_no;

-- first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--  manager of each department, their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, e.first_name, e.last_name, e.emp_no
FROM "dept_manager" dm
INNER JOIN "departments" d
ON dm.dept_no = d.dept_no
INNER JOIN "Employees" e
ON dm.emp_no = e.emp_no;




-- department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, d.dept_name, e.first_name, e.last_name, e.emp_no
FROM "dept_emp" de
LEFT JOIN "departments" d
ON de.dept_no = d.dept_no
LEFT JOIN "Employees" e
ON de.emp_no = e.emp_no;

-- first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM "Employees"
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.dept_no, d.dept_name, e.first_name, e.last_name, e.emp_no
FROM "dept_emp" de
LEFT JOIN "departments" d
ON de.dept_no = d.dept_no
LEFT JOIN "Employees" e
ON de.emp_no = e.emp_no
WHERE 
	dept_name = 'Sales';
	
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.	
SELECT de.dept_no, d.dept_name, e.first_name, e.last_name, e.emp_no
FROM "dept_emp" de
LEFT JOIN "departments" d
ON de.dept_no = d.dept_no
LEFT JOIN "Employees" e
ON de.emp_no = e.emp_no
WHERE 
	dept_name = 'Sales'
	OR dept_name = 'Develpoment';
	
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).	


SELECT last_name, COUNT(last_name) AS "Employee count"
FROM "Employees"
GROUP BY "Employees".last_name
ORDER BY "Employee count" DESC;







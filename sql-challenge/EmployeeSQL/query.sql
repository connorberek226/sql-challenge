SELECT * FROM departments;
SELECT * FROM employeedepartments;
SELECT * FROM managersdepartments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- Task 1
SELECT employees.emp_no, employees.first_name, employees.last_name, 
employees.sex, salaries.salary
	FROM employees Join salaries
		on employees.emp_no = salaries.emp_no;
		
-- Task 2
SELECT first_name, last_name, hire_date
	FROM employees 
	where hire_date BETWEEN '1986-01-01' AND '1986-12-31';
	
-- Task 3
SELECT departments.dept_no, departments.dept_name, 
managersdepartments.emp_no, employees.first_name, employees.last_name
	FROM departments JOIN managersdepartments
		on departments.dept_no = managersdepartments.dept_no
		JOIN employees on managersdepartments.emp_no = employees.emp_no;

-- Task 4
SELECT departments.dept_name, 
employeedepartments.emp_no, employees.last_name, employees.first_name
	FROM departments JOIN employeedepartments
		on departments.dept_no = employeedepartments.dept_no
		JOIN employees on employeedepartments.emp_no = employees.emp_no;

-- Task 5
SELECT first_name, last_name, sex
	FROM employees
	where first_name = 'Hercules' and last_name LIKE 'B%';
	
-- Task 6
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
	FROM employeedepartments JOIN departments ON employeedepartments.dept_no = departments.dept_no
		JOIN employees ON employeedepartments.emp_no = employees.emp_no
			WHERE departments.dept_name = 'Sales';

-- Task 7
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
	FROM employeedepartments JOIN departments ON employeedepartments.dept_no = departments.dept_no
		JOIN employees ON employeedepartments.emp_no = employees.emp_no
			WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';
			
-- Task 8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;



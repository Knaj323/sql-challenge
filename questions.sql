questions
--List the employee number, last name, first name, sex, and salary of each employee
SELECT emp.emp_no, emo.last_name, emp.first_name, emp.sex, sal.salaries
FROM employees emp 
JOIN salaries sal 
ON emp.emp_no = sal.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, dep.dept_name, dm.emp_no, emp.last_name, emp.first_name
FROM dept_manager dm 
JOIN employees emp 
ON dm.emp_no = emp.emp_no
JOIN departments dep
ON dm.dept_no = dep.dept_no
ORDER BY dep.dept_name ASC

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name 
FROM employees emp 
JOIN dept_emp demp 
ON emp.emp_no = demp.emp_no
JOIN departments dep 
ON dep.dept_no = demp.dept_no
ORDER BY dep.dept_name ASC

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = "Hercules" AND last_name LIKE "B%"
ORDER BY last_name ASC

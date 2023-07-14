-- Part 1:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;
-- Part 2:
SELECT e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE hire_date >= '1986-01-01'
	AND hire_date < '1987-01-01';
--Part 3:
SELECT d.dept_no, d.dept_name,dm.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;
--Part 4:
SELECT de.dept_no,de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e
ON de.emp_no = e.emp_no 
JOIN departments d
ON d.dept_no = de.dept_no;
--Part 5:
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%';
--Part 6:
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';
--Part 7:
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
JOIN employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
--Part 8:
SELECT e.last_name,
	Count(*)
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT(*)DESC;
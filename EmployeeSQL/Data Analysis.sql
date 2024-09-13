--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.id, e.last_name, e.first_name, sex, s.salary
FROM employees e
JOIN salary s on s.id = e.id

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no, dp.dept_name, e.id, e.last_name, e.first_name 
FROM dept_managers d
JOIN employees e on e.id = d.id
JOIN departments dp on dp.dept_no = d.dept_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.id, e.last_name, e.first_name, de.dept_no
FROM employees e
JOIN dept_employee de on de.id = e.id

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
where first_name = 'Hercules' and substring(last_name,1,1) = 'B'

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.id, e.last_name, e.first_name
FROM employees e
JOIN dept_employee d on d.id = e.id
where d.dept_no = 'd007'

	--subquery version
	SELECT e.id,e.last_name,e.first_name
	FROM employees e
	JOIN dept_employee d on d.id = e.id
	WHERE d.dept_no in (select distinct dept_no from departments where dept_name in ('Sales'))

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.id,e.last_name,e.first_name
FROM employees e
JOIN dept_employee d on d.id = e.id
where d.dept_no in ('d007','d005')

	--subquery version
	SELECT e.id,e.last_name,e.first_name
	FROM employees e
	JOIN dept_employee d on d.id = e.id
	WHERE d.dept_no in (select distinct dept_no from departments where dept_name in ('Sales','Development'))

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) "# of names"
FROM employees
group by (last_name)
order by "# of names" desc

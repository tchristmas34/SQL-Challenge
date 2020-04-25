--1
SELECT    employees.emp_no, 
		  employees.gender, 
		  employees.first_name, 
		  employees.last_name,  
		  salaries.salary
FROM 	  salaries
LEFT JOIN employees ON
employees.emp_no = salaries.emp_no;
--2
SELECT employees.emp_no,
employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE employees.hire_date between '1986-1-1' and '1986-12-31'
ORDER BY employees.hire_date
--3
SELECT  department.dept_name, 
		department.dept_no, 
		dept_manager.emp_no, 
		employees.first_name, 
		employees.last_name, 
		salaries.from_date, 
		salaries.to_date
FROM 	dept_manager 
JOIN 	employees
ON   	dept_manager.emp_no = employees.emp_no 
JOIN 	department
ON   	dept_manager.dept_no = department.dept_no
JOIN 	salaries
ON   	dept_manager.emp_no = salaries.emp_no;
--4
SELECT department_employees.emp_no, employees.first_name, employees.last_name, department.dept_name  
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN department 
ON  department_employees.dept_no = department.dept_no;
--5
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
--6
SELECT department_employees.emp_no, 
	   employees.first_name, 
	   employees.last_name, 
	   department.dept_name  
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN department 
ON  department_employees.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';
--7
SELECT department_employees.emp_no, department.dept_name, employees.first_name, employees.last_name
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN department 
ON  department_employees.dept_no = department.dept_no
WHERE department.dept_name = 'Development' OR department.dept_name = 'Sales'
--8
SELECT last_name, count(last_name) total_count
FROM employees
GROUP BY last_name;
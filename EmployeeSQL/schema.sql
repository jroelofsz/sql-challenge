DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS dept_managers;
DROP TABLE IF EXISTS dept_employee;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;

--titles table creation
CREATE TABLE titles (
	title_id char(5) PRIMARY KEY NOT NULL,
	title varchar(255) NOT NULL
);

--department defintion table creation
CREATE TABLE departments (
	dept_no char(4) PRIMARY KEY NOT NULL,
	dept_name varchar(255) NOT NULL
);


--employee table creation
CREATE TABLE employees (
	id int PRIMARY KEY NOT NULL,
	title_id char(5) NOT NULL,
	birth_date date, NOT NULL
	first_name varchar(255),
	last_name varchar(255),
	sex char(1),
	hire_date date,
	FOREIGN KEY(title_id) REFERENCES titles(title_id) 
);

--salary table creation
CREATE TABLE salary (
	id int PRIMARY KEY,
	salary float,
	FOREIGN KEY (id) REFERENCES employees(id)
);


CREATE TABLE dept_managers (
	dept_no varchar(4) NOT NULL,
	id int NOT NULL,
	PRIMARY KEY (id,dept_no),
	FOREIGN KEY (id) REFERENCES employees(id),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_employee (
	 id int NOT NULL,
	 dept_no varchar(4) NOT NULL,
	 FOREIGN KEY (id) REFERENCES employees(id),
	 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 PRIMARY KEY (id, dept_no)
);
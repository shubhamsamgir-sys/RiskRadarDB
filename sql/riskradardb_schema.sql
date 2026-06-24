CREATE DATABASE RiskRadarDB;

USE RiskRadarDB;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    office_city VARCHAR(100) NOT NULL
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_id INT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE NOT NULL,
    specialization VARCHAR(100),
    hire_date DATE NOT NULL,

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_id INT NOT NULL,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    project_status VARCHAR(20) NOT NULL,
    priority_level VARCHAR(20) NOT NULL,
    budget DECIMAL(12,2),

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);


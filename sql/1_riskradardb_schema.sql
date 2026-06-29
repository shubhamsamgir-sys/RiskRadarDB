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


CREATE TABLE incidents (
    incident_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_id INT NOT NULL,
    incident_title VARCHAR(100) NOT NULL,
    incident_description VARCHAR(255),
    incident_type VARCHAR(50) NOT NULL,
    reported_at DATETIME NOT NULL,
    resolved_at DATETIME,

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);


CREATE TABLE daily_operations (
    daily_operations_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_id INT NOT NULL,
    operation_date DATE NOT NULL,
    tasks_assigned INT NOT NULL,
    tasks_completed INT NOT NULL,
    delayed_tasks INT NOT NULL,

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);



CREATE TABLE incident_projects (
    incident_id INT NOT NULL,
    project_id INT NOT NULL,

    PRIMARY KEY (incident_id, project_id),

    FOREIGN KEY (incident_id)
        REFERENCES incidents(incident_id),

    FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
);
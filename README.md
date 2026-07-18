\# RiskRadarDB – SQL-Based Risk Analytics Database

\## Project Overview

RiskRadarDB is a portfolio project built using MySQL to simulate how an organization monitors operational risks across departments and projects.

The database stores information about departments, employees, projects, daily operations, and incidents. Using SQL analytical queries, managers can identify high-risk departments, track incident trends, monitor project risks, and support better business decisions.

\---

\## Business Problem

Organizations often collect operational data but struggle to identify which departments or projects require immediate attention.

RiskRadarDB demonstrates how SQL can transform raw operational data into meaningful business insights through analytical queries.

\---

\## Database Features

\* Multi-table relational database

\* Realistic sample business data

\* Incident tracking system

\* Project risk monitoring

\* Department performance analysis

\* Risk score calculation using SQL

\* Business-focused analytical reports

\---

\## Database Tables

\* Departments

\* Employees

\* Projects

\* Incidents

\* Incident_Projects (Bridge Table)

\* Daily_Operations

\---

\## SQL Concepts Used

\* SELECT

\* WHERE

\* ORDER BY

\* GROUP BY

\* Aggregate Functions

\* INNER JOIN

\* LEFT JOIN

\* CASE

\* Subqueries

\* Constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, DEFAULT, NOT NULL)

\---

\## Example Business Questions Answered

\* Which department has the highest operational risk?

\* Which projects are affected by the most critical incidents?

\* Which departments experience the most incidents?

\* How are incidents distributed by severity?

\* Which employees reported the most serious incidents?

\* Which departments manage the most high-priority projects?

\* What are the monthly incident trends?

\* What is the overall risk score for each department?

\---

\## Technologies Used

\* MySQL

\* MySQL Workbench

\---

\## SQL Files

```text
- 01_create_schemas.sql
- 02_insert_sample_data.sql
- 03_schema_updates.sql
- 04_data_migration.sql
- 05_analytical_queries.sql

```

\---

\## Learning Outcomes

This project strengthened my understanding of:

\* Relational database design

\* One-to-many and many-to-many relationships

\* Bridge tables

\* Business-oriented SQL analysis

\* Risk reporting using SQL

\* Solving row multiplication issues with subqueries

\* Writing portfolio-ready SQL projects

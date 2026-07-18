\# RiskRadarDB

\## Project Goal

Build a business risk detection system that identifies operational bottlenecks before they become expensive problems.

\## Business Type

Generic company

\## Core Entities

\- Departments

\- Employees

\- Projects

\- Incidents

\- Daily_Operations

\- Risk_Indicators

\## Final Tables

\- departments

\- employees

\- projects

\- incidents

\- daily_operations

\- incident_projects

\## Risk Detection Strategy

Risk levels will not be stored in a table.

Instead, they will be generated dynamically using analytical SQL queries (CASE WHEN, aggregations, joins, CTEs, and window functions).

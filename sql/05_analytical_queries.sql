
-- Total incidents by department
SELECT
    d.department_name,
    COUNT(i.incident_id) AS total_incidents
FROM departments d
LEFT JOIN incidents i
    ON d.dept_id = i.dept_id
GROUP BY d.dept_id, d.department_name
ORDER BY total_incidents DESC;

-- Incidents by severity
SELECT
    severity,
    COUNT(*) AS total_incidents
FROM incidents
GROUP BY severity
ORDER BY total_incidents DESC;

-- Incidents by type
SELECT
    incident_type,
    COUNT(*) AS total_incidents
FROM incidents
GROUP BY incident_type
ORDER BY total_incidents DESC;

-- Projects by status
SELECT
    project_status,
    COUNT(*) AS total_projects
FROM projects
GROUP BY project_status;

-- Projects by priority
SELECT
    priority_level,
    COUNT(*) AS total_projects
FROM projects
GROUP BY priority_level;

-- Which projects are affected by the most incidents?
SELECT
    p.project_name,
    COUNT(ip.incident_id) AS total_incidents
FROM projects p
LEFT JOIN incident_projects ip
    ON p.project_id = ip.project_id
GROUP BY p.project_id, p.project_name
ORDER BY total_incidents DESC;

-- Which departments have the most Critical incidents?
SELECT
    d.department_name,
    COUNT(i.incident_id) AS critical_incidents
FROM departments d
LEFT JOIN incidents i
    ON d.dept_id = i.dept_id
   AND i.severity = 'Critical'
GROUP BY d.dept_id, d.department_name;

-- Employees who reported the most incidents
SELECT
    e.employee_name,
    COUNT(i.incident_id) AS incidents_reported
FROM employees e
LEFT JOIN incidents i
    ON e.employee_id = i.reported_by_employee_id
GROUP BY e.employee_id, e.employee_name
ORDER BY incidents_reported DESC;

-- Average incident resolution time by department
SELECT
    d.department_name,
    ROUND(AVG(TIMESTAMPDIFF(HOUR,
            i.reported_at,
            i.resolved_at)),2) AS avg_resolution_hours
FROM departments d
INNER JOIN incidents i
    ON d.dept_id = i.dept_id
WHERE i.resolved_at IS NOT NULL
GROUP BY d.dept_id, d.department_name
ORDER BY avg_resolution_hours;

-- Projects affected by Critical incidents
SELECT
    p.project_name,
    i.incident_title,
    i.severity
FROM incident_projects ip
INNER JOIN projects p
    ON ip.project_id = p.project_id
INNER JOIN incidents i
    ON ip.incident_id = i.incident_id
WHERE i.severity = 'Critical'
ORDER BY p.project_name;

-- Which projects are affected by the most Critical incidents?
SELECT
    p.project_name,
    COUNT(i.incident_id) AS critical_incidents
FROM projects p
LEFT JOIN incident_projects ip
    ON p.project_id = ip.project_id
LEFT JOIN incidents i
    ON ip.incident_id = i.incident_id
    AND i.severity = 'Critical'
GROUP BY p.project_id, p.project_name
ORDER BY critical_incidents DESC;

-- How many incidents affected each project?
SELECT
    p.project_name,
    COUNT(ip.incident_id) AS total_incidents
FROM projects p
LEFT JOIN incident_projects ip
    ON p.project_id = ip.project_id
GROUP BY p.project_id, p.project_name
ORDER BY total_incidents DESC;

-- Employees who reported High or Critical incidents
SELECT
    e.employee_name,
    COUNT(i.incident_id) AS serious_incidents_reported
FROM employees e
LEFT JOIN incidents i
    ON e.employee_id = i.reported_by_employee_id
    AND i.severity IN ('High','Critical')
GROUP BY e.employee_id, e.employee_name
ORDER BY serious_incidents_reported DESC;

-- Department-wise employee count
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.department_name
ORDER BY total_employees DESC;

-- Total Projects Managed by Each Department
SELECT
    d.department_name,
    COUNT(p.project_id) AS total_projects
FROM departments d
LEFT JOIN projects p
    ON d.dept_id = p.dept_id
GROUP BY d.dept_id, d.department_name
ORDER BY total_projects DESC;


-- Total, Critical, High, Medium, Low incidents overall dashboard and risk_score
SELECT
    d.department_name,
    COUNT(i.incident_id) AS total_incidents,

    SUM(
        CASE
            WHEN i.severity = 'Critical' THEN 1
            ELSE 0
        END
    ) AS critical_incidents,

    SUM(
        CASE
            WHEN i.severity = 'High' THEN 1
            ELSE 0
        END
    ) AS high_incidents,

    SUM(
        CASE
            WHEN i.severity = 'Medium' THEN 1
            ELSE 0
        END
    ) AS medium_incidents,

    SUM(
        CASE
            WHEN i.severity = 'Low' THEN 1
            ELSE 0
        END
    ) AS low_incidents,

    SUM(
        CASE
            WHEN i.severity = 'Critical' THEN 5
            WHEN i.severity = 'High' THEN 3
            WHEN i.severity = 'Medium' THEN 2
            WHEN i.severity = 'Low' THEN 1
            ELSE 0
        END
    ) AS risk_score
FROM departments d
LEFT JOIN incidents i
    ON d.dept_id = i.dept_id
GROUP BY d.dept_id, d.department_name
ORDER BY risk_score DESC;

-- Monthly Incident Trend
SELECT
    MONTH(reported_at) AS month_number,
    COUNT(*) AS total_incidents
FROM incidents
GROUP BY MONTH(reported_at)
ORDER BY month_number;

-- Ongoing High-Priority Projects
SELECT
    project_name,
    priority_level,
    project_status
FROM projects
WHERE priority_level = 'High'
AND project_status = 'Ongoing';

-- Departments Managing High-Priority Projects
SELECT
    d.department_name,
    COUNT(p.project_id) AS high_priority_projects
FROM departments d
LEFT JOIN projects p
    ON d.dept_id = p.dept_id
    AND p.priority_level = 'High'
GROUP BY d.dept_id, d.department_name
ORDER BY high_priority_projects DESC;

-- Rank departments by risk score
WITH department_risk AS (
    SELECT
        d.department_name,
        SUM(CASE
                WHEN i.severity = 'Critical' THEN 5
                WHEN i.severity = 'High' THEN 3
                WHEN i.severity = 'Medium' THEN 2
                WHEN i.severity = 'Low' THEN 1
                ELSE 0
            END) AS risk_score
    FROM departments d
    LEFT JOIN incidents i ON d.dept_id = i.dept_id
    GROUP BY d.dept_id, d.department_name
)

SELECT
    department_name,
    risk_score,
    RANK() OVER (ORDER BY risk_score DESC) AS risk_rank
FROM department_risk;

-- Standardize incident type casing for reporting consistency
SELECT
    UPPER(incident_type) AS incident_type_normalized,
    COUNT(*) AS total_incidents
FROM incidents
GROUP BY UPPER(incident_type)
ORDER BY total_incidents DESC;

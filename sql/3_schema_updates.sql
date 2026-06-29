USE RiskRadarDB;

ALTER TABLE incidents
ADD COLUMN reported_by_employee_id INT NULL AFTER dept_id,
ADD COLUMN severity VARCHAR(20) NOT NULL
CHECK (severity IN ('Low', 'Medium', 'High', 'Critical')) AFTER incident_type,
ADD CONSTRAINT fk_incidents_employee
FOREIGN KEY (reported_by_employee_id)
REFERENCES employees(employee_id);
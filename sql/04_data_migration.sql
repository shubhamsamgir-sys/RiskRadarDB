/*
Purpose:
The incidents table was initially created without
reported_by_employee_id and severity.

After these columns were added using ALTER TABLE,
this migration populated the existing records with
realistic values.

This demonstrates schema evolution in a production-like scenario.
*/


-- ============================================
-- 04_data_migration.sql
-- Populate new columns added during schema update
-- ============================================

UPDATE incidents
SET reported_by_employee_id = 7,
    severity = 'High'
WHERE incident_id = 1;

UPDATE incidents
SET reported_by_employee_id = 8,
    severity = 'Medium'
WHERE incident_id = 2;

UPDATE incidents
SET reported_by_employee_id = 10,
    severity = 'Critical'
WHERE incident_id = 3;

UPDATE incidents
SET reported_by_employee_id = 12,
    severity = 'High'
WHERE incident_id = 4;

UPDATE incidents
SET reported_by_employee_id = 9,
    severity = 'Medium'
WHERE incident_id = 5;

UPDATE incidents
SET reported_by_employee_id = 6,
    severity = 'High'
WHERE incident_id = 6;

UPDATE incidents
SET reported_by_employee_id = 14,
    severity = 'Critical'
WHERE incident_id = 7;

UPDATE incidents
SET reported_by_employee_id = 8,
    severity = 'Medium'
WHERE incident_id = 8;

UPDATE incidents
SET reported_by_employee_id = 11,
    severity = 'Low'
WHERE incident_id = 9;

UPDATE incidents
SET reported_by_employee_id = 3,
    severity = 'High'
WHERE incident_id = 10;

UPDATE incidents
SET reported_by_employee_id = 5,
    severity = 'Medium'
WHERE incident_id = 11;

UPDATE incidents
SET reported_by_employee_id = 4,
    severity = 'Medium'
WHERE incident_id = 12;

UPDATE incidents
SET reported_by_employee_id = 2,
    severity = 'Low'
WHERE incident_id = 13;

UPDATE incidents
SET reported_by_employee_id = 1,
    severity = 'Medium'
WHERE incident_id = 14;

UPDATE incidents
SET reported_by_employee_id = 17,
    severity = 'Low'
WHERE incident_id = 15;

UPDATE incidents
SET reported_by_employee_id = 13,
    severity = 'High'
WHERE incident_id = 16;

UPDATE incidents
SET reported_by_employee_id = 15,
    severity = 'Medium'
WHERE incident_id = 17;

UPDATE incidents
SET reported_by_employee_id = 11,
    severity = 'Low'
WHERE incident_id = 18;

UPDATE incidents
SET reported_by_employee_id = 14,
    severity = 'Medium'
WHERE incident_id = 19;

UPDATE incidents
SET reported_by_employee_id = 18,
    severity = 'Medium'
WHERE incident_id = 20;

UPDATE incidents
SET reported_by_employee_id = 20,
    severity = 'High'
WHERE incident_id = 21;

UPDATE incidents
SET reported_by_employee_id = 6,
    severity = 'Low'
WHERE incident_id = 22;

UPDATE incidents
SET reported_by_employee_id = 21,
    severity = 'Medium'
WHERE incident_id = 23;

UPDATE incidents
SET reported_by_employee_id = 8,
    severity = 'High'
WHERE incident_id = 24;

UPDATE incidents
SET reported_by_employee_id = 7,
    severity = 'Medium'
WHERE incident_id = 25;


ALTER TABLE incidents
MODIFY COLUMN severity VARCHAR(20) NOT NULL;

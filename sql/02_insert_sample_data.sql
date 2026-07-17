INSERT INTO departments (department_name, office_city)
VALUES
('Operations', 'Pune'),
('IT', 'Bengaluru'),
('Sales', 'Mumbai'),
('HR', 'Pune'),
('Finance', 'Hyderabad');


INSERT INTO employees
(dept_id, employee_name, phone, email, specialization, hire_date)
VALUES

-- operations department
(1, 'Amit Sharma', '9876500001', 'amit.sharma@technova.com', 'Operations Manager', '2019-04-15'),
(1, 'Rahul Verma', '9876500002', 'rahul.verma@technova.com', 'Supply Chain Coordinator', '2020-08-10'),
(1, 'Priya Patel', '9876500003', 'priya.patel@technova.com', 'Logistics Coordinator', '2021-02-22'),
(1, 'Neha Kulkarni', '9876500004', 'neha.kulkarni@technova.com', 'Quality Analyst', '2022-06-18'),
(1, 'Vikram Singh', '9876500005', 'vikram.singh@technova.com', 'Procurement Officer', '2020-11-30'),
(1, 'Sneha Joshi', '9876500006', 'sneha.joshi@technova.com', 'Operations Analyst', '2023-01-09'),
(1, 'Karan Mehta', '9876500007', 'karan.mehta@technova.com', 'Customer Operations Executive', '2021-09-14'),
(1, 'Pooja Deshmukh', '9876500008', 'pooja.deshmukh@technova.com', 'Facilities Coordinator', '2024-03-27'),

-- IT Department
(2, 'Arjun Nair', '9876500009', 'arjun.nair@technova.com', 'IT Manager', '2019-07-18'),
(2, 'Rohan Gupta', '9876500010', 'rohan.gupta@technova.com', 'System Administrator', '2020-02-11'),
(2, 'Aditya Kulkarni', '9876500011', 'aditya.kulkarni@technova.com', 'Network Engineer', '2021-09-03'),
(2, 'Ananya Iyer', '9876500012', 'ananya.iyer@technova.com', 'Database Administrator', '2022-04-21'),
(2, 'Nikhil Patil', '9876500013', 'nikhil.patil@technova.com', 'Cybersecurity Analyst', '2023-01-15'),
(2, 'Meera Shah', '9876500014', 'meera.shah@technova.com', 'Help Desk Technician', '2024-05-27'),

-- Sales Department
(3, 'Saurabh Mishra', '9876500015', 'saurabh.mishra@technova.com', 'Sales Manager', '2019-03-20'),
(3, 'Ayesha Khan', '9876500016', 'ayesha.khan@technova.com', 'Sales Executive', '2021-06-14'),
(3, 'Rohit Jain', '9876500017', 'rohit.jain@technova.com', 'Business Development Executive', '2022-08-30'),
(3, 'Kavya Reddy', '9876500018', 'kavya.reddy@technova.com', 'Key Account Manager', '2020-12-08'),
(3, 'Manish Yadav', '9876500019', 'manish.yadav@technova.com', 'Sales Coordinator', '2023-10-11'),

-- HR Department
(4, 'Anjali Sharma', '9876500020', 'anjali.sharma@technova.com', 'HR Manager', '2019-09-09'),
(4, 'Deepika Joshi', '9876500021', 'deepika.joshi@technova.com', 'Recruiter', '2022-02-18'),
(4, 'Mohit Agarwal', '9876500022', 'mohit.agarwal@technova.com', 'HR Executive', '2024-01-25'),

-- Finance Department
(5, 'Pankaj Verma', '9876500023', 'pankaj.verma@technova.com', 'Finance Manager', '2020-01-13'),
(5, 'Ritu Singh', '9876500024', 'ritu.singh@technova.com', 'Accountant', '2021-11-05'),
(5, 'Ashish Mehta', '9876500025', 'ashish.mehta@technova.com', 'Financial Analyst', '2023-07-19');




INSERT INTO projects
(dept_id, project_name, start_date, end_date, project_status, priority_level)
VALUES

-- Operations Department
(1, 'Warehouse Optimization',
 '2026-01-15', NULL,
 'Ongoing', 'High'),

(1, 'Vendor Process Improvement',
 '2025-08-01', '2025-12-20',
 'Completed', 'Medium'),

(1, 'Inventory Automation',
 '2026-03-10', NULL,
 'Testing', 'Critical'),

-- IT Department
(2, 'Network Infrastructure Upgrade',
 '2026-02-01', NULL,
 'Ongoing', 'Critical'),

(2, 'Employee Self-Service Portal',
 '2026-04-15', NULL,
 'Testing', 'High'),

(2, 'Cloud Infrastructure Upgrade',
 '2025-09-01', '2026-01-25',
 'Completed', 'Medium'),

(2, 'Legacy Server Migration',
 '2025-06-10', '2025-08-15',
 'Cancelled', 'High'),

-- Sales Department
(3, 'CRM Enhancement',
 '2026-01-20', NULL,
 'Ongoing', 'High'),

(3, 'Lead Tracking Dashboard',
 '2026-08-10', NULL,
 'Planning', 'Medium'),

-- HR Department
(4, 'Employee Training Portal',
 '2025-07-15', '2025-11-30',
 'Completed', 'Low'),

(4, 'Recruitment Automation',
 '2026-03-01', NULL,
 'Ongoing', 'Medium'),

-- Finance Department
(5, 'Expense Management System',
 '2026-09-01', NULL,
 'Planning', 'High'),
 
(5, 'Financial Compliance Audit',
 '2025-10-05', '2026-02-10',
 'Completed', 'Medium');



INSERT INTO incidents
(dept_id, incident_title, incident_description,
 incident_type, reported_at, resolved_at)
VALUES

-- IT Department
(2,
'Firewall Misconfiguration',
'Firewall rule blocked internal application traffic.',
'Security',
'2026-01-05 09:15:00',
'2026-01-05 12:40:00'),

(2,
'VPN Connection Failure',
'Remote employees could not establish VPN connections.',
'Network',
'2026-01-18 08:30:00',
'2026-01-18 10:45:00'),

(2, 
'Database Performance Degradation',
'Production database experienced severe slowdowns.',
'Database',
'2026-02-02 10:20:00',
'2026-02-02 15:10:00'),

(2, 
'Email Server Downtime',
'Corporate email service unavailable.',
'Software',
'2026-02-20 11:00:00',
'2026-02-20 13:50:00'),

(2, 
'Unauthorized Login Attempt',
'Multiple failed administrator login attempts detected.',
'Security',
'2026-03-01 17:30:00',
'2026-03-01 18:00:00'),

(2,
'Cloud Backup Failure',
'Nightly cloud backup process failed.',
'Software',
'2026-03-12 02:10:00',
'2026-03-12 06:00:00'),

(2, 
'Core Switch Failure',
'Network core switch unexpectedly rebooted.',
'Hardware',
'2026-04-05 14:30:00',
'2026-04-05 18:15:00'),

(2, 
'Application Memory Leak',
'Business application consumed excessive memory.',
'Software',
'2026-04-18 09:45:00',
'2026-04-18 12:00:00'),

(2, 
'Server Disk Capacity Alert',
'Production server disk usage exceeded threshold.',
'Hardware',
'2026-05-06 08:00:00',
'2026-05-06 09:10:00'),

-- Operations Department
(1, 
'Warehouse Scanner Failure',
'Barcode scanners stopped responding.',
'Hardware',
'2026-01-09 10:10:00',
'2026-01-09 13:30:00'),

(1, 
'Inventory Mismatch',
'Physical inventory did not match system records.',
'Human Error',
'2026-02-11 16:20:00',
'2026-02-12 11:40:00'),

(1, 
'Supplier Data Import Failure',
'Vendor shipment data failed to import.',
'Software',
'2026-03-08 09:00:00',
'2026-03-08 12:20:00'),

(1, 
'Production Delay',
'Operations delayed because required materials arrived late.',
'Human Error',
'2026-04-09 13:00:00',
'2026-04-09 15:30:00'),

-- Operations Department
(1, 
'Forklift Maintenance Delay',
'Scheduled forklift maintenance was missed, causing warehouse delays.',
'Hardware',
'2026-05-14 08:20:00',
'2026-05-14 12:00:00'),

(1, 
'Delivery Schedule Conflict',
'Incorrect scheduling caused delayed outbound deliveries.',
'Human Error',
'2026-06-02 09:30:00',
'2026-06-02 11:15:00'),

-- Sales Department
(3, 
'CRM Login Failure',
'Sales representatives could not log in to the CRM system.',
'Software',
'2026-01-22 09:10:00',
'2026-01-22 11:45:00'),

(3, 
'Customer Data Sync Error',
'Customer records failed to synchronize with the CRM database.',
'Database',
'2026-02-28 14:00:00',
'2026-02-28 17:20:00'),

(3, 
'Sales Dashboard Unavailable',
'Analytics dashboard became temporarily unavailable.',
'Network',
'2026-04-11 10:30:00',
'2026-04-11 11:40:00'),

(3, 
'Quotation Approval Delay',
'Quotation approvals were delayed because of workflow configuration issues.',
'Human Error',
'2026-05-18 15:10:00',
'2026-05-18 17:30:00'),

-- HR Department
(4, 
'Employee Portal Login Issue',
'Employees experienced login failures on the HR portal.',
'Software',
'2026-02-06 09:00:00',
'2026-02-06 10:50:00'),

(4, 
'Payroll Data Validation Error',
'Payroll records contained validation errors before processing.',
'Database',
'2026-03-21 13:15:00',
'2026-03-21 16:10:00'),

(4, 
'Training Portal Downtime',
'Learning management portal was temporarily unavailable.',
'Network',
'2026-05-05 11:00:00',
'2026-05-05 12:30:00'),

-- Finance Department
(5, 
'Expense Approval Workflow Failure',
'Expense approval process stopped because of application errors.',
'Software',
'2026-03-10 09:40:00',
'2026-03-10 12:15:00'),

(5, 
'Financial Report Access Denied',
'Finance staff temporarily lost access to monthly financial reports.',
'Security',
'2026-05-22 14:20:00',
'2026-05-22 17:00:00'),

-- IT Department
(2, 
'Patch Deployment Failure',
'Security patch deployment failed on multiple production servers.',
'Software',
'2026-06-08 08:45:00',
'2026-06-08 11:30:00');




INSERT INTO incident_projects (incident_id, project_id)
VALUES

-- Project 14: Warehouse Optimization
(10,14),
(14,14),

-- Project 15: Vendor Process Improvement
(15,15),

-- Project 16: Inventory Automation
(11,16),
(12,16),

-- Project 17: Network Infrastructure Upgrade
(1,17),
(2,17),
(7,17),
(25,17),

-- Project 18: Employee Self-Service Portal
(2,18),
(4,18),
(25,18),

-- Project 19: Cloud Infrastructure Upgrade
(3,19),
(6,19),

-- Project 20: Legacy Server Migration
(3,20),

-- Project 21: CRM Enhancement
(17,21),
(18,21),
(19,21),

-- Project 22: Lead Tracking Dashboard
(19,22),

-- Project 23: Employee Training Portal
(22,23),

-- Project 24: Recruitment Automation
(21,24),

-- Project 25: Expense Management System
(24,25),

-- Project 26: Financial Compliance Audit
(23,26);


INSERT INTO daily_operations
(dept_id, operation_date, tasks_assigned, tasks_completed, delayed_tasks)
VALUES

-- Operations (dept_id = 1)
(1, '2026-06-01', 30, 25, 5),
(1, '2026-06-02', 28, 24, 4),
(1, '2026-06-03', 32, 27, 5),
(1, '2026-06-04', 29, 26, 3),
(1, '2026-06-05', 31, 25, 6),
(1, '2026-06-06', 27, 24, 3),

-- IT (dept_id = 2)
(2, '2026-06-01', 20, 18, 2),
(2, '2026-06-02', 22, 20, 2),
(2, '2026-06-03', 25, 21, 4),
(2, '2026-06-04', 18, 18, 0),
(2, '2026-06-05', 24, 20, 4),
(2, '2026-06-06', 21, 19, 2),

-- Sales (dept_id = 3)
(3, '2026-06-01', 18, 17, 1),
(3, '2026-06-02', 20, 18, 2),
(3, '2026-06-03', 19, 17, 2),
(3, '2026-06-04', 21, 20, 1),
(3, '2026-06-05', 22, 20, 2),
(3, '2026-06-06', 20, 19, 1),

-- HR (dept_id = 4)
(4, '2026-06-01', 10, 10, 0),
(4, '2026-06-02', 12, 11, 1),
(4, '2026-06-03', 11, 11, 0),
(4, '2026-06-04', 13, 12, 1),
(4, '2026-06-05', 10, 10, 0),
(4, '2026-06-06', 12, 12, 0),

-- Finance (dept_id = 5)
(5, '2026-06-01', 15, 14, 1),
(5, '2026-06-02', 16, 15, 1),
(5, '2026-06-03', 17, 15, 2),
(5, '2026-06-04', 14, 13, 1),
(5, '2026-06-05', 18, 16, 2),
(5, '2026-06-06', 16, 16, 0);
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

--operations department
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
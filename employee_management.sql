USE Employee_Management_DB;

CREATE TABLE employees (
    emp_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    joining_date DATE
);

INSERT INTO employees VALUES
('EMP001','Md Mehedi Hasan','IT','Software Engineer','mehedi@gmail.com','01711111111','2024-01-10'),

('EMP002','Farhan Hassan','HR','HR Officer','farhan@gmail.com','01722222222','2024-02-15'),

('EMP003','Taslim Alam','Accounts','Accountant','taslim@gmail.com','01733333333','2024-03-01'),

('EMP004','Umma Rumman','Marketing','Marketing Officer','umma@gmail.com','01744444444','2024-04-12'),

('EMP005','Rakib Hasan','IT','System Analyst','rakib@gmail.com','01755555555','2024-05-18');

CREATE TABLE payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id VARCHAR(10),
    pay_month VARCHAR(20),
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deduction DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_status VARCHAR(20),

    FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);

INSERT INTO payroll
(emp_id,pay_month,basic_salary,bonus,deduction,net_salary,payment_status)

VALUES
('EMP001','April 2026',95000,5000,18000,82000,'Paid'),

('EMP002','April 2026',75000,3000,14000,64000,'Paid'),

('EMP003','April 2026',88000,4000,16000,76000,'Paid'),

('EMP004','April 2026',62000,2000,9000,55000,'Unpaid'),

('EMP005','April 2026',92000,5000,17500,79500,'Paid');e
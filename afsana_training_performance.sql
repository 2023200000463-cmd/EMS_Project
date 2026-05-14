TABLE : TRAINING
CREATE TABLE training (
    training_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id VARCHAR(10),
    course_name VARCHAR(100),
    provider VARCHAR(50),
    FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);

INSERT INTO training
(emp_id, course_name, provider)
VALUES
('EMP001', 'Advanced System Design', 'Coursera'),
('EMP002', 'React Development', 'Udemy'),
('EMP003', 'HR Analytics', 'LinkedIn'),
('EMP005', 'Financial Modelling', 'CFI');

-- TABLE : PERFORMANCE
CREATE TABLE performance (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id VARCHAR(10),
    review_period VARCHAR(20),
    rating VARCHAR(20),
    FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);

INSERT INTO performance
(emp_id, review_period, rating)
VALUES
('EMP001', 'Q1 2026', 'Excellent'),
('EMP002', 'Q1 2026', 'Good'),
('EMP003', 'Q1 2026', 'Excellent'),
('EMP004', 'Q1 2026', 'Average');

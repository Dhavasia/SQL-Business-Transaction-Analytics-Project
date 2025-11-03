create database ESR;
use esr;

CREATE TABLE employee (
    sno INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO employee (sno, name, role, salary) VALUES
(1, 'Naveen Raj', 'Junior Developer', 45000.00),
(2, 'Meera Thomas', 'Support Analyst', 52000.00),
(3, 'Kishore Babu', 'QA Tester', 39000.00),
(4, 'Lavanya Iyer', 'Content Writer', 34000.00),
(5, 'Ramesh D', 'Technical Support', 41000.00),
(6, 'Swathi Nair', 'Marketing Executive', 47000.00),
(7, 'Arvind Menon', 'Database Assistant', 58000.00),
(8, 'Geetha R', 'HR Executive', 36000.00),
(9, 'Vasanth Kumar', 'Sales Associate', 43000.00),
(10, 'Anitha S', 'Graphic Designer', 49000.00),
(11, 'Sundar M', 'Operations Coordinator', 53000.00),
(12, 'Divakar Rao', 'Junior Analyst', 46000.00),
(13, 'Pavithra G', 'Digital Marketer', 55000.00),
(14, 'Karthik V', 'Frontend Intern', 30000.00),
(15, 'Sneha R', 'Data Entry Operator', 28000.00),
(16, 'Manikandan T', 'IT Technician', 60000.00),
(17, 'Revathi P', 'Customer Service Rep', 37000.00),
(18, 'Gokul N', 'SEO Analyst', 48000.00),
(19, 'Shalini K', 'Finance Assistant', 59000.00),
(20, 'Pradeep S', 'Junior React Dev', 62000.00),
(21, 'Bhavani M', 'Admin Executive', 32000.00),
(22, 'Sathish R', 'Logistics Coordinator', 44000.00),
(23, 'Janani V', 'Social Media Exec', 51000.00),
(24, 'Murali D', 'Junior QA', 38000.00),
(25, 'Keerthana S', 'Business Trainee', 35000.00),
(26, 'Rajeshwari N', 'Tech Support Intern', 27000.00),
(27, 'Vignesh P', 'Junior ML Engineer', 75000.00),
(28, 'Harini R', 'Documentation Specialist', 56000.00),
(29, 'Ashwin K', 'Cloud Support Associate', 68000.00),
(30, 'Deepa M', 'Junior Data Analyst', 63000.00);

select * from employee;

create table high_pay_employees as select sno,name,role,salary from employee where salary>=50000;

select count(sno) from employee;

select count(sno) from high_pay_employees;

create temporary table emp_high (name varchar(55),salary decimal(10,2));

show tables;

insert into emp_high select name,salary from employee where salary>=50000;

select * from emp_high;

With high_salary_cte AS (
 select sno,name,salary 
 from employee 
 where salary>=50000
 )
 
 select * from high_salary_cte;
 
 
 create database ola;
 
 create table ola.user(id int,name varchar(55));
 
 select * from ola.user;
 
 CREATE TABLE customer_transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    login_device VARCHAR(50),
    customer_name VARCHAR(100),
    ip_address VARCHAR(45),
    product VARCHAR(100),
    amount DECIMAL(10, 2),
    is_paid BOOLEAN DEFAULT FALSE,
    is_viewed BOOLEAN DEFAULT FALSE,
    transaction_status VARCHAR(50)
);

show tables;

INSERT INTO customer_transactions 
(login_device, customer_name, ip_address, product, amount, is_paid, is_viewed, transaction_status)
VALUES
('laptop', 'Arun Kumar', '192.168.1.10', 'Football Shoes', 1999.99, TRUE, TRUE, 'Completed'),
('mobile', 'Priya Sharma', '192.168.1.11', 'Cricket Bat', 1499.50, FALSE, TRUE, 'Pending'),
('tablet', 'Rahul Singh', '192.168.1.12', 'Tennis Racket', 2599.00, TRUE, FALSE, 'Completed'),
('laptop', 'Kiran Patel', '192.168.1.13', 'Badminton Shuttle', 499.00, FALSE, FALSE, 'Cancelled'),
('mobile', 'Sneha Reddy', '192.168.1.14', 'Football Jersey', 799.50, TRUE, TRUE, 'Completed'),
('tablet', 'Vikram Verma', '192.168.1.15', 'Basketball', 1299.00, TRUE, FALSE, 'Completed'),
('laptop', 'Anjali Gupta', '192.168.1.16', 'Running Shoes', 2200.00, TRUE, TRUE, 'Completed'),
('mobile', 'Ravi Kumar', '192.168.1.17', 'Fitness Band', 3200.75, FALSE, FALSE, 'Pending'),
('tablet', 'Divya Nair', '192.168.1.18', 'Swimming Goggles', 650.00, TRUE, TRUE, 'Completed'),
('laptop', 'Amit Joshi', '192.168.1.19', 'Hockey Stick', 2100.00, TRUE, TRUE, 'Completed'),

('mobile', 'Neha Mehta', '192.168.1.20', 'Sports Cap', 350.00, FALSE, TRUE, 'Cancelled'),
('tablet', 'Suresh Das', '192.168.1.21', 'Football Socks', 150.00, TRUE, TRUE, 'Completed'),
('laptop', 'Kavya Menon', '192.168.1.22', 'Skating Shoes', 1800.00, TRUE, FALSE, 'Completed'),
('mobile', 'Gaurav Jain', '192.168.1.23', 'Gym Gloves', 450.00, FALSE, FALSE, 'Pending'),
('tablet', 'Shweta Iyer', '192.168.1.24', 'Yoga Mat', 899.00, TRUE, TRUE, 'Completed'),
('laptop', 'Manoj Tiwari', '192.168.1.25', 'Treadmill', 25000.00, TRUE, TRUE, 'Completed'),
('mobile', 'Rohit Malhotra', '192.168.1.26', 'Dumbbells Set', 3500.00, FALSE, TRUE, 'Pending'),
('tablet', 'Pooja Agarwal', '192.168.1.27', 'Skipping Rope', 299.00, TRUE, TRUE, 'Completed'),
('laptop', 'Nikhil Yadav', '192.168.1.28', 'Cricket Gloves', 699.00, TRUE, FALSE, 'Completed'),
('mobile', 'Meena Sharma', '192.168.1.29', 'Sports Bag', 1200.00, FALSE, TRUE, 'Pending'),

('tablet', 'Deepak Mishra', '192.168.1.30', 'Tennis Balls Pack', 399.00, TRUE, TRUE, 'Completed'),
('laptop', 'Ramesh Rao', '192.168.1.31', 'Football Net', 1300.00, TRUE, TRUE, 'Completed'),
('mobile', 'Sandhya Pillai', '192.168.1.32', 'Goalkeeper Gloves', 1600.00, FALSE, FALSE, 'Cancelled'),
('tablet', 'Akhil Saxena', '192.168.1.33', 'Running Shorts', 699.00, TRUE, TRUE, 'Completed'),
('laptop', 'Varun Kapoor', '192.168.1.34', 'Tennis Cap', 350.00, TRUE, FALSE, 'Completed'),
('mobile', 'Nisha Bhat', '192.168.1.35', 'Hockey Ball', 499.00, FALSE, FALSE, 'Pending'),
('tablet', 'Aditya Jain', '192.168.1.36', 'Cricket Helmet', 2500.00, TRUE, TRUE, 'Completed'),
('laptop', 'Sonal Kaur', '192.168.1.37', 'Table Tennis Bat', 1199.00, TRUE, TRUE, 'Completed'),
('mobile', 'Arvind Menon', '192.168.1.38', 'Shuttle Cock Box', 349.00, FALSE, TRUE, 'Pending'),
('tablet', 'Geeta Nair', '192.168.1.39', 'Cycling Helmet', 2800.00, TRUE, FALSE, 'Completed'),

('laptop', 'Vikas Sharma', '192.168.1.40', 'Cricket Pads', 2200.00, TRUE, TRUE, 'Completed'),
('mobile', 'Monica Reddy', '192.168.1.41', 'Sports Water Bottle', 299.00, FALSE, FALSE, 'Cancelled'),
('tablet', 'Ashok Kumar', '192.168.1.42', 'Tennis Racket Grip', 150.00, TRUE, TRUE, 'Completed'),
('laptop', 'Karthik Rao', '192.168.1.43', 'Yoga Block', 450.00, TRUE, TRUE, 'Completed'),
('mobile', 'Snehal Patil', '192.168.1.44', 'Gym T-shirt', 599.00, FALSE, TRUE, 'Pending'),
('tablet', 'Mukesh Pandey', '192.168.1.45', 'Jump Rope', 250.00, TRUE, TRUE, 'Completed'),
('laptop', 'Lakshmi Devi', '192.168.1.46', 'Cricket Stumps', 1700.00, TRUE, FALSE, 'Completed'),
('mobile', 'Sunil Kumar', '192.168.1.47', 'Tennis Shoes', 3500.00, FALSE, TRUE, 'Pending'),
('tablet', 'Rekha Singh', '192.168.1.48', 'Football Pump', 399.00, TRUE, TRUE, 'Completed'),
('laptop', 'Harish Yadav', '192.168.1.49', 'Running Cap', 250.00, TRUE, TRUE, 'Completed'),

('mobile', 'Madhuri Iyer', '192.168.1.50', 'Swimming Cap', 499.00, FALSE, FALSE, 'Cancelled'),
('tablet', 'Anand Sharma', '192.168.1.51', 'Weight Lifting Belt', 2200.00, TRUE, TRUE, 'Completed'),
('laptop', 'Chirag Patel', '192.168.1.52', 'Tennis Shorts', 799.00, TRUE, FALSE, 'Completed'),
('mobile', 'Ritika Das', '192.168.1.53', 'Sports Shoes', 2800.00, FALSE, TRUE, 'Pending'),
('tablet', 'Sanjay Gupta', '192.168.1.54', 'Gym Bag', 1499.00, TRUE, TRUE, 'Completed'),
('laptop', 'Pallavi Joshi', '192.168.1.55', 'Cricket Jersey', 999.00, TRUE, TRUE, 'Completed'),
('mobile', 'Anusha Rao', '192.168.1.56', 'Football Gloves', 850.00, FALSE, FALSE, 'Pending'),
('tablet', 'Rajesh Kumar', '192.168.1.57', 'Table Tennis Balls', 299.00, TRUE, TRUE, 'Completed'),
('laptop', 'Swati Sharma', '192.168.1.58', 'Yoga Pants', 1200.00, TRUE, TRUE, 'Completed'),
('mobile', 'Vinay Menon', '192.168.1.59', 'Hockey Jersey', 899.00, FALSE, TRUE, 'Pending');



select * from customer_transactions;

select count(*) from customer_transactions where transaction_status="pending";

select sum(amount) from customer_transactions where transaction_status="pending";

select count(*) from customer_transactions where transaction_status="pending" or transaction_status="failed";

select sum(amount) from customer_transactions where transaction_status="pending" or transaction_status="failed";

select login_device,sum(amount) as total_Revenue from customer_transactions group by login_device ;

select login_device,sum(amount) as total_Revenue from customer_transactions group by login_device having sum(amount)>=30000;

-- truncate table customer_transactions;

select customer_name,amount,
case 
	when amount > 3000 then "High spender"
    when amount between 1000 and 2000 then "medium spender"
    when amount <=1000 then "low pender"
    else "no data"
    end as spending
from customer_transactions;


CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NULL,
    phone_number VARCHAR(20) NULL,
    address VARCHAR(255) NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);


INSERT INTO customers (name, email, phone_number, address, amount) VALUES
('Arun Kumar', 'arun.kumar@example.com', '9876543210', 'Chennai, Tamil Nadu', 2500.50),
('Priya Sharma', 'priya.sharma@example.com', NULL, 'Bangalore, Karnataka', 1800.00),
('Rahul Singh', 'rahul.singh@example.com', '9123456780', 'Delhi, India', 3200.75),
('Sneha Reddy', 'SnehaReddy@gmail.com', 9123456782, 'Hyderabad, Telangana', 1500.00),
('Vikram Verma', 'vikram.verma@example.com', '9988776655', 'Mumbai, Maharashtra', 4200.00),
('Anjali Gupta', 'anjali.gupta@example.com', NULL, 'Pune, Maharashtra', 2100.00),
('Ravi Kumar', 'ravi.kumar@example.com', '9012345678', 'Kochi, Kerala', 3600.00),
('Divya Nair', 'divya.nair@example.com', NULL, 'Trivandrum, Kerala', 2700.00),
('Amit Joshi', 'amit.joshi@example.com', '9765432109', 'Jaipur, Rajasthan', 1900.50),
('Kavya Menon', NULL, '9345678901', 'Coimbatore, Tamil Nadu', 2800.00);


select * from customers;

select name,phone_number from phone_number;

select name,
case 
when phone_number is null then email
else phone_number
end as contact
from customers;


select count(*) from customers where phone_number=Null;
select count(*) from customers where phone_number IS NULL;


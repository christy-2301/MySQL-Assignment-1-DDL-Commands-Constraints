create database employee;
use employee;
create table departments (
                    department_id int,
                    department_name char(100));
                    
create table location (location_id int, 
                       location varchar(30));
create table employees (
                         employee_id int,
						 employee_name varchar(50),
                         gender enum( 'M','F'),
                         age int,
                         hire_date date,
                         designation varchar(100),
                         department_id int,
                         location_id int,
                         salary decimal(10,2));
alter table employees
add column email varchar(50);                         
alter table employees
modify column designation varchar(200);
alter table employees
drop column age;
alter table employees
rename column hire_date to date_of_joining;
rename table departments to Departments_Info;
rename table location to locations;
truncate table employees;
drop table employees;
drop database employee;

CREATE DATABASE employee;
USE employee;
create table departments(
					department_id int primary KEY,
                    department_name char(100) not NULL unique);
create table location(
                      location_id int primary key auto_increment,
                      location varchar(30) not null unique);
create table employees(employee_id int primary key,
					   employee_name varchar(30) not null,
                       gender enum('M','F') not null,
                       age int check(age>=18),
                       hire_date date default (current_date) ,
                       designation varchar(100),
                       
                       department_id INT,
					   location_id INT,
                       FOREIGN KEY (department_id) 
                       REFERENCES departments(department_id),
                       FOREIGN KEY (location_id)
                       REFERENCES location(location_id),
					
                       salary decimal(10,2));
SELECT * FROM employees;
SELECT * FROM location;
SELECT * FROM departments;
                       
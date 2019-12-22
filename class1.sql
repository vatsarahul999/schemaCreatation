-- Databases -> Tables -> Columms and Rows
--                          |           |
--                         \ /         \ /
--                         data-type   data

-- Create database

create database ds_batch_9;

-- Create another database

create database ds_batch_9_d;

-- Delete Database

drop database ds_batch_9_d;

use ds_batch_9;

-- name(firstname, lastname), roll_num, address, location,age

-- create table

create table student(
roll_num int,
name varchar(50),
address varchar(255),
age int(3)
);

--  drop table
drop table student;

create table student(
roll_num int ,
name varchar(50),
address varchar(255),
age int(3)
);

-- alter table

alter table student
drop hometown ;

-- not null

drop table student;

create table student(
roll_num int ,
name varchar(50) not null,
address varchar(255),
age int(3)
);

describe student; 

drop table student;

create table student(
roll_num int primary key,
name varchar(50) not null,
address varchar(255),
age int(3)
);
describe student; 

drop table student;

create table address(
address_id int primary key,
address_line1 varchar(255),
city varchar(255),
PIN int(5)
);

create table student(
roll_num int primary key,
name varchar(50) not null,
age int(3),
constraint
check(age <18) 
);

create table student_address_mapping(
id int primary key ,
student_id int,
address_id int,
constraint
foreign key(student_id) references   student(roll_num),
constraint 
foreign key(address_id) references  address(address_id)
);

-- check example 
create table student(
roll_num int primary key,
name varchar(50) not null,
age int(3),
constraint
check(age <18) 
);



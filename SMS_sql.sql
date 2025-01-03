-- create database named School Management System,
-- it has been abbreviated as SMS. 

CREATE DATABASE SMS;

-- CREATE table named Student's table
CREATE TABLE IF NOT EXISTS Student_Table
(
    Student_ID INT SERIAL DEFAULT VALUE,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name  VARCHAR(50) NOT NULL,
    Gender ENUM ('M', 'F') NOT NULL,
    Date_of_birth DATE NOT NULL,
    Date_of_entry DATE NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Phone_Number VARCHAR(50),
    PRIMARY KEY (Student_ID)
);

-- create Teacher's Table
CREATE TABLE Teacher_Table
(
Teacher_ID INT SERIAL DEFAULT VALUE,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
Phone_Number VARCHAR(50),
PRIMARY KEY ( Teacher_ID)
);

-- Create 

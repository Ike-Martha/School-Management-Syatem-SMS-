-- create database named School Management System,
-- it has been abbreviated as SMS. 

CREATE DATABASE SMS;

-- CREATE table named Student's table
CREATE TABLE IF NOT EXISTS Student
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
CREATE TABLE Teachers
(
Teacher_ID INT SERIAL DEFAULT VALUE,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
Phone_Number VARCHAR(50),
PRIMARY KEY ( Teacher_ID)
);

-- Create Courses table
CREATE TABLE Courses
(
Course_ID INT SERIAL DEFAULT VALUE,
Course_Name VARCHAR(20) NOT NULL,
Units INT  NOT NULL,
PRIMARY KEY (Course_ID)
);

-- Create the Teachers_Courses table (Junction Table)

CREATE TABLE TEACHERS_COURSES (
	TeacherID INT,
    CourseID INT,
    PRIMARY KEY (TeacherID, CourseID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(Teacher_ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(Course_ID)
    
);

-- You can choose any format to create this junction table
CREATE TABLE TEACHERS_COURSES (
	Teachers_Courses_ID INT serial default value NOT NULL,
	TeacherID INT,
    CourseID INT,
    PRIMARY KEY (Teachers_Courses_ID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(Teacher_ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(Course_ID)
    
);

-- Create Attendance Table
CREATE TABLE ATTENDANCE
( 
 ID INT PRIMARY KEY  SERIAL DEFAULT VALUE, 
 StudentID INT NOT NULL, 
 CourseID INT NOT NULL, 
 date DATE NOT NULL, 
 status VARCHAR(7) NOT NULL, 
 FOREIGN KEY (studentID) REFERENCES Student(Student_ID), 
 FOREIGN KEY (courseID) REFERENCES Courses(Course_ID) 
) ;

-- Creating Gradebook table 
CREATE TABLE GRADEBOOK( 
 ID INT PRIMARY KEY SERIAL DEFAULT VALUE, 
 StudentID INT NOT NULL, 
 CourseID INT NOT NULL, 
 MarksObtained INT, 
 TotalMarks INT DEFAULT 100, 
 date Date, 
 FOREIGN KEY (StudentID) REFERENCES Student(Student_ID), 
 FOREIGN KEY (CourseID) REFERENCES Courses(Course_ID) 
) ;

select * from teachers;
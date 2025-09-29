-- ====================================
-- Tiny College Database - Main Schema
-- ====================================

-- Drop old tables if they exist (for reset)
DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- ==============================
-- CREATE TABLES
-- ==============================

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Major VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(20),
    Grade CHAR(2),
    PRIMARY KEY (StudentID, CourseID, Semester),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- ==============================
-- INSERT SAMPLE DATA
-- ==============================

-- Departments
INSERT INTO Department VALUES (1, 'Computer Science', 'Building A');
INSERT INTO Department VALUES (2, 'Mathematics', 'Building B');

-- Students
INSERT INTO Student VALUES (101, 'Alice', 'Johnson', '2001-04-15', 'CS', 1);
INSERT INTO Student VALUES (102, 'Bob', 'Smith', '2000-08-21', 'Math', 2);

-- Instructors
INSERT INTO Instructor VALUES (201, 'Dr. John', 'Doe', 'Professor', 1);
INSERT INTO Instructor VALUES (202, 'Dr. Mary', 'Lee', 'Associate Prof', 2);

-- Courses
INSERT INTO Course VALUES (301, 'Database Systems', 3, 1);
INSERT INTO Course VALUES (302, 'Calculus I', 4, 2);

-- Enrollments
INSERT INTO Enrollment VALUES (101, 301, 'Fall 2025', 'A');
INSERT INTO Enrollment VALUES (102, 302, 'Fall 2025', 'B');

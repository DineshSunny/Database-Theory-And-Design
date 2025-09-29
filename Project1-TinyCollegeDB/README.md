# 🎓 Tiny College Database Project

This project is a relational database system designed for a fictional Tiny College.  
It demonstrates **ER modeling, normalization, SQL schema creation, data insertion, and query execution**.

---

## 📂 Files in this Repository

- **tiny_college.sql** → Database schema (DDL) + sample data (DML)  
- **queries.sql** → Sample SQL queries for testing  
- **ER_diagram.png** → ER Diagram of the database schema  
- **report.docx / report.pdf** → Final project report (optional for submission)  

---

## 🏗️ Database Schema

Entities:
- **Department(DeptID, DeptName, Location)**
- **Student(StudentID, FirstName, LastName, DOB, Major, DeptID)**
- **Instructor(InstructorID, FirstName, LastName, Title, DeptID)**
- **Course(CourseID, CourseName, Credits, DeptID)**
- **Enrollment(StudentID, CourseID, Semester, Grade)**

Relationships:
- Students enroll in Courses via Enrollment  
- Instructors teach Courses  
- Departments offer Courses  
- Departments oversee Students and Instructors  

---

## 🚀 How to Run

1. Open a SQL environment (MySQL Workbench / SQLite Online).  
2. Run the schema & data setup:  
   ```sql
   SOURCE tiny_college.sql;

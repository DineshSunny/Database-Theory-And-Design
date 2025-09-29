-- ====================================
-- Tiny College Database - Sample Queries
-- ====================================

-- 1. List all students and their majors
SELECT FirstName, LastName, Major FROM Student;

-- 2. Find all courses offered by Computer Science department
SELECT CourseName
FROM Course
WHERE DeptID = (SELECT DeptID FROM Department WHERE DeptName='Computer Science');

-- 3. Get all students enrolled in Database Systems
SELECT s.FirstName, s.LastName
FROM Student s
JOIN Enrollment e ON s.StudentID = e.StudentID
WHERE e.CourseID = 301;

-- 4. Show instructors teaching courses in Mathematics
SELECT i.FirstName, i.LastName, c.CourseName
FROM Instructor i
JOIN Course c ON i.DeptID = c.DeptID
WHERE c.DeptID = 2;

-- 5. Count students per department
SELECT d.DeptName, COUNT(s.StudentID) AS StudentCount
FROM Department d
LEFT JOIN Student s ON d.DeptID = s.DeptID
GROUP BY d.DeptName;

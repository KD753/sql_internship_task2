use universitydb;

INSERT INTO Departments (DeptName, Building) 
VALUES 
('Computer Science', 'Tech Building'),
('Mathematics', NULL),  
('Physics', 'Science building');

Select * FROM Departments;

INSERT INTO Students (FirstName, LastName, BirthDate, DeptID) 
VALUES 
('Anirudh', 'Panwar', '2003-10-30', 1),
('Bharat', 'Joshi', '2003-10-30', 2),  
('Kartik', 'Devrani', NULL, 3),
('Saumya', 'Bhandari', '2000-07-12', NULL);

SELECT * FROM Students;

INSERT INTO Courses (CourseName, Credits, DeptID) 
VALUES 
('Database Systems', 4, 1),
('Calculus I', 3, 2),
('Quantum Physics', 4, 3);


INSERT INTO Professors (FirstName, LastName, DeptID) 
VALUES 
('Prof. M.M.S', 'Rauthan', 1),  
('Prof. Devesh', 'Baukhandi', 2);

SELECT * FROM Professors;

INSERT INTO Enrollments (StudentID, CourseID, Grade)
SELECT StudentID, CourseID, NULL  
FROM Students, Courses 
WHERE FirstName = 'Anirudh' AND CourseName = 'Database Systems';

SELECT * FROM Enrollments;

UPDATE Students SET DeptID = 4 WHERE StudentID = 4;

SELECT * FROM Students;

SET SQL_SAFE_UPDATES = 0;
UPDATE Courses 
SET Credits = 5 
WHERE CourseName LIKE '%Physics%';
SET SQL_SAFE_UPDATES = 1; 

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Students 
WHERE FirstName = 'Anirudh' AND LastName = 'Panwar'; 
SET SQL_SAFE_UPDATES = 1;
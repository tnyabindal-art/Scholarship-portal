--Create table Student--
CREATE TABLE Student(
StudentID INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Email VARCHAR(50),
Phone VARCHAR(15),
Course VARCHAR(50),
Password VARCHAR(50),
);

--CREATION OF SCHOLARSHIP TABLE--
CREATE TABLE Scholarship(
ScholarshipID INT PRIMARY KEY IDENTITY(1,1),
ScholarshipName VARCHAR(100),
Amount INT,
LastDate DATE,
Eligibility VARCHAR(100)
);

--CREATION OF APPLICATION TABLE--
CREATE TABLE Application(
ApplicationID INT PRIMARY KEY IDENTITY(1,1),
StudentEmail VARCHAR(100),
ScholarshipName VARCHAR(100),
Course VARCHAR(100),
ApplicationDate Date,
Status VARCHAR(50)
);

--CREATION OF ADMIN TABLE--

CREATE TABLE Admin(
AdminID INT PRIMARY KEY IDENTITY(1,1),
Username VARCHAR(50),
Password VARCHAR(50)
);

--ADMIN LOGIN DATA INSERT--
INSERT INTO Admin(Username,Password)
VALUES ('admin','123')
SELECT*FROM Admin;
SELECT*FROM Student
INSERT INTO Scholarship VALUES
('Merit Scholarship',50000,'2026-06-30','Above 80%'),
('SC/ST Scholarship',40000,'2026-05-20','SC/ST Students'),
('Minority Scholarship',30000,'2026-07-10','Minority Students')

SELECT*FROM Scholarship;
SELECT*FROM Application;
SELECT TOP 1 * FROM Application
Use ScholarshipDB
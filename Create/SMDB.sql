CREATE DATABASE SMDB;
USE SMDB;

-- CREATE TABLES
CREATE TABLE Subject (
    SubjectID VARCHAR(10) PRIMARY KEY,
    SubjectName VARCHAR(50),
    Units INT
);

CREATE TABLE Class (
    ClassID VARCHAR(10) PRIMARY KEY,
    ClassName VARCHAR(50),
    ClassYear VARCHAR(9)
);

CREATE TABLE Student (
    StudentID VARCHAR(10) PRIMARY KEY,
    StudentName VARCHAR(50),
    StudentAddress VARCHAR(100),
    ClassID VARCHAR(10),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE StudentGrades (
    StudentID VARCHAR(10),
    SubjectID VARCHAR(10),
    Grades FLOAT,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);

-- INSERT DATA
INSERT INTO Subject VALUES 
('S01', 'Mathematics', 3),
('S02', 'C++ Programming', 4),
('S03', 'Computer Networks', 3),
('S04', 'Databases', 3),
('S05', 'Software Engineering', 4);

INSERT INTO Class VALUES 
('C01', 'Computer Science', '2020-2024'),
('C02', 'Information Technology', '2021-2025'),
('C03', 'Cyber Security', '2022-2026');

INSERT INTO Student VALUES 
('T01', 'John Doe', 'New York', 'C01'),
('T02', 'Jane Smith', 'Los Angeles', 'C02'),
('T03', 'Alice Brown', 'Chicago', 'C03'),
('T04', 'Charlie Johnson', 'Miami', 'C01'),
('T05', 'David White', 'Boston', 'C02');

INSERT INTO StudentGrades VALUES
('T01', 'S01', 8.5),
('T01', 'S02', 7.0),
('T02', 'S02', 5.0),
('T02', 'S03', 6.0),
('T03', 'S04', 9.0),
('T03', 'S05', 8.0),
('T04', 'S01', 7.5),
('T04', 'S03', 6.5),
('T05', 'S02', 7.8),
('T05', 'S05', 8.2);
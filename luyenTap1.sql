CREATE DATABASE `QUANLYSINHVIEN1`;
Use QuanLySinhVien1;

CREATE TABLE Subjects (
SubjectID int Primary key,
SubjectName varchar(50)
);

CREATE TABLE Student (
StudentID int primary key,
StudentName varchar(50),
Age int,
Email varchar(100)
);

CREATE TABLE Classes (
ClassID int primary key,
ClassName varchar(50)
);

CREATE TABLE Marks (
Mark int, 
SubjectID int ,
StudentID int,
foreign key (SubjectID) references Subjects (subjectId),
foreign key (StudentID) references Student (studentId)
);

CREATE TABLE CLassStudent (
StudentID int,
ClassId int,
foreign key (StudentID) references student (StudentId),
foreign key (ClassId) references Classes (ClassId)
);

INSERT INTO Student Values 
(1, 'Nguyen Quang An', 18, 'an@yahoo.com'),
(2, 'Nguyen Cong Vinh', 20, 'vinh@gmail.com'),
(3, 'Nguyen Van Quyen', 19, 'quyen'),
(4, 'Pham Thanh Vinh', 25, 'binh@com'),
(5, 'Nguyen Van Tai Em', 30, 'taiem@sport.vn');

INSERT INTO Classes Values
(1, 'C0706L'),
(2, 'C0708G');

INSERT INTO ClassStudent values
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 2);

truncate ClassStudent

INSERT INTO Subjects values
(1, 'SQL'),
(2, 'Java'),subjects
(3, 'C'),
(4, 'Visual Basic');

INSERT INTO Marks values
(8, 1, 1),
(4, 2, 1),
(9, 1, 1), 
(7, 1, 3),
(3, 1, 4),
(5, 2, 5),
(8, 3, 3),
(1, 3, 5),
(3, 2, 4);

SELECT student.*, classes.ClassName
from student join classes
on Student.studentID = Classes.ClassId;


SELECT * from subjects;

SELECT AVG(Mark) as "Diem trung binh"
from Marks;

select  subjects.subjectid, subjects.Name, Marks.mark
From mark join subjects on Marks.subjectid = Subjects.subjectid
 where marks = (select max(mark) from marks);


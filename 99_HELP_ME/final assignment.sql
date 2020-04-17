CREATE DATABASE School300;
USE School300
CREATE TABLE Classes (
 Class_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Class_Name varChar(255),

);

SELECT * FROM Classes;



	

/*
ALTER TABLE Classes 
ADD Instructor_ID Int;

ALTER TABLE Classes 
ADD Student_ID Int;

ALTER TABLE Classes
ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);

ALTER TABLE Classes
ADD FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID);

INSERT INTO Classes (Class_Name)
VALUEs 
('Software Developer Boot Camp'),
('C# Boot Camp')
;
*/


CREATE TABLE Students (
 Student_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Student_Name varchar(255),
	 
);

SELECT * FROM Students;

	UPDATE Students SET Class_ID = 'Software Developer Boot Camp' WHERE Student_ID = 1;
	UPDATE Students = 'Software Developer Boot Camp', Student_ID = 2;
	UPDATE Students = 'Software Developer Boot Camp', Student_ID = 3;
	UPDATE Students = 'C# Boot Camp', Student_ID = 4;
	UPDATE Students = 'C# Boot Camp', Student_ID = 5;
	UPDATE Students = 'C# Boot Camp', Student_ID = 6; 
	
/*
ALTER TABLE Students 
ADD Class_ID Int;

ALTER TABLE Students 
ADD Instructor_ID Int;

ALTER TABLE Students
ADD FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID);

ALTER TABLE Students
ADD FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID);

INSERT INTO Students (Student_Name)
VALUEs 
('Pumpkin'),
('Taco'),
('Cheese'),
('Fries'),
('Bun'),
('Colesaw')
;

*/
CREATE TABLE Instructors (
 Instructor_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Instructor_Name varChar(255),

 ); 

 SELECT * FROM Instructors;
/*
 ALTER TABLE Instructors 
ADD Student_ID Int;

ALTER TABLE Instructors 
ADD Class_ID Int;

ALTER TABLE Instructors
ADD FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID);

ALTER TABLE Instructors
ADD FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID);

 INSERT INTO Instructors (Instructor_Name)
VALUEs 
('Knife'),
('Forks')
;

*/
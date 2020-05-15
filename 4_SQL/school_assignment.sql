CREATE DATABASE School300;
USE School300
 

	ALTER TABLE Classes
    NOCHECK CONSTRAINT Class_ID;

SELECT * FROM Classes;

ALTER TABLE Classes NOCHECK CONSTRAINT ALL;

	UPDATE Classes Set Instructor_ID = 1 Where Class_Name = 'Software Developer Boot Camp';
	UPDATE Classes Set Instructor_ID = 2 Where Class_Name = 'C# Boot Camp';

ALTER TABLE Classes WITH CHECK CHECK CONSTRAINT ALL;


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
('C# Boot Camp');	

;
*/


CREATE TABLE Students (
 Student_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Student_Name varchar(255),
	 
);

SELECT * FROM Students;

ALTER TABLE Students NOCHECK CONSTRAINT ALL;

	UPDATE Students Set Instructor_ID = 1 Where Student_Name = 'Fries';
	UPDATE Students Set Instructor_ID = 1 Where Student_Name = 'Bun';
	UPDATE Students Set Instructor_ID = 1 Where Student_Name = 'Colesaw';

	UPDATE Students Set Instructor_ID = 2 Where Student_Name = 'Pumpkin';
	UPDATE Students Set Instructor_ID = 2 Where Student_Name = 'Taco';
	UPDATE Students Set Instructor_ID = 2 Where Student_Name = 'Cheese';
	

ALTER TABLE Students WITH CHECK CHECK CONSTRAINT ALL;


ALTER TABLE MyTable NOCHECK CONSTRAINT ALL

	UPDATE Students Set Class_ID = 1 Where Student_Name = 'Pumpkin';
	UPDATE Students Set Class_ID = 1 Where Student_Name = 'Taco';
	UPDATE Students Set Class_ID = 1 Where Student_Name = 'Cheese';

	UPDATE Students Set Class_ID = 2 Where Student_Name = 'Fries';
	UPDATE Students Set Class_ID = 2 Where Student_Name = 'Bun';
	UPDATE Students Set Class_ID = 2 Where Student_Name = 'Colesaw';

ALTER TABLE Students WITH CHECK CHECK CONSTRAINT ALL;


	ALTER TABLE Students
    NOCHECK CONSTRAINT Class_ID;
	
	ALTER TABLE Students NOCHECK CONSTRAINT ALL;

	
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
CREATE DATABASE Library_System2;

USE Library_System2
CREATE TABLE Library_Branch (
 BranchID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Branch_Name varChar(255),

 Address_Name varChar(255),

);

USE Library_System1
CREATE TABLE Book_Copies (
 



 Number_Of_Copies INT NOT NULL,

);

USE Library_System1
SELECT * FROM Book_Copies;

ALTER TABLE Book_Copies 
ADD Branch_ID Int;

ALTER TABLE Book_Copies 
ADD Book_ID Int;


ALTER TABLE Book_Copies
ADD FOREIGN KEY (Branch_ID) REFERENCES Library_Branch(BranchID);

ALTER TABLE Book_Copies
ADD FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID);

/* STAGING
 Branch_ID varChar(255), /* <--Foreign Key */



 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), /* <--Foreign Key */

*/








USE Library_System1
CREATE TABLE Books (
 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), 

 Title varChar(255),



);

ALTER TABLE Books 
ADD Publisher_Name Int;

 

ALTER TABLE Books
ADD FOREIGN KEY (PublisherName) REFERENCES Publisherr(PublisherName);

USE Library_System1
SELECT * FROM Books;
/*STAGING




ALTER TABLE Book_Copies 
 Publisher_Name varChar(255),  /* <--Foreign Key */

*/
USE Library_System1
CREATE TABLE Book_Authors (


 Author_Name varChar(255),

);
USE Library_System1
ALTER TABLE Book_Authors 
ADD Book_ID Int;

USE Library_System1
SELECT * FROM Book_Authors;
/* STAGING
 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), /* <--Foreign Key */
*/

USE Library_System1
CREATE TABLE Borrower (
 CardNo INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

  B_Name varChar(255),

  B_Address varChar(255),

  B_Phone varChar(255),

);
USE Library_System1
SELECT * FROM Book_Copies;


USE Library_System1
CREATE TABLE Book_Loans (

 DateOut varChar(255),

 DateDue varChar(255),

);
USE Library_System1
SELECT * FROM Book_Loans;

USE Library_System1
ALTER TABLE Book_Loans
ADD Book_ID Int;

USE Library_System1
ALTER TABLE Book_Loans
ADD BranchID Int;

USE Library_System1
ALTER TABLE Book_Loans
ADD CardNo Int;


/* STAGING

 Book_ID INT PRIMARY KEY  /* <--Foreign Key */

 Branch_ID varChar(255), /* <--Foreign Key */

 CardNo varChar(255),  /* <--Foreign Key */


*/

ALTER TABLE Classes 
ADD Instructor_ID Int;

ALTER TABLE Classes 
ADD Instructor_ID Int;

USE Library_System1
CREATE TABLE Publisher (
 PublisherName varChar(255) PRIMARY KEY  NOT NULL,

 P_Address varChar(255),

 P_Phone  varChar(255),

);
USE Library_System1
SELECT * FROM Publisher;

/*STAGING



*/
CREATE DATABASE Library_System;


CREATE TABLE Library_Branch (
 BranchID INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

 Branch_Name varChar(255),

 Address_Name varChar(255),

);

CREATE TABLE Book_Copies (
 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), /* <--Foreign Key */



 Number_Of_Copies INT NOT NULL,

);

ALTER TABLE Book_Copies
DROP COLUMN Book_ID;

SELECT * FROM Book_Copies;

/* STAGING
 Branch_ID varChar(255), /* <--Foreign Key */

*/



ALTER TABLE Classes 
ADD Instructor_ID Int;

ALTER TABLE Classes 
ADD Instructor_ID Int;

ALTER TABLE Book_Copies 
ADD Instructor_ID Int;


CREATE TABLE Books (
 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), 

 Title varChar(255),



);

/*STAGING

 Publisher_Name varChar(255),  /* <--Foreign Key */

*/

CREATE TABLE Book_Authors (


 Author_Name varChar(255),

);

/* STAGING
 Book_ID INT PRIMARY KEY  NOT NULL IDENTITY (1,1), /* <--Foreign Key */
*/

CREATE TABLE Borrower (
 CardNo INT PRIMARY KEY  NOT NULL IDENTITY (1,1),

  B_Name varChar(255),

  B_Address varChar(255),

  B_Phone varChar(255),

);

CREATE TABLE Book_Loans (

 DateOut varChar(255),

 DateDue varChar(255),

);

/* STAGING

 Book_ID INT PRIMARY KEY  /* <--Foreign Key */

 Branch_ID varChar(255), /* <--Foreign Key */

 CardNo varChar(255),  /* <--Foreign Key */


*/

ALTER TABLE Classes 
ADD Instructor_ID Int;

ALTER TABLE Classes 
ADD Instructor_ID Int;

CREATE TABLE Publisherr (
 PublisherName varChar(255) PRIMARY KEY  NOT NULL,

 P_Address varChar(255),

 P_Phone  varChar(255),

);

/*STAGING



*/
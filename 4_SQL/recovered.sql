/*Assignment 1*/

Returns all data in the habitat table.

SELECT * FROM tb1_habitat

/*Assignment 2*/
Retrieve all names from the species_name column that have a species_order value of 3.

TABEL 1b1_species


SELECT names
FROM tb1_species
WHERE species_order = 3;

/* Assignment 3 
Compose a SELECT statement that accomplishes the following:
Retrieve only the nutrition_types from the nutrition table 
that have a nutrition_cost of 600.00 or less.
Step 250
*/


SELECT nutrition
FROM nutrition_types
WHERE tb1_cost <= 600;

--Or

SELECT *
FROM nutrition_types
WHERE tb1_cost <= 600;

/* Assignment 4 
Retrieve all species_names with the nutrition_id 
between 2202 and 2206 from the nutrition table.
Step 251
*/

SELECT species_names
FROM tb1_nutrition
WHERE nutrition_id  BETWEEN 2202 AND 2206;

/* Assignment 5 
Compose a SELECT statement that accomplishes the following:

Retrieve all names within the species_name column using the alias "Species Name:" 
from the species table and their corresponding nutrition_type under the alias 
"Nutrition Type:" from the nutrition table. 
*/

SELECT species_name AS "Species Name:"
FROM tb1_species 

SELECT nutrition_type AS "Nutrition Type:"
FROM tb1_nutrition


/* Assignment 6 
ZOO DATABASE ASSIGNMENT 6
Compose a SELECT statement that 
accomplishes the following:

From the specialist table, 
retrieve the first name, 
last name and contact number for the people 
that provide care to penguins from the species table.
*/

		SELECT specialist_fname, specialist_lname, specialist_contact, species_name tbl_animalia;
		 FROM tb1_specialist
		 INNER JOIN tb1_specialist 
		 ON specialist_id =species_id
		 WHERE species_name = 'Penguin';


/* STEP 254 ASSIGNMENT*/

CREATE DATABASE Game_db

USE Game_db

CREATE TABLE Series (
	s_Key INT PRIMARY KEY  NOT NULL IDENTITY (1,1),
	s_Title VARCHAR(30) NOT NULL,
	s_Character VARCHAR(20) NOT NULL,
	s_First_Release VARCHAR(30) NOT NULL,
	c.Studio int FOREIGN KEY REFERENCES Creators(c.Studio),
);


CREATE TABLE Creators (
	c_Key INT PRIMARY KEY  NOT NULL IDENTITY (1,1).
	c.Studio VARCHAR(30)  NOT NULL,
	c.Best_Game VARCHAR(30) NOT NULL,
	c.Founded_Date VARCHAR(30) NOT NULL
);

INSERT INTO Series (s_Title, s_Title, s_First_Release, c.Studio)
VALUES 
	(Halo, John 117, November 15 2001, Bungie),
	(Deus Ex, Various, June 23 2000, Ion Storm),
	(Mass Effect, Commander Shepard, November 20 2007, BioWare Entertainment),
	(Titanfall, MacAllan, March 11 2014, Respawn Entertainment),
	(Midnight Club, You, October 26 2000, Rockstar Games)
	
	;


INSERT INTO Creators (c.Studio, c.Best_Game, c.Founded_Date)
VALUES 
	(Bungie, Halo 2, June 19,1991),
	(Ion Storm, Deus Ex Invisible War, November 15,1996),
	(BioWare Entertainment,  Mass Effect 2, February 1995),
	(Respawn Entertainment, Titanfall 2, April 12 2010),
	(Rockstar Games, Grand Theft 2,  December 1998)

	;


	SELECT Series.s_Title, Creators.c_Studio
	FROM Series
	INNER JOIN Creators
	ON Series.s_Key = Creators.c_Key;
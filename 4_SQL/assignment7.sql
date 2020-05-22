/* STEP 254 ASSIGNMENT

1. Open SQL Server Management Studio and then click new query or Ctrl+N to open up a blank query window.

2. Create a database of your own choosing that consists of two tables 
(such as a movies database, with an actors table and a directors table).

3. Assign primary keys to each table (note: the primary keys are to be different for each table).

4. Assign a foreign key to one table (i.e. the primary key from one table is the foreign key in the other).

5. Create at least two columns (in addition to the primary key and foreign key columns) in each table.

For example, if you had a movie database, the actors table could contain Actor_Name and Movie_Name columns;
while the directors table could contain Director_Name and Movie_Name columns.

6. Add values to your database (at least five rows per table). Ensure that at least one of these values match up between both databases.

For example, if you created a movies database, 
you could choose a movie that an actor from your actors table and a director from your directors table were both involved with. 
Like: the Movie_Name “Gone_with_the_Wind” in both tables, that has the Actor_Name in the actor table set to “Clark Gable” 
and the Director_Name in the directors table set to “Victor Fleming”.

7. Create a statement that queries data from both tables. 
Ensure this query includes two records (rows) that share an attribute 
(column) in common (such as the earlier-mentioned Clark Gable and 
Victor Fleming example – where both share the Movie_Name column).


*/

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

/*


*/
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
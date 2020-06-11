/*Assignment 1*/
/*
Returns all data in the habitat table.
*/
USE db_zoo
SELECT * FROM tbl_habitat

/*Assignment 
Retrieve all names from the species_name column that have a species_order value of 3.
2*/

USE db_zoo
SELECT species_name
FROM tbl_species
WHERE species_order = 3;

/* Assignment 3 
Compose a SELECT statement that accomplishes the following:
Retrieve only the nutrition_types from the nutrition table 
that have a nutrition_cost of 600.00 or less.
Step 250
*/

USE db_zoo
SELECT nutrition_type
FROM tbl_nutrition
WHERE nutrition_cost <= 600;


/* Assignment 4 
Retrieve all species_names with the nutrition_id 
between 2202 and 2206 from the nutrition table.
Step 251
*/
USE db_zoo
SELECT tbl_nutrition.nutrition_id, tbl_species.species_name 
FROM tbl_nutrition 
INNER JOIN tbl_species ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id
WHERE nutrition_id  BETWEEN 2202 AND 2206

/*
SELECT tb1_species.Species_ID, tb1_species.Species_name AS "Species Name:", nutrition_type AS "Nutrition Type:"
FROM tb1_species 
INNER JOIN tb1_nutrition ON tb1_species.Species_ID = tb1_species.Species_ID
*/


/* Assignment 5 
Compose a SELECT statement that accomplishes the following:

Retrieve all names within the species_name column using the alias "Species Name:" 
from the species table and their corresponding nutrition_type under the alias 
"Nutrition Type:" from the nutrition table. 
*/
USE db_zoo
SELECT  tbl_species.species_name AS "Species Name:", tbl_nutrition.nutrition_type AS "Nutrition Type:"
FROM tbl_species
INNER JOIN tbl_nutrition ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id


/* Assignment 6 
ZOO DATABASE ASSIGNMENT 6
Compose a SELECT statement that 
accomplishes the following:

From the specialist table, 
retrieve the 
first name, 
last name and 
contact number for the people 
that provide care to penguins from the species table.
*/
USE db_zoo
SELECT * FROM tbl_care

SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_specialist.specialist_contact, tbl_species.species_name
FROM tbl_specialist
INNER JOIN tbl_species ON tbl_species.species_nutrition = tbl_specialist.specialist_id


USE db_zoo
SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_specialist.specialist_contact, tbl_species.species_name
FROM ((tbl_specialist
INNER JOIN tbl_care ON tbl_specialist.specialist_id = tbl_care.care_specialist)
INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id  )
WHERE species_name = 'penguin';

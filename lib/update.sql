UPDATE characters SET species = "Martian" WHERE ID = (SELECT MAX(ID) FROM characters);
-- updates the species of the last character in the characters table to "Martian"
-- find species from character and set species to Martian where the id is ordered  
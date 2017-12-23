/*
	DayZ Mod 1.9 Updates
	
	RUN THIS FILE IF UPDATING AN EXISTING 1.8.9 DATABASE TO 1.9
*/


/* Update L85 and SVD classnames */
UPDATE Character_DATA SET Backpack = REPLACE(Backpack, '"L85_Holo_DZ"', '"L85A2_Holo_DZ"') WHERE INSTR(Backpack, '"L85_Holo_DZ"') > 0;
UPDATE Character_DATA SET Inventory = REPLACE(Inventory, '"L85_Holo_DZ"', '"L85A2_Holo_DZ"') WHERE INSTR(Inventory, '"L85_Holo_DZ"') > 0;
UPDATE Object_DATA SET Inventory = REPLACE(Inventory, '"L85_Holo_DZ"', '"L85A2_Holo_DZ"') WHERE INSTR(Inventory, '"L85_Holo_DZ"') > 0;

UPDATE Character_DATA SET Backpack = REPLACE(Backpack, '"SVD_DZ"', '"SVD_PSO1_DZ"') WHERE INSTR(Backpack, '"SVD_DZ"') > 0;
UPDATE Character_DATA SET Inventory = REPLACE(Inventory, '"SVD_DZ"', '"SVD_PSO1_DZ"') WHERE INSTR(Inventory, '"SVD_DZ"') > 0;
UPDATE Object_DATA SET Inventory = REPLACE(Inventory, '"SVD_DZ"', '"SVD_PSO1_DZ"') WHERE INSTR(Inventory, '"SVD_DZ"') > 0;

UPDATE Character_DATA SET Backpack = REPLACE(Backpack, '"SVD_Gh_DZ"', '"SVD_PSO1_Gh_DZ"') WHERE INSTR(Backpack, '"SVD_Gh_DZ"') > 0;
UPDATE Character_DATA SET Inventory = REPLACE(Inventory, '"SVD_Gh_DZ"', '"SVD_PSO1_Gh_DZ"') WHERE INSTR(Inventory, '"SVD_Gh_DZ"') > 0;
UPDATE Object_DATA SET Inventory = REPLACE(Inventory, '"SVD_Gh_DZ"', '"SVD_PSO1_Gh_DZ"') WHERE INSTR(Inventory, '"SVD_Gh_DZ"') > 0;


/* PoliceCar was removed from dayz_vehicles */
UPDATE `Object_DATA` SET `Classname` = 'car_sedan' WHERE `Classname` = 'policecar';
UPDATE `Object_SPAWNS` SET `Classname` = 'car_sedan' WHERE `Classname` = 'policecar';
UPDATE `Vehicle_SPAWNS` SET `Classname` = 'car_sedan' WHERE `Classname` = 'policecar';
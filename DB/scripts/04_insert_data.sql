-- Script 04_INSERT_DATA.SQL
-- Portable script for bulk data import using psql (\copy)

-- 1. Import Stadiums 
\copy "2026".stadiums(stadium_name, stadium_city, stadium_country, stadium_capacity) FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/stadiums.csv' DELIMITER ';' CSV HEADER ENCODING 'WIN1252';

-- 2. Import Teams 
\copy "2026".teams(country_name, group_letter, coach) FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/teams.csv' DELIMITER ';' CSV HEADER CSV HEADER ENCODING 'WIN1252';

-- 3. Import Referees 
\copy "2026".referees(referee_name, referee_country) FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/referees.csv' DELIMITER ';' CSV HEADER CSV HEADER ENCODING 'WIN1252';


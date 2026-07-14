-- Script 04: Data Insertion via CSV
-- Location: DB/scripts/04_insert_data.sql
-- Description: Imports Round of 16 data from local CSV files into the 2026 schema.

-- 1. Import Teams
-- CSV headers: country_name, group_letter, coach
COPY "2026".teams (country_name, group_letter, coach)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/teams.csv' 
DELIMITER ';' 
CSV HEADER;

-- 2. Import Stadiums
-- CSV headers: stadium_name, stadium_city, stadium_country, stadium_capacity
COPY "2026".stadiums (stadium_name, stadium_city, stadium_country, stadium_capacity)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/stadiums.csv' 
DELIMITER ';' 
CSV HEADER;

-- 3. Import Referees
-- CSV headers: referee_name, referee_country
COPY "2026".referees (referee_name, referee_country)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/referees.csv' 
DELIMITER ';' 
CSV HEADER;

-- 4. Import Players
-- CSV headers: player_name, jersey_number, player_status, player_position, team_id
COPY "2026".players (player_name, jersey_number, player_status, player_position, team_id)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/players.csv' 
DELIMITER ';' 
CSV HEADER;

-- 5. Import Matches
-- CSV headers: stage, match_date, stadium_id, referee_id, home_team_id, away_team_id, home_score, away_score
COPY "2026".matches (stage, match_date, stadium_id, referee_id, home_team_id, away_team_id, home_score, away_score)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/matches.csv' 
DELIMITER ';' 
CSV HEADER;

-- 6. Import Match Statistics
-- CSV headers: match_id, player_id, event_type, match_minute
COPY "2026".match_statistics (match_id, player_id, event_type, match_minute)
FROM 'C:/Backup_compu/Data analyst/BBDD/WorldCup_2026_DataProject/DB/data/match_statistics.csv' 
DELIMITER ';' 
CSV HEADER;
-- Script 01: Database Creation
-- Location: DB/scripts/01_create_db.sql
-- Description: Creates the global container database for all World Cup editions.

CREATE DATABASE "WorldCup"
WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE "WorldCup" IS 'Global database containing multi-year World Cup analytics schemas.';
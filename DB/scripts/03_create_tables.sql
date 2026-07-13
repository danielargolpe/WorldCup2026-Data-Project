-- Script 03: Tables creation
-- Location: DB/scripts/03_create_tables.sql
-- Description: Core relational tables architecture for the 2026 schema.

-- 1. Table: Teams
CREATE TABLE IF NOT EXISTS "2026".teams (
    team_id          INTEGER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country_name     VARCHAR(30)      NOT NULL,
    group_letter     CHAR             NOT NULL,
    coach            TEXT             NOT NULL
);

-- 2. Table: Players
CREATE TABLE IF NOT EXISTS "2026".players (
    player_id        INTEGER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    player_name      TEXT             NOT NULL,
    jersey_number    INTEGER          NOT NULL,
    player_status    VARCHAR(10)      NOT NULL,
    player_position  VARCHAR(12)      NOT NULL,
    team_id          INTEGER          NOT NULL REFERENCES "2026".teams(team_id)
);

-- 3. Table: Matches
CREATE TABLE IF NOT EXISTS "2026".matches (
    match_id         INTEGER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    stage            VARCHAR(20)      NOT NULL,
    match_date       DATE             NOT NULL,
    stadium_name     TEXT             NOT NULL,
    home_team_id     INTEGER          NOT NULL REFERENCES "2026".teams(team_id),
    away_team_id     INTEGER          NOT NULL REFERENCES "2026".teams(team_id),
    home_score       INTEGER          NOT NULL,
    away_score       INTEGER          NOT NULL
);

-- 4. Table: Match statistics
CREATE TABLE IF NOT EXISTS "2026".match_statistics (
    stat_id          INTEGER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    match_id         INTEGER          NOT NULL REFERENCES "2026".matches(match_id),
    player_id        INTEGER          NOT NULL REFERENCES "2026".players(player_id),
    event_type       VARCHAR(30)      NOT NULL,
    match_minute     INTEGER          NOT NULL
);
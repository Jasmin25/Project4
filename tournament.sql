-- Table definitions for the tournament project.

-- If the tournament db already exists, drop it.
DROP DATABASE IF EXISTS tournament;

-- Creating db tournament.
CREATE DATABASE tournament;

-- Connecting to the tournament db
\connect tournament

-- Drop existing tables and views, if any.
DROP TABLE IF EXISTS players CASCADE;
DROP tABLE IF EXISTS matches CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- Creating players table
CREATE TABLE players (
  pid SERIAL PRIMARY KEY,
  name TEXT
);

-- Creating matches table
CREATE TABLE matches (
  mid SERIAL PRIMARY KEY,
  winner INT REFERENCES players(pid),
  loser INT REFERENCES players(pid)
);

-- Creating a scoreboard which sorts players by their wins
CREATE VIEW scoreboard AS
SELECT players.pid as id, players.name as name,
(SELECT count(*) FROM matches WHERE matches.winner = players.pid) as won,
(SELECT count(*) FROM matches WHERE players.pid in (winner, loser)) as played
FROM players
GROUP BY id
ORDER BY won DESC;
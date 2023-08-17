-- from the terminal run:
-- psql < soccer_league.sql

DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE clubs (
    id SERIAL PRIMARY KEY,
    club_names TEXT NOT NULL,
    cities TEXT NOT NULL,
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    player_names TEXT NOT NULL,
    teams_id INTEGER REFERENCES club_names (id)
);

CREATE TABLE goals_scored (
    id SERIAL PRIMARY KEY,
    goals TEXT NOT NULL,
    player_id INTEGER REFERENCES player_names (id)
);

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    ref_names TEXT NOT NULL
    ref_participated TEXT NOT NULL
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    matches_played TEXT NOT NULL
    teams_id INTEGER REFERENCES club_names (id)
);

CREATE TABLE season (
    id SERIAL PRIMARY KEY,
    start_date TEXT NOT NULL
    end_date TEXT NOT NULL
);

INSERT INTO clubs (club_names, city) VALUES
('Atlanta United', 'Atlanta'),
('Austin FC', 'Austin'),
('Charlotte FC', 'Charlotte'),
('Chicago Fire FC', 'Chicago');
('FC Cincinnati', 'Cincinnati');
('Colorado Rapids', 'Denver');
('Columbus Crew', 'Columbus');
('DC United', 'Washington');
('FC Dallas', 'Dallas');
('Houston Dynamo DC', 'Houston');
('Sporting Kansas City', 'Kansas City');
('Los Angeles Football', 'Los Angeles');
('Los Angeles Football', 'Los Angeles');
('Inter Miami CF', 'Miami');
('Minnesota United', 'Minneapolis');
('CF Montreal', 'Montreal');
('Nashville SC', 'Nashville');
('New England Revolution', 'Boston');
('New York Red Bulls', 'New York');
('New York City Football Club', 'New York');
('Orlando City', 'Orlando');
('Philadelphia Union', 'Philadelphia');
('Portland Timbers', 'Portland');
('Real Salt Lake', 'Salt Lake City');
('San Jose Earthquakes', 'San Jose');
('Seattle Sounders FC', 'Seattle');
('St Louis City SC', 'St Louis');
('Toronto FC', 'Toronto');
('Vancouver Whitecaps FC', 'Vancouver');

INSERT INTO rankings (standings) VALUES
('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30');
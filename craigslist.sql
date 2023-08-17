-- from the terminal run:
-- psql < craigslist.sql

DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    City TEXT NOT NULL,
    State TEXT NOT NULL,
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    users TEXT NOT NULL,
    preferred_region TEXT NOT NULL,
    region_id INTEGER REFERENCES region (id)
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    posted_by TEXT NOT NULL,
    posted_from TEXT NOT NULL,
    region_id INTEGER REFERENCES region (id)
);

CREATE TABLE topic (
    id SERIAL PRIMARY KEY,
    categories TEXT NOT NULL
);

INSERT INTO region (city, state) VALUES
('San Francisco', 'California'), 
('Atlanta', 'Georgia'),
('Seattle', 'Washington'),
('New York', 'New York'),
('Dallas', 'Texas');

INSERT INTO users (first_name, last_name, preferred_region, region_id) VALUES 
('Jane', 'Suter', 'Menlo Park', 1),
('Mark', 'Piazza', 'Brooklyn' 4), 
('Steve', 'Pastrana', 'Macon', 2), 
('Michael', 'Bigsby', 'Portland' 3);

INSERT INTO topic (categories) VALUES
  ('Dinnerware'),
  ('Gym Equipment')
  ('Apparel')
  ('All-Terrain Vehicles')
  ('Apartments')
  ('Miscellaneous')
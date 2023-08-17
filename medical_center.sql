-- from the terminal run:
-- psql < medical_center.sql

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE hospitals (
    id SERIAL PRIMARY KEY,
    hospital_name TEXT NOT NULL,
    founded TEXT NOT NULL,
);

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    doctor_name TEXT NOT NULL,
    speciality TEXT NOT NULL,
    hospital_id INTEGER REFERENCES hospitals (id)
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    patient_first_name TEXT NOT NULL,
    patient_last_name TEXT NOT NULL,
    visits TEXT NOT NULL,
    diagnosis TEXT NOT NULL,
    doctor_id INTEGER REFERENCES doctors (id)
);

CREATE TABLE diagnosis (
    id SERIAL PRIMARY KEY,
    diagnosis TEXT NOT NULL
);

INSERT INTO hospitals (hospital_name, founded) VALUES
('Sinai Hospital', '1880'), 
('New York Presbyterian', '1900'),
('Mary Hospital', '1907');

INSERT INTO doctors (doctor_name, speciality, hospital_id) VALUES 
('Dr. Jetta Washington', 'Family Medicine', 1),
('Dr. Mark York', 'General Surgeon', 1), 
('Dr. Steve Carrell', 'General Surgeon', 2), 
('Dr. Jordan Welsh', 'Wound Care Specialist', 3);

INSERT INTO patients (patient_first_name, patient_last_name, visits, diagnosis, doctor_id) VALUES
  ('Jennifer', 'Finch', '1', 'Flu', 1),
  ('Thadeus', 'Gathercoal', '3', 'Appendicitis', 2, 3, 4),
  ('Sonja', 'Pauley', '10', 'Wound Care', 4),
  ('Zoe', 'Stewart', '20', 'Wound Care', 3),
  ('Brad', 'Pitt', '3', 'Polys', 1),
  ('Angelina', 'Jolie', '3', 'Anemia', 1);

INSERT INTO diagnosis (diagnosis) VALUES
('Flu', 'Appendicitis', 'Wound Care', 'Polyps', 'Anemia');
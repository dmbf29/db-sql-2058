-- SQL - Structure Query Language
-- table_name -> always plural


-- Read all rows
-- SELECT what_we_want_back FROM table_name;
-- * -> everything in that record
-- SELECT * FROM doctors;

-- SELECT column_name, column_name FROM table_name;
-- SELECT first_name, last_name FROM doctors;

-- filtering
-- SELECT what_we_want_back FROM table_name
-- WHERE column_name = value;
-- SELECT * FROM doctors
-- WHERE id = 2;

-- SELECT * FROM doctors
-- WHERE specialty = "Cardiac Surgery";

-- SQLite -> LIKE is case insensitive
-- LIKE -> %


-- ORDER BY column_name ASC/DESC
-- SELECT * FROM doctors
-- WHERE specialty LIKE "%Surgery%"
-- ORDER BY last_name ASC;


-- Count all the doctors
-- Aggregate functions
-- COUNT(*)
-- AVG()
-- SUM()
-- MIN()
-- MAX()
-- ROUND(number, digits)
-- SELECT MAX(age) FROM doctors;


-- SELECT COUNT(*), specialty FROM doctors
-- GROUP BY specialty;

-- SELECT age, COUNT(*) FROM doctors
-- GROUP BY age;

-- SELECT COUNT(*) count, specialty s FROM doctors d
-- GROUP BY s
-- ORDER BY count DESC;


-- JOIN table_name ON table.primary_key = other_table.foreign_key

-- Read all the appointments with doctors infos
-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id;
-- JOIN doctors ON appointments.doctor_id = doctors.id;


-- Read all patients first & last names along with their appointment dates
-- SELECT first_name, last_name, occurs_on
-- FROM patients
-- JOIN appointments
-- ON appointments.patient_id = patients.id
-- ORDER BY first_name ASC;

-- Read Andrew's appointments dates along with his patients first name & last name

-- select what you want first
-- what tables you need
-- any filtering
-- any ordering or limiting last

-- SELECT occurs_on, patients.first_name, patients.last_name
-- FROM appointments
-- JOIN doctors ON appointments.doctor_id = doctors.id
-- JOIN patients ON appointments.patient_id = patients.id
-- WHERE doctors.first_name = "Andrew"
-- AND doctors.last_name = "Leemhuis";


-- LIMIT 2;

-- Create

INSERT INTO doctors (first_name, last_name, age, specialty)
VALUES ('Scooter', 'Suzuki', 49, 'Generalist');

-- Update
-- UPDATE doctors SET age = 40, first_name = 'John', last_name = 'Smith' WHERE id = 3;

-- UPDATE doctors SET age = 26, first_name = 'Ryuichiro'
-- WHERE id = 14;

-- Delete
-- DELETE FROM doctors
-- WHERE id = 14;



SELECT * FROM doctors;

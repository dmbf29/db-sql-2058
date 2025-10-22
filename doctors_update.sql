DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;
CREATE TABLE doctors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  age INTEGER,
  specialty TEXT
);

CREATE TABLE patients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

CREATE TABLE appointments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  occurs_on DATE,
  patient_id INTEGER,
  doctor_id INTEGER,
  FOREIGN KEY(patient_id) REFERENCES patients(id),
  FOREIGN KEY(doctor_id) REFERENCES doctors(id)
);


INSERT INTO patients (first_name, last_name, age, id) VALUES ('Alonzo', 'Anderson', 45, 1);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Brady', 'Moore', 31, 2);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Douglas', 'Rocha', 56, 3);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Harry', 'Salacuri', 29, 4);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Hyelim', 'Kim', 38, 5);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Joel', 'Noejd', 27, 6);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Kaleb', 'Fukuda', 54, 7);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Louis', 'Bourne', 22, 8);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Michael', 'Henderson', 63, 9);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Naing Oo', 'Lwin', 34, 10);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Pedro', 'Sassaki', 46, 11);
INSERT INTO patients (first_name, last_name, age, id) VALUES ('Richard', 'Williams', 25, 12);


INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Andrew', 'Leemhuis', 50, 'Surgery Manager', 1);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Gaëtan', 'Duquesnoy', 48, 'Cardiac Surgery', 2);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Yuichi', 'Komai', 39, 'Cardiac Surgery', 3);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Kenji', 'Eto', 43, 'Neurosurgery', 4);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Mandil', 'Khadka', 36, 'Pediatrics', 5);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Monika', 'Chrzan', 52, 'Dermatology', 6);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Paul', 'Miyamoto', 46, 'Orthopedics', 7);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Rafael', 'Lopez-Ortum', 41, 'Internal Medicine', 8);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Séamus', 'O''Connor', 60, 'Radiology', 9);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Stefan', 'Muhsin', 44, 'Urology', 10);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Vince', 'Jiang', 37, 'Gastroenterology', 11);
INSERT INTO doctors (first_name, last_name, age, specialty, id) VALUES ('Youssef', 'Sarraj', 49, 'Endocrinology', 12);


INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-07-23', 1, 5);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-07-25', 3, 2);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-07-26', 4, 8);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-07-28', 6, 1);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-07-29', 2, 9);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-01', 8, 3);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-02', 5, 6);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-03', 11, 4);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-05', 10, 7);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-06', 7, 10);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-08', 7, 11);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-10', 9, 12);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-11', 12, 2);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-13', 1, 8);
INSERT INTO appointments (occurs_on, patient_id, doctor_id) VALUES ('2025-08-14', 3, 1);

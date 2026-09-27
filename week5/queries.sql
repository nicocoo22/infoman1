USE infoman1_vetclinic;



INSERT INTO owners (first_name, last_name, phone_number) VALUES
('Juan', 'Dela Cruz', '09171234567'),
('Maria', 'Santos', '09189876543'),
('Carlos', 'Reyes', '09195551234');

INSERT INTO veterinarians (first_name, last_name, specialization) VALUES
('Ana', 'Lim', 'General Practice'),
('Ramon', 'Garcia', 'Surgery');

INSERT INTO pets (name, species, age, owner_id) VALUES
('Buddy', 'Dog', 5, 1),
('Luna', 'Cat', 2, 1),
('Max', 'Dog', 1, 2),
('Bella', 'Cat', 4, 3);

INSERT INTO appointments (appointment_date, reason_for_visit, pet_id, vet_id) VALUES
('2026-04-10 09:00:00', 'Annual Vaccination', 1, 1),
('2026-04-12 14:30:00', 'Routine Checkup', 2, 2),
('2026-04-15 11:00:00', 'Dental Cleaning', 3, 1);

-- Task 1: Basic SELECT Statements

-- Query 1A: Return all columns and rows from pets
SELECT * FROM pets;

-- Query 1B: Return only name and species columns
SELECT name, species FROM pets;

-- Task 2: Filtering with Equality

-- Query 2: Return name and species of pets where species is 'Dog'
SELECT name, species
FROM pets
WHERE species = 'Dog';

-- Task 3: Filtering with Relational Operators

-- Query 3A: Filter pets older than 2 years
SELECT name, species, age
FROM pets
WHERE age > 2;

-- Query 3B: Filter appointments on or after April 12, 2026
SELECT appointment_id, appointment_date, reason_for_visit
FROM appointments
WHERE appointment_date >= '2026-04-12 00:00:00';

-- Task 4: Combine and Debug

-- Query 4A (Working Query): Uses single quotes around string literal 'Dog'
SELECT name, species, age
FROM pets
WHERE species = 'Dog';

-- Query 4B (Deliberately Broken): Omits single quotes around Dog.
-- Execution Behavior / Diagnosis:
-- Running this causes MySQL to treat Dog as an unquoted column identifier
-- rather than a string literal. It returns Error 1054 (42S22): "Unknown column 'Dog' in 'where clause'".
SELECT name, species, age
FROM pets
WHERE species = Dog;
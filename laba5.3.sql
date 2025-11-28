CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    chief VARCHAR(255) NOT NULL
);

ALTER TABLE groups 
ADD COLUMN cathedral_id INTEGER REFERENCES cathedrals(id);

INSERT INTO cathedrals (name, chief) VALUES
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна')
RETURNING id;

SELECT * FROM cathedrals;

UPDATE groups 
SET cathedral_id = 1 
WHERE code IN ('Б-ИВТ-25-1', 'Б-ИВТ-25-2', 'Б-ФИИТ-25');

UPDATE groups 
SET cathedral_id = 2 
WHERE code = 'Б-ПИ-25-1';

SELECT g.*, c.name as cathedral_name, c.chief as cathedral_chief
FROM groups g
JOIN cathedrals c ON g.cathedral_id = c.id
WHERE g.cathedral_id = 1;
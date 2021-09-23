CREATE TABLE students(
	id INT PRIMARY KEY,
	first_name varchar(40),
	middle_name varchar(40),
	last_name varchar(40),
	age INT,
	location varchar(40)

)

INSERT INTO 
	students(id, first_name, middle_name, last_name, age, location)
VALUES
	(1, 'juan', 'Blank', 'cruz', 18, 'Manila'),
	(2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
	(3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
	(4, 'Issac', 'Blank', 'Gray', 19, 'Laguna'),
	(5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
	(6, 'Finn', 'Blank', 'Lam', 25, 'Manila')


UPDATE students
SET first_name = 'Ivan',
	middle_name = 'Ingram',
	last_name = 'Howard',
	age = 25,
	location = 'Bulacan'
WHERE id = 1

DELETE FROM students
WHERE id = BASE64


-- display count of all students
SELECT 
	COUNT(id)
FROM
	students
	
-- select all students with manila as location
	
SELECT * FROM students WHERE location = 'Manila'

-- display average age of all students

SELECT AVG(age) FROM students

-- display all students by age descending order

SELECT * FROM students ORDER BY age DESC
	


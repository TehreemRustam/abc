CREATE DATABASE school;
USE school;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO students VALUES (1, 'Tehreem'), (2, 'Ayesha'), (3, 'Ania');

CREATE TABLE marks (
    id INT PRIMARY KEY,
    student_id INT,
    marks INT
);

INSERT INTO marks VALUES (1, 1, 90), (2, 2, 85), (3, 4, 70);

SELECT students.name, marks.marks
FROM students
JOIN marks ON students.id = marks.student_id;

SELECT students.name, marks.marks
FROM students
LEFT JOIN marks ON students.id = marks.student_id;

SELECT students.name, marks.marks
FROM students
RIGHT JOIN marks ON students.id = marks.student_id;
CREATE TABLE student(
    Student_Id INT,
    Name VARCHAR(10) NOT NULL,
    Major VARCHAR(3),
    GPA DECIMAL(3,2) DEFAULT 0.00,
    PRIMARY KEY(Student_Id)
);

SELECT * FROM student;

INSERT INTO student VALUES(1,'Jack','CSE',8.75);
INSERT INTO student VALUES(2,'Kate','EEE',9.00);
INSERT INTO student(Student_ID,Name,MAjor) VALUES(3,'Claire','MEC');
INSERT INTO student VALUES(4,'Mark','CE',8.75);

UPDATE student
SET Major='CEC'
WHERE Major='CE';

SELECT student.Name,student.Major-- better in case of complexity
FROM student 
ORDER BY GPA DESC;

DROP TABLE student;
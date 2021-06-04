1) SELECT name FROM students
2) Select * FROM students WHERE age > 30
3) SELECT name FROM students WHERE age = 30 AND Gender = "F" 
4) SELECT Points FROM students WHERE name ="Alex" 
5) INSERT INTO students(name,Age,Gender,Points)
VALUES ('Mohamad','27','M',500); 
6) UPDATE students SET Points= 530 WHERE name = "Basma"
7) UPDATE students SET Points= 190 WHERE name = "Alex"

#creating table 

1) INSERT INTO  graduates (Name,Age,Gender,Points)
SELECT Name,Age,Gender,Points FROM students
WHERE Name = "Layal";

2) UPDATE graduates SET Graduation = '08/09/2018' WHERE name = "Layal"

3) DELETE FROM students WHERE name = "Layal"

#join 
1) SELECT employees.name, employees.Company, companies.Date
FROM (employees
INNER JOIN companies ON employees.Company = companies.name);

2) SELECT employees.Name, employees.Company, companies.name, companies.date 
FROM (employees 
INNER JOIN companies ON employees.Company = companies.Name AND date <2000);

3) SELECT employees.name, companies.name,employees.Role
FROM (employees
INNER JOIN companies ON employees.Company = companies.name )
WHERE employees.Role='Graphic Designer';

#count and filter 
1) SELECT name, points
FROM students
GROUP by name
HAVING points = (select max(points) from students);

2) SELECT AVG(Points) FROM students;
3) SELECT count(*) FROM students WHERE Points=500;
4) SELECT name FROM students WHERE name like "%s%"
5) SELECT Name,Points FROM students ORDER BY points DESC;
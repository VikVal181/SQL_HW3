CREATE TABLE hw3.eemployees
(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
surname VARCHAR(20),
speciality VARCHAR(20),
seniority INTEGER,
salary INTEGER,
age INTEGER 
);

INSERT INTO hw3.eemployees (name, surname, speciality, seniority,salary, age)
VALUES
('Вася', 'Васькин','начальник',40, 100000, 60),
('Петя', 'Петькин','начальник',8, 70000, 30),
('Катя', 'Катькина','инженер',2, 70000, 25),
('Саша', 'Сашкин','инженер',12, 50000, 35),
('Иван', 'Иванов','рабочий',40, 30000, 659),
('Петя', 'Петров','рабочий',420, 25000, 40),
('Сидор', 'Сидоров','рабочий',10, 20000, 35),
('Антон', 'Антонов','рабочий',8, 19000, 28),
('Юра', 'Юркин','рабочий',5, 15000, 25),
('Максим', 'Воронин','рабочий',2, 11000, 22),
('Юра', 'Галкин','рабочий',3, 12000, 24),
('Люся', 'Люськина','уборщик',10, 10000, 49);

#Отсортируйте поле “зарплата” в порядке убывания и возрастания

SELECT * FROM hw3.eemployees ORDER BY salary DESC;
SELECT * FROM hw3.eemployees ORDER BY salary ASC;

#** Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк
# с наибольшей заработной платой (возможен подзапрос)

SELECT * FROM hw3.eemployees ORDER BY salary ASC LIMIT 5;

#Выполните группировку всех сотрудников по специальности , 
#суммарная зарплата которых превышает 100000

SELECT speciality, SUM(salary) AS sumsalary 
FROM hw3.eemployees
GROUP BY speciality
HAVING SUM(salary) > 100000 ;

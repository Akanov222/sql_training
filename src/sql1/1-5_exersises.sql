-- 1. Вывести всех сотрудников с зарплатой больше 50000

SELECT d.department_id AS id,
       d.department_name,
       e.first_name AS name, last_name,
       e.salary FROM employees AS e
JOIN departments AS d ON d.department_id = e.department_id
WHERE salary > 50000 ORDER BY salary ASC;

-- 2. Найти топ-5 самых высокооплачиваемых сотрудников
-- 3. Посчитать среднюю зарплату по отделам
-- 4. Найти сотрудников, чья фамилия начинается на 'Ив'
-- 5. Вывести сотрудников с датой приема на работу за последний год
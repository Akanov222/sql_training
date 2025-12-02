-- 1. Вывести всех сотрудников с зарплатой больше 60000
SELECT *
FROM employees
WHERE salary > 60000;

-- 2. Найти топ-5 самых высокооплачиваемых сотрудников
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 3. Посчитать среднюю зарплату по отделам
SELECT AVG(e.salary) AS average_hr_salary
FROM employees AS e
JOIN departments AS d ON d.department_id = e.department_id
WHERE d.department_name = 'HR';

SELECT d.department_name, d.department_id, ROUND(AVG(e.salary)) AS avarage_salary
FROM employees AS e
         JOIN departments AS d
              ON e.department_id = d.department_id
GROUP BY department_name, d.department_id
ORDER BY avarage_salary DESC;

-- 4. Найти сотрудников, чья фамилия начинается на 'Ив'
SELECT *
FROM employees
WHERE last_name LIKE 'Ив%';

-- 5. Вывести сотрудников с датой приема на работу за последние 3 года
SELECT *
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '3 year';


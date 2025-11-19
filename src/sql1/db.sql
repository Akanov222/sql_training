CREATE TABLE departments
(
    department_id   SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    budget          DECIMAL(10, 2),
    city            VARCHAR(50)
);

CREATE TABLE employees
(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INTEGER REFERENCES departments(department_id),
    manager_id INTEGER REFERENCES employees(employee_id),
    gender CHAR(1)
);

-- Наполняем данными
INSERT INTO departments (department_name,
                         budget, city) VALUES
    ('IT', 500000.00, 'Москва'),
    ('Finance', 300000.00, 'Москва'),
    ('HR', 150000.00, 'Санкт-Петербург'),
    ('Sales', 450000.00, 'Москва'),
    ('Marketing', 200000.00, 'Санкт-Петербург');

INSERT INTO employees (first_name, last_name,
                       email, salary, hire_date,
                       department_id, manager_id,
                       gender) VALUES
    ('Иван', 'Иванов', 'ivanov@company.com', 80000.00, '2020-01-15', 1, NULL, 'M'),
    ('Петр', 'Петров', 'petrov@company.com', 75000.00, '2019-03-20', 1, 1, 'M'),
    ('Мария', 'Сидорова', 'sidorova@company.com', 65000.00, '2021-06-10', 1, 1, 'F'),
    ('Анна', 'Кузнецова', 'kuznetsova@company.com', 90000.00, '2018-11-05', 2, NULL, 'F'),
    ('Сергей', 'Смирнов', 'smirnov@company.com', 55000.00, '2022-02-28', 2, 4, 'M'),
    ('Ольга', 'Попова', 'popova@company.com', 48000.00, '2023-01-10', 3, NULL, 'F'),
    ('Дмитрий', 'Васильев', 'vasilev@company.com', 52000.00, '2021-09-15', 3, 6, 'M'),
    ('Елена', 'Новикова', 'novikova@company.com', 72000.00, '2020-07-22', 4, NULL, 'F'),
    ('Алексей', 'Федоров', 'fedorov@company.com', 68000.00, '2022-03-14', 4, 8, 'M'),
    ('Наталья', 'Морозова', 'morozova@company.com', 45000.00, '2023-05-01', 5, NULL, 'F'),
    ('Игорь', 'Волков', 'volkov@company.com', 58000.00, '2021-12-10', 5, 10, 'M'),
    ('Татьяна', 'Алексеева', 'alekseeva@company.com', 62000.00, '2020-04-18', 1, 1, 'F'),
    ('Артем', 'Лебедев', 'lebedev@company.com', 53000.00, '2022-08-30', 2, 4, 'M'),
    ('Юлия', 'Семенова', 'semenova@company.com', 49000.00, '2023-02-14', 3, 6, 'F'),
    ('Виктор', 'Павлов', 'pavlov@company.com', 71000.00, '2019-10-25', 4, 8, 'M');


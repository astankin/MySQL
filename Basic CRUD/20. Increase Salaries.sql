USE soft_uni;

UPDATE employees
SET salary = salary * 1.12
WHERE department_id = 1 or department_id = 2 or department_id = 4 or department_id = 11;

SELECT salary
FROM employees;

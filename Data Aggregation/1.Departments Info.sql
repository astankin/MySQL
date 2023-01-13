USE soft_uni;

SELECT department_id, COUNT(employee_id) AS "Count"
FROM employees
GROUP BY department_id;



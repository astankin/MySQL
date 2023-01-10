USE geography;

SELECT *
FROM countries
WHERE country_name LIKE "%a%a%a%"
ORDER BY iso_code;

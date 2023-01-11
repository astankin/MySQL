USE diablo;

SELECT name, date_format(`start`, "%Y-%M-%D") AS `start`
FROM games
WHERE year(`start`) >= 2011 AND year(`start`) <= 2012
ORDER BY `start`, `name`
LIMIT 50;


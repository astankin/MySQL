USE diablo;

SELECT name as "game", 
CASE 
WHEN hour(start) < 12 THEN "Morning"
WHEN hour(start) < 18 THEN "Afternoon"
ELSE "Evening"
END 
AS 'Part of the Day',
CASE
WHEN duration <= 3 THEN "Extra Short"
WHEN duration BETWEEN 3 AND 6 THEN "Short"
WHEN duration BETWEEN 6 AND 10 THEN "Long"
ELSE "Extra Long"
END
AS "Duration" 
FROM games;



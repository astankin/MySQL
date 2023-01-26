USE camp;

SELECT driver_id, vehicle_type,
CONCAT (first_name, " ", last_name) AS "driver_name" 
FROM vehicles as v
JOIN campers as c
ON v.driver_id = c.id;




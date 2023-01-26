USE camp;

SELECT 
	r.starting_point AS "root_starting_point",
    r.end_point AS "route_ending_point",
    r.leader_id,
    CONCAT(c.first_name, " ", c.last_name) as "leader_name"
from routes AS r
join campers as c
on r.leader_id = c.id;




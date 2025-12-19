select o.animal_id, o.name
from animal_outs as o
left join animal_ins as i on i.animal_id = o.animal_id 
where i.animal_id is null
order by i.animal_id asc;
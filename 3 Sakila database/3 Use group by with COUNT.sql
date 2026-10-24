select *
from address
where address2 is null;

select district, count(*) as ct
from address
where address_id < 10
group by district
order by ct desc

